def import_to_big_query(data, context, dataset='cdph_hai_combined', table='hai_master', verbose=True):
    def vprint(s):
        if verbose:
            print(s)

    vprint('Event ID: {}'.format(context.event_id))
    vprint('Event type: {}'.format(context.event_type))
    vprint('Importing required modules.')

    from google.cloud import bigquery

    vprint('This is the data: {}'.format(data))

    input_bucket_name = data['bucket']
    source_file = data['name']
    uri = 'gs://{}/{}'.format(input_bucket_name, source_file)

    vprint('Getting the data from bucket "{}"'.format(
        uri
    ))
    
    if str(source_file).lower().endswith('.json'): 
    #or \
    #        str(source_file).lower().endswith('.avro'):

        client = bigquery.Client()
        dataset_ref = client.dataset(dataset)

        job_config = bigquery.LoadJobConfig()
        job_config.autodetect = True
        #write_disposition=bigquery.job.WriteDisposition.WRITE_TRUNCATE
        #schema_update_options = [bigquery.SchemaUpdateOptions.ALLOW_FIELD_ADDITION]

    #    if str(source_file).lower().endswith('.json'):
        job_config.source_format = "NEWLINE_DELIMITED_JSON"
    #    else:
    #        job_config.source_format = "NEWLINE_DELIMITED_JSON"

        job_config.write_disposition = "WRITE_TRUNCATE"

        load_job = client.load_table_from_uri(
            uri,
            dataset_ref.table(table),
            job_config=job_config)

        vprint('Starting job {}'.format(load_job.job_id))

        load_job.result()
        vprint('Job finished.')

        destination_table = client.get_table(dataset_ref.table(table))
        vprint('Loaded {} rows.'.format(destination_table.num_rows))

        vprint('File imported successfully.')
    else:
        vprint('Not an importable file.')
