#!/bin/bash

SOURCE_HOST=$1
DESTINATION_HOST=$2
RELEASE_BRANCH=$3

if [ -z "${SOURCE_HOST}" ] || [ -z "${DESTINATION_HOST}" ] || [ -z "${RELEASE_BRANCH}" ] ; then
   printf "Usage: update_content   \n"
   exit 1
fi

python3 deploy_looker.py ${DESTINATION_HOST} ${RELEASE_BRANCH}

printf "Creating directory for current release ${RELEASE_BRANCH} \n\n" 

if [ -d "${RELEASE_BRANCH}" ] ; then 
    rm -rf ${RELEASE_BRANCH}
fi

mkdir ${RELEASE_BRANCH}

jq -c '.[]' folder_config.json | while read i; do
  folder_name=$( echo $i | jq '.name')
  source_folder_id=$( echo $i | jq --arg sh ${SOURCE_HOST} '.[$sh]')
  destination_folder_id=$( echo $i | jq --arg dh ${DESTINATION_HOST} '.[$dh]')

  # store updated content json from source in release branch directory
  printf "Exporting folder ID ${source_folder_id}: ${folder_name} from ${SOURCE_HOST} using gazer \n\n"
  gzr space export ${source_folder_id} --host ${SOURCE_HOST} --dir ${RELEASE_BRANCH} --port 443
  printf "Export of folder ${folder_name} successful \n\n"

  # copy objects to gcs for archival version control of content
 # eval cd "${RELEASE_BRANCH}"
  #timestamp= date +%Y%m%d_%H%M%S
  #gsutil cp * gs://looker-content-version-control/${timestamp}
  #cd ..

  # import all content to destination per folder
  printf "Importing folder ID ${destination_folder_id}: ${folder_name} to ${DESTINATION_HOST} using gazer \n\n"
  eval cd "${RELEASE_BRANCH}/${folder_name}"
  find . -maxdepth 1 -name "Look_*.json" -exec gzr look import {} ${destination_folder_id} --host ${DESTINATION_HOST} --force --port 443 \;
  #find . -maxdepth 1 -name "Plan_*.json" -exec gzr plan import {} ${LOOK_ID} --host ${DESTINATION_HOST} --force --port 443 \;
  find . -maxdepth 1 -name "Dashboard_*.json" -exec gzr dashboard import {} ${destination_folder_id} --host ${DESTINATION_HOST} --force --port 443 \;
  cd ../..
  printf "Import of folder ${folder_name} successful \n\n"
done

printf "Migration from ${SOURCE_HOST} to ${DESTINATION_HOST} complete \n\n"