# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: amr_split3 {
#   hidden: no

#   join: amr_split3__amr {
#     view_label: "Amr Split3: Amr"
#     sql: LEFT JOIN UNNEST(${amr_split3.amr}) as amr_split3__amr ;;
#     relationship: one_to_many
#   }

#   join: amr_split3__classes {
#     view_label: "Amr Split3: Classes"
#     sql: LEFT JOIN UNNEST(${amr_split3.classes}) as amr_split3__classes ;;
#     relationship: one_to_many
#   }

#   join: amr_split3__plasmids {
#     view_label: "Amr Split3: Plasmids"
#     sql: LEFT JOIN UNNEST(${amr_split3.plasmids}) as amr_split3__plasmids ;;
#     relationship: one_to_many
#   }

#   #sql_always_where: {% condition amr_split3.drug_class_filter_1 %} ${classes} {% endcondition %}
#   #{% parameter amr_split3.filter_logic %}
#   #{% condition amr_split3.drug_class_filter_2 %} ${classes} {% endcondition %} ;;
# }

# view: amr_split3 {
#   sql_table_name: `hai-looker.cdph_hai_combined.amr_split3`
#     ;;

#   # derived_table: {
#   #     sql:
#   #     SELECT UNNEST(amr) AS amr, CASE
#   #   WHEN STARTS_WITH(amr, "aac") IS TRUE THEN "aac"
#   #   WHEN STARTS_WITH(amr, "aad") IS TRUE THEN "aad"
#   #   WHEN STARTS_WITH(amr, "aba") IS TRUE THEN "aba"
#   #   WHEN STARTS_WITH(amr, "acr") IS TRUE THEN "acr"
#   #   WHEN STARTS_WITH(amr, "ade") IS TRUE THEN "ade"
#   #   WHEN STARTS_WITH(amr, "amv") IS TRUE THEN "amv"
#   #   WHEN STARTS_WITH(amr, "ant") IS TRUE THEN "ant"
#   #   WHEN STARTS_WITH(amr, "aph") IS TRUE THEN "aph"
#   #   WHEN STARTS_WITH(amr, "arm") IS TRUE THEN "arm"
#   #   WHEN STARTS_WITH(amr, "arr") IS TRUE THEN "arr"
#   #   WHEN STARTS_WITH(amr, "blaACT") IS TRUE THEN "blaACT"
#   #   WHEN STARTS_WITH(amr, "blaADC") IS TRUE THEN "blaADC"
#   #   WHEN STARTS_WITH(amr, "blaAXC") IS TRUE THEN "blaAXC"
#   #   WHEN STARTS_WITH(amr, "blaCARB") IS TRUE THEN "blaCARB"
#   #   WHEN STARTS_WITH(amr, "blaCKO") IS TRUE THEN "blaCKO"
#   #   WHEN STARTS_WITH(amr, "blaCMY") IS TRUE THEN "blaCMY"
#   #   WHEN STARTS_WITH(amr, "blaCTX") IS TRUE THEN "blaCTX"
#   #   WHEN STARTS_WITH(amr, "blaDHA") IS TRUE THEN "blaDHA"
#   #   WHEN STARTS_WITH(amr, "blaEC") IS TRUE THEN "blaEC"
#   #   WHEN STARTS_WITH(amr, "blaI") IS TRUE THEN "blaI"
#   #   WHEN STARTS_WITH(amr, "blaKPC") IS TRUE THEN "blaKPC"
#   #   WHEN STARTS_WITH(amr, "blaL1") IS TRUE THEN "blaL1"
#   #   WHEN STARTS_WITH(amr, "blaNDM") IS TRUE THEN "blaNDM"
#   #   WHEN STARTS_WITH(amr, "blaOXA") IS TRUE THEN "blaOXA"
#   #   WHEN STARTS_WITH(amr, "blaOXY") IS TRUE THEN "blaOXY"
#   #   WHEN STARTS_WITH(amr, "blaPDC") IS TRUE THEN "blaPDC"
#   #   WHEN STARTS_WITH(amr, "blaPER") IS TRUE THEN "blaPER"
#   #   WHEN STARTS_WITH(amr, "blaPLA") IS TRUE THEN "blaPLA"
#   #   WHEN STARTS_WITH(amr, "blaPME") IS TRUE THEN "blaPME"
#   #   WHEN STARTS_WITH(amr, "blaR") IS TRUE THEN "blaR"
#   #   WHEN STARTS_WITH(amr, "blaSFO") IS TRUE THEN "blaSFO"
#   #   WHEN STARTS_WITH(amr, "blaSHV") IS TRUE THEN "blaSHV"
#   #   WHEN STARTS_WITH(amr, "blaSME") IS TRUE THEN "blaSME"
#   #   WHEN STARTS_WITH(amr, "blaSRT") IS TRUE THEN "blaSRT"
#   #   WHEN STARTS_WITH(amr, "blaTEM") IS TRUE THEN "blaTEM"
#   #   WHEN STARTS_WITH(amr, "blaVEB") IS TRUE THEN "blaVEB"
#   #   WHEN STARTS_WITH(amr, "blaVIM") IS TRUE THEN "blaVIM"
#   #   WHEN STARTS_WITH(amr, "blaZ") IS TRUE THEN "blaZ"
#   #   WHEN STARTS_WITH(amr, "ble") IS TRUE THEN "ble"
#   #   WHEN STARTS_WITH(amr, "cat") IS TRUE THEN "cat"
#   #   WHEN STARTS_WITH(amr, "cml") IS TRUE THEN "cml"
#   #   WHEN STARTS_WITH(amr, "crp") IS TRUE THEN "crp"
#   #   WHEN STARTS_WITH(amr, "dfr") IS TRUE THEN "dfr"
#   #   WHEN STARTS_WITH(amr, "emr") IS TRUE THEN "emr"
#   #   WHEN STARTS_WITH(amr, "ere") IS TRUE THEN "ere"
#   #   WHEN STARTS_WITH(amr, "erm") IS TRUE THEN "erm"
#   #   WHEN STARTS_WITH(amr, "floR") IS TRUE THEN "floR"
#   #   WHEN STARTS_WITH(amr, "fos") IS TRUE THEN "fos"
#   #   WHEN STARTS_WITH(amr, "ftsl") IS TRUE THEN "ftsl"
#   #   WHEN STARTS_WITH(amr, "glpt") IS TRUE THEN "glpt"
#   #   WHEN STARTS_WITH(amr, "gyr") IS TRUE THEN "gyr"
#   #   WHEN STARTS_WITH(amr, "kde") IS TRUE THEN "kde"
#   #   WHEN STARTS_WITH(amr, "lsa") IS TRUE THEN "lsa"
#   #   WHEN STARTS_WITH(amr, "mcr") IS TRUE THEN "mcr"
#   #   WHEN STARTS_WITH(amr, "mdt") IS TRUE THEN "mdt"
#   #   WHEN STARTS_WITH(amr, "mec") IS TRUE THEN "mec"
#   #   WHEN STARTS_WITH(amr, "mep") IS TRUE THEN "mep"
#   #   WHEN STARTS_WITH(amr, "mex") IS TRUE THEN "mex"
#   #   WHEN STARTS_WITH(amr, "mph") IS TRUE THEN "mph"
#   #   WHEN STARTS_WITH(amr, "msr") IS TRUE THEN "msr"
#   #   WHEN STARTS_WITH(amr, "mur") IS TRUE THEN "mur"
#   #   WHEN STARTS_WITH(amr, "oqx") IS TRUE THEN "oqx"
#   #   WHEN STARTS_WITH(amr, "par") IS TRUE THEN "par"
#   #   WHEN STARTS_WITH(amr, "pmr") IS TRUE THEN "pmr"
#   #   WHEN STARTS_WITH(amr, "qep") IS TRUE THEN "qep"
#   #   WHEN STARTS_WITH(amr, "qnr") IS TRUE THEN "qnr"
#   #   WHEN STARTS_WITH(amr, "rmt") IS TRUE THEN "rmt"
#   #   WHEN STARTS_WITH(amr, "sat") IS TRUE THEN "sat"
#   #   WHEN STARTS_WITH(amr, "sde") IS TRUE THEN "sde"
#   #   WHEN STARTS_WITH(amr, "sme") IS TRUE THEN "sme"
#   #   WHEN STARTS_WITH(amr, "smf") IS TRUE THEN "smf"
#   #   WHEN STARTS_WITH(amr, "sul") IS TRUE THEN "sul"
#   #   WHEN STARTS_WITH(amr, "tet") IS TRUE THEN "tet"
#   #   ELSE "No Category" END as amr_gene_category
#   #   FROM amr AS amr_nested
#   #   WHERE {% condition amr_filter_1 %} amr_gene_category {% endcondition %}
#   #   ;;
#   # }

#   dimension: amr {
#     hidden: yes
#     sql: ${TABLE}.amr ;;
#   }

#   dimension: unnest_amr {
#     type: string
#     sql: UNNEST(${amr}) ;;
#   }

#   dimension: amrfinderplus_all_report {
#     type: string
#     sql: ${TABLE}.amrfinderplus_all_report ;;
#   }

#   dimension: amrfinderplus_amr_classes {
#     type: string
#     sql: ${TABLE}.amrfinderplus_amr_classes ;;
#   }

#   dimension: amrfinderplus_amr_genes {
#     type: string
#     sql: ${TABLE}.amrfinderplus_amr_genes ;;
#   }

#   dimension: amrfinderplus_amr_report {
#     type: string
#     sql: ${TABLE}.amrfinderplus_amr_report ;;
#   }

#   dimension: amrfinderplus_amr_subclasses {
#     type: string
#     sql: ${TABLE}.amrfinderplus_amr_subclasses ;;
#   }

#   dimension: amrfinderplus_db_version {
#     type: string
#     sql: ${TABLE}.amrfinderplus_db_version ;;
#   }

#   dimension: amrfinderplus_stress_genes {
#     type: string
#     sql: ${TABLE}.amrfinderplus_stress_genes ;;
#   }

#   dimension: amrfinderplus_stress_report {
#     type: string
#     sql: ${TABLE}.amrfinderplus_stress_report ;;
#   }

#   dimension: amrfinderplus_version {
#     type: string
#     sql: ${TABLE}.amrfinderplus_version ;;
#   }

#   dimension: amrfinderplus_virulence_genes {
#     type: string
#     sql: ${TABLE}.amrfinderplus_virulence_genes ;;
#   }

#   dimension: amrfinderplus_virulence_report {
#     type: string
#     sql: ${TABLE}.amrfinderplus_virulence_report ;;
#   }

#   dimension: amr_gene_categories {
#     type: string
#     sql: CASE
#     WHEN STARTS_WITH(${unnest_amr}, "aac") IS TRUE THEN "aac"
#     WHEN STARTS_WITH(${TABLE}.amr, "aad") IS TRUE THEN "aad"
#     WHEN STARTS_WITH(${TABLE}.amr, "aba") IS TRUE THEN "aba"
#     WHEN STARTS_WITH(${TABLE}.amr, "acr") IS TRUE THEN "acr"
#     WHEN STARTS_WITH(${TABLE}.amr, "ade") IS TRUE THEN "ade"
#     WHEN STARTS_WITH(${TABLE}.amr, "amv") IS TRUE THEN "amv"
#     WHEN STARTS_WITH(${TABLE}.amr, "ant") IS TRUE THEN "ant"
#     WHEN STARTS_WITH(${TABLE}.amr, "aph") IS TRUE THEN "aph"
#     WHEN STARTS_WITH(${TABLE}.amr, "arm") IS TRUE THEN "arm"
#     WHEN STARTS_WITH(${TABLE}.amr, "arr") IS TRUE THEN "arr"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaACT") IS TRUE THEN "blaACT"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaADC") IS TRUE THEN "blaADC"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaAXC") IS TRUE THEN "blaAXC"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaCARB") IS TRUE THEN "blaCARB"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaCKO") IS TRUE THEN "blaCKO"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaCMY") IS TRUE THEN "blaCMY"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaCTX") IS TRUE THEN "blaCTX"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaDHA") IS TRUE THEN "blaDHA"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaEC") IS TRUE THEN "blaEC"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaI") IS TRUE THEN "blaI"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaKPC") IS TRUE THEN "blaKPC"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaL1") IS TRUE THEN "blaL1"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaNDM") IS TRUE THEN "blaNDM"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaOXA") IS TRUE THEN "blaOXA"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaOXY") IS TRUE THEN "blaOXY"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaPDC") IS TRUE THEN "blaPDC"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaPER") IS TRUE THEN "blaPER"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaPLA") IS TRUE THEN "blaPLA"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaPME") IS TRUE THEN "blaPME"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaR") IS TRUE THEN "blaR"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaSFO") IS TRUE THEN "blaSFO"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaSHV") IS TRUE THEN "blaSHV"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaSME") IS TRUE THEN "blaSME"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaSRT") IS TRUE THEN "blaSRT"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaTEM") IS TRUE THEN "blaTEM"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaVEB") IS TRUE THEN "blaVEB"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaVIM") IS TRUE THEN "blaVIM"
#     WHEN STARTS_WITH(${TABLE}.amr, "blaZ") IS TRUE THEN "blaZ"
#     WHEN STARTS_WITH(${TABLE}.amr, "ble") IS TRUE THEN "ble"
#     WHEN STARTS_WITH(${TABLE}.amr, "cat") IS TRUE THEN "cat"
#     WHEN STARTS_WITH(${TABLE}.amr, "cml") IS TRUE THEN "cml"
#     WHEN STARTS_WITH(${TABLE}.amr, "crp") IS TRUE THEN "crp"
#     WHEN STARTS_WITH(${TABLE}.amr, "dfr") IS TRUE THEN "dfr"
#     WHEN STARTS_WITH(${TABLE}.amr, "emr") IS TRUE THEN "emr"
#     WHEN STARTS_WITH(${TABLE}.amr, "ere") IS TRUE THEN "ere"
#     WHEN STARTS_WITH(${TABLE}.amr, "erm") IS TRUE THEN "erm"
#     WHEN STARTS_WITH(${TABLE}.amr, "floR") IS TRUE THEN "floR"
#     WHEN STARTS_WITH(${TABLE}.amr, "fos") IS TRUE THEN "fos"
#     WHEN STARTS_WITH(${TABLE}.amr, "ftsl") IS TRUE THEN "ftsl"
#     WHEN STARTS_WITH(${TABLE}.amr, "glpt") IS TRUE THEN "glpt"
#     WHEN STARTS_WITH(${TABLE}.amr, "gyr") IS TRUE THEN "gyr"
#     WHEN STARTS_WITH(${TABLE}.amr, "kde") IS TRUE THEN "kde"
#     WHEN STARTS_WITH(${TABLE}.amr, "lsa") IS TRUE THEN "lsa"
#     WHEN STARTS_WITH(${TABLE}.amr, "mcr") IS TRUE THEN "mcr"
#     WHEN STARTS_WITH(${TABLE}.amr, "mdt") IS TRUE THEN "mdt"
#     WHEN STARTS_WITH(${TABLE}.amr, "mec") IS TRUE THEN "mec"
#     WHEN STARTS_WITH(${TABLE}.amr, "mep") IS TRUE THEN "mep"
#     WHEN STARTS_WITH(${TABLE}.amr, "mex") IS TRUE THEN "mex"
#     WHEN STARTS_WITH(${TABLE}.amr, "mph") IS TRUE THEN "mph"
#     WHEN STARTS_WITH(${TABLE}.amr, "msr") IS TRUE THEN "msr"
#     WHEN STARTS_WITH(${TABLE}.amr, "mur") IS TRUE THEN "mur"
#     WHEN STARTS_WITH(${TABLE}.amr, "oqx") IS TRUE THEN "oqx"
#     WHEN STARTS_WITH(${TABLE}.amr, "par") IS TRUE THEN "par"
#     WHEN STARTS_WITH(${TABLE}.amr, "pmr") IS TRUE THEN "pmr"
#     WHEN STARTS_WITH(${TABLE}.amr, "qep") IS TRUE THEN "qep"
#     WHEN STARTS_WITH(${TABLE}.amr, "qnr") IS TRUE THEN "qnr"
#     WHEN STARTS_WITH(${TABLE}.amr, "rmt") IS TRUE THEN "rmt"
#     WHEN STARTS_WITH(${TABLE}.amr, "sat") IS TRUE THEN "sat"
#     WHEN STARTS_WITH(${TABLE}.amr, "sde") IS TRUE THEN "sde"
#     WHEN STARTS_WITH(${TABLE}.amr, "sme") IS TRUE THEN "sme"
#     WHEN STARTS_WITH(${TABLE}.amr, "smf") IS TRUE THEN "smf"
#     WHEN STARTS_WITH(${TABLE}.amr, "sul") IS TRUE THEN "sul"
#     WHEN STARTS_WITH(${TABLE}.amr, "tet") IS TRUE THEN "tet"
#     ELSE "No Category" END;;
#     drill_fields: [amr, count]
#   }

#   dimension: ani_highest_percent {
#     type: string
#     sql: ${TABLE}.ani_highest_percent ;;
#   }

#   dimension: ani_highest_percent_bases_aligned {
#     type: string
#     sql: ${TABLE}.ani_highest_percent_bases_aligned ;;
#   }

#   dimension: ani_mummer_version {
#     type: string
#     sql: ${TABLE}.ani_mummer_version ;;
#   }

#   dimension: ani_output_tsv {
#     type: string
#     sql: ${TABLE}.ani_output_tsv ;;
#   }

#   dimension: ani_top_species_match {
#     type: string
#     sql: ${TABLE}.ani_top_species_match ;;
#   }

#   dimension: assembly_fasta {
#     type: string
#     sql: ${TABLE}.assembly_fasta ;;
#   }

#   dimension: bbduk_docker {
#     type: string
#     sql: ${TABLE}.bbduk_docker ;;
#   }

#   dimension: busco_database {
#     type: string
#     sql: ${TABLE}.busco_database ;;
#   }

#   dimension: busco_report {
#     type: string
#     sql: ${TABLE}.busco_report ;;
#   }

#   dimension: busco_results {
#     type: string
#     sql: ${TABLE}.busco_results ;;
#   }

#   dimension: busco_version {
#     type: string
#     sql: ${TABLE}.busco_version ;;
#   }

#   dimension: cg_pipeline_docker {
#     type: string
#     sql: ${TABLE}.cg_pipeline_docker ;;
#   }

#   dimension: cg_pipeline_report {
#     type: string
#     sql: ${TABLE}.cg_pipeline_report ;;
#   }

#   dimension: classes {
#     hidden: yes
#     sql: ${TABLE}.classes ;;
#   }

#   dimension: unnest_classes {
#     type: string
#     sql: UNNEST(${amr_split3.classes}) ;;
#   }

#   dimension: clean_read_screen {
#     type: string
#     sql: ${TABLE}.clean_read_screen ;;
#   }

#   dimension_group: collection {
#     type: time
#     timeframes: [
#       raw,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     convert_tz: no
#     datatype: date
#     sql: ${TABLE}.collection_date ;;
#   }

#   dimension: contigs_fastg {
#     type: string
#     sql: ${TABLE}.contigs_fastg ;;
#   }

#   dimension: contigs_gfa {
#     type: string
#     sql: ${TABLE}.contigs_gfa ;;
#   }

#   dimension: contigs_lastgraph {
#     type: string
#     sql: ${TABLE}.contigs_lastgraph ;;
#   }

#   dimension: county {
#     type: string
#     sql: ${TABLE}.county ;;
#   }

#   dimension: ectyper_predicted_serotype {
#     type: string
#     sql: ${TABLE}.ectyper_predicted_serotype ;;
#   }

#   dimension: ectyper_results {
#     type: string
#     sql: ${TABLE}.ectyper_results ;;
#   }

#   dimension: ectyper_version {
#     type: string
#     sql: ${TABLE}.ectyper_version ;;
#   }

#   dimension: est_coverage {
#     type: number
#     sql: ${TABLE}.est_coverage ;;
#   }

#   dimension: fastq_scan_version {
#     type: string
#     sql: ${TABLE}.fastq_scan_version ;;
#   }

#   dimension: gambit_closest_genomes {
#     type: string
#     sql: ${TABLE}.gambit_closest_genomes ;;
#   }

#   dimension: gambit_db_version {
#     type: string
#     sql: ${TABLE}.gambit_db_version ;;
#   }

#   dimension: gambit_docker {
#     type: string
#     sql: ${TABLE}.gambit_docker ;;
#   }

#   dimension: gambit_predicted_taxon {
#     type: string
#     sql: ${TABLE}.gambit_predicted_taxon ;;
#   }

#   dimension: gambit_predicted_taxon_rank {
#     type: string
#     sql: ${TABLE}.gambit_predicted_taxon_rank ;;
#   }

#   dimension: gambit_report {
#     type: string
#     sql: ${TABLE}.gambit_report ;;
#   }

#   dimension: gambit_version {
#     type: string
#     sql: ${TABLE}.gambit_version ;;
#   }

#   dimension: genome_length {
#     type: number
#     sql: ${TABLE}.genome_length ;;
#   }

#   dimension: genotyphi_final_genotype {
#     type: string
#     sql: ${TABLE}.genotyphi_final_genotype ;;
#   }

#   dimension: genotyphi_genotype_confidence {
#     type: string
#     sql: ${TABLE}.genotyphi_genotype_confidence ;;
#   }

#   dimension: genotyphi_mykrobe_json {
#     type: string
#     sql: ${TABLE}.genotyphi_mykrobe_json ;;
#   }

#   dimension: genotyphi_report_tsv {
#     type: string
#     sql: ${TABLE}.genotyphi_report_tsv ;;
#   }

#   dimension: genotyphi_species {
#     type: string
#     sql: ${TABLE}.genotyphi_species ;;
#   }

#   dimension: genotyphi_st_probes_percent_coverage {
#     type: string
#     sql: ${TABLE}.genotyphi_st_probes_percent_coverage ;;
#   }

#   dimension: genotyphi_version {
#     type: string
#     sql: ${TABLE}.genotyphi_version ;;
#   }

#   dimension: kleborate_genomic_resistance_mutations {
#     type: string
#     sql: ${TABLE}.kleborate_genomic_resistance_mutations ;;
#   }

#   dimension: kleborate_key_resistance_genes {
#     type: string
#     sql: ${TABLE}.kleborate_key_resistance_genes ;;
#   }

#   dimension: kleborate_mlst_sequence_type {
#     type: string
#     sql: ${TABLE}.kleborate_mlst_sequence_type ;;
#   }

#   dimension: kleborate_output_file {
#     type: string
#     sql: ${TABLE}.kleborate_output_file ;;
#   }

#   dimension: kleborate_version {
#     type: string
#     sql: ${TABLE}.kleborate_version ;;
#   }

#   dimension: legsta_predicted_sbt {
#     type: string
#     sql: ${TABLE}.legsta_predicted_sbt ;;
#   }

#   dimension: legsta_results {
#     type: string
#     sql: ${TABLE}.legsta_results ;;
#   }

#   dimension: legsta_version {
#     type: string
#     sql: ${TABLE}.legsta_version ;;
#   }

#   dimension: lissero_results {
#     type: string
#     sql: ${TABLE}.lissero_results ;;
#   }

#   dimension: lissero_serotype {
#     type: string
#     sql: ${TABLE}.lissero_serotype ;;
#   }

#   dimension: lissero_version {
#     type: string
#     sql: ${TABLE}.lissero_version ;;
#   }

#   dimension: n50_value {
#     type: number
#     sql: ${TABLE}.n50_value ;;
#   }

#   dimension: notes {
#     type: string
#     sql: ${TABLE}.notes ;;
#   }

#   dimension: num_reads_clean1 {
#     type: number
#     sql: ${TABLE}.num_reads_clean1 ;;
#   }

#   dimension: num_reads_clean2 {
#     type: number
#     sql: ${TABLE}.num_reads_clean2 ;;
#   }

#   dimension: num_reads_clean_pairs {
#     type: number
#     sql: ${TABLE}.num_reads_clean_pairs ;;
#   }

#   dimension: num_reads_raw1 {
#     type: number
#     sql: ${TABLE}.num_reads_raw1 ;;
#   }

#   dimension: num_reads_raw2 {
#     type: number
#     sql: ${TABLE}.num_reads_raw2 ;;
#   }

#   dimension: num_reads_raw_pairs {
#     type: number
#     sql: ${TABLE}.num_reads_raw_pairs ;;
#   }

#   dimension: number_contigs {
#     type: number
#     sql: ${TABLE}.number_contigs ;;
#   }

#   dimension: pbptyper_pbptype_predicted_tsv {
#     type: string
#     sql: ${TABLE}.pbptyper_pbptype_predicted_tsv ;;
#   }

#   dimension: pbptyper_predicted_1_a_2_b_2_x {
#     type: string
#     sql: ${TABLE}.pbptyper_predicted_1A_2B_2X ;;
#   }

#   dimension: pbptyper_version {
#     type: string
#     sql: ${TABLE}.pbptyper_version ;;
#   }

#   dimension: plasmidfinder_db_version {
#     type: string
#     sql: ${TABLE}.plasmidfinder_db_version ;;
#   }

#   dimension: plasmidfinder_docker {
#     type: string
#     sql: ${TABLE}.plasmidfinder_docker ;;
#   }

#   dimension: plasmidfinder_plasmids {
#     type: string
#     sql: ${TABLE}.plasmidfinder_plasmids ;;
#   }

#   dimension: plasmidfinder_results {
#     type: string
#     sql: ${TABLE}.plasmidfinder_results ;;
#   }

#   dimension: plasmidfinder_seqs {
#     type: string
#     sql: ${TABLE}.plasmidfinder_seqs ;;
#   }

#   dimension: plasmids {
#     hidden: yes
#     sql: ${TABLE}.plasmids ;;
#   }

#   dimension: poppunk_gps_cluster {
#     type: string
#     sql: ${TABLE}.poppunk_gps_cluster ;;
#   }

#   dimension: poppunk_gps_external_cluster_csv {
#     type: string
#     sql: ${TABLE}.poppunk_gps_external_cluster_csv ;;
#   }

#   dimension: poppunk_version {
#     type: string
#     sql: ${TABLE}.poppunk_version ;;
#   }

#   dimension: prokka_gbk {
#     type: string
#     sql: ${TABLE}.prokka_gbk ;;
#   }

#   dimension: prokka_gff {
#     type: string
#     sql: ${TABLE}.prokka_gff ;;
#   }

#   dimension: prokka_sqn {
#     type: string
#     sql: ${TABLE}.prokka_sqn ;;
#   }

#   dimension: quast_report {
#     type: string
#     sql: ${TABLE}.quast_report ;;
#   }

#   dimension: quast_version {
#     type: string
#     sql: ${TABLE}.quast_version ;;
#   }

#   dimension: r1_mean_q {
#     type: number
#     sql: ${TABLE}.r1_mean_q ;;
#   }

#   dimension: r2_mean_q {
#     type: number
#     sql: ${TABLE}.r2_mean_q ;;
#   }

#   dimension: raw_read_screen {
#     type: string
#     sql: ${TABLE}.raw_read_screen ;;
#   }

#   dimension: read1 {
#     type: string
#     sql: ${TABLE}.read1 ;;
#   }

#   dimension: read1_clean {
#     type: string
#     sql: ${TABLE}.read1_clean ;;
#   }

#   dimension: read2 {
#     type: string
#     sql: ${TABLE}.read2 ;;
#   }

#   dimension: read2_clean {
#     type: string
#     sql: ${TABLE}.read2_clean ;;
#   }

#   dimension: resfinder_db_version {
#     type: string
#     sql: ${TABLE}.resfinder_db_version ;;
#   }

#   dimension: resfinder_docker {
#     type: string
#     sql: ${TABLE}.resfinder_docker ;;
#   }

#   dimension: resfinder_pheno_table {
#     type: string
#     sql: ${TABLE}.resfinder_pheno_table ;;
#   }

#   dimension: resfinder_pheno_table_species {
#     type: string
#     sql: ${TABLE}.resfinder_pheno_table_species ;;
#   }

#   dimension: resfinder_pointfinder_pheno_table {
#     type: string
#     sql: ${TABLE}.resfinder_pointfinder_pheno_table ;;
#   }

#   dimension: resfinder_pointfinder_results {
#     type: string
#     sql: ${TABLE}.resfinder_pointfinder_results ;;
#   }

#   dimension: resfinder_results {
#     type: string
#     sql: ${TABLE}.resfinder_results ;;
#   }

#   dimension: resfinder_seqs {
#     type: string
#     sql: ${TABLE}.resfinder_seqs ;;
#   }

#   dimension: run_date {
#     type: number
#     sql: ${TABLE}.run_date ;;
#   }

#   dimension: seq_platform {
#     type: string
#     sql: ${TABLE}.seq_platform ;;
#   }

#   dimension: seqsero2_predicted_antigenic_profile {
#     type: string
#     sql: ${TABLE}.seqsero2_predicted_antigenic_profile ;;
#   }

#   dimension: seqsero2_predicted_contamination {
#     type: string
#     sql: ${TABLE}.seqsero2_predicted_contamination ;;
#   }

#   dimension: seqsero2_predicted_serotype {
#     type: string
#     sql: ${TABLE}.seqsero2_predicted_serotype ;;
#   }

#   dimension: seqsero2_report {
#     type: string
#     sql: ${TABLE}.seqsero2_report ;;
#   }

#   dimension: seqsero2_version {
#     type: string
#     sql: ${TABLE}.seqsero2_version ;;
#   }

#   dimension: seroba_ariba_identity {
#     type: string
#     sql: ${TABLE}.seroba_ariba_identity ;;
#   }

#   dimension: seroba_ariba_serotype {
#     type: string
#     sql: ${TABLE}.seroba_ariba_serotype ;;
#   }

#   dimension: seroba_details {
#     type: string
#     sql: ${TABLE}.seroba_details ;;
#   }

#   dimension: seroba_serotype {
#     type: string
#     sql: ${TABLE}.seroba_serotype ;;
#   }

#   dimension: seroba_version {
#     type: string
#     sql: ${TABLE}.seroba_version ;;
#   }

#   dimension: serotypefinder_docker {
#     type: string
#     sql: ${TABLE}.serotypefinder_docker ;;
#   }

#   dimension: serotypefinder_report {
#     type: string
#     sql: ${TABLE}.serotypefinder_report ;;
#   }

#   dimension: serotypefinder_serotype {
#     type: string
#     sql: ${TABLE}.serotypefinder_serotype ;;
#   }

#   dimension: shovill_pe_version {
#     type: string
#     sql: ${TABLE}.shovill_pe_version ;;
#   }

#   dimension: sister_allele_fasta {
#     type: string
#     sql: ${TABLE}.sister_allele_fasta ;;
#   }

#   dimension: sistr_allele_json {
#     type: string
#     sql: ${TABLE}.sistr_allele_json ;;
#   }

#   dimension: sistr_cgmlst {
#     type: string
#     sql: ${TABLE}.sistr_cgmlst ;;
#   }

#   dimension: sistr_predicted_serotype {
#     type: string
#     sql: ${TABLE}.sistr_predicted_serotype ;;
#   }

#   dimension: sistr_results {
#     type: string
#     sql: ${TABLE}.sistr_results ;;
#   }

#   dimension: sistr_version {
#     type: string
#     sql: ${TABLE}.sistr_version ;;
#   }

#   dimension: specimen_id {
#     type: string
#     primary_key: yes
#     sql: ${TABLE}.specimen_id ;;
#   }

#   dimension: tbprofiler_dr_type {
#     type: string
#     sql: ${TABLE}.tbprofiler_dr_type ;;
#   }

#   dimension: tbprofiler_main_lineage {
#     type: string
#     sql: ${TABLE}.tbprofiler_main_lineage ;;
#   }

#   dimension: tbprofiler_output_bai {
#     type: string
#     sql: ${TABLE}.tbprofiler_output_bai ;;
#   }

#   dimension: tbprofiler_output_bam {
#     type: string
#     sql: ${TABLE}.tbprofiler_output_bam ;;
#   }

#   dimension: tbprofiler_output_file {
#     type: string
#     sql: ${TABLE}.tbprofiler_output_file ;;
#   }

#   dimension: tbprofiler_resistance_genes {
#     type: string
#     sql: ${TABLE}.tbprofiler_resistance_genes ;;
#   }

#   dimension: tbprofiler_sub_lineage {
#     type: string
#     sql: ${TABLE}.tbprofiler_sub_lineage ;;
#   }

#   dimension: tbprofiler_version {
#     type: string
#     sql: ${TABLE}.tbprofiler_version ;;
#   }

#   dimension_group: theiaprok_illumina_pe_analysis {
#     type: time
#     timeframes: [
#       raw,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     convert_tz: no
#     datatype: date
#     sql: ${TABLE}.theiaprok_illumina_pe_analysis_date ;;
#   }

#   dimension: theiaprok_illumina_pe_version {
#     type: string
#     sql: ${TABLE}.theiaprok_illumina_pe_version ;;
#   }

#   dimension: trimmomatic_version {
#     type: string
#     sql: ${TABLE}.trimmomatic_version ;;
#   }

#   dimension: ts_mlst_predicted_st {
#     type: string
#     sql: ${TABLE}.ts_mlst_predicted_st ;;
#   }

#   dimension: ts_mlst_pubmlst_scheme {
#     type: string
#     sql: ${TABLE}.ts_mlst_pubmlst_scheme ;;
#   }

#   dimension: ts_mlst_results {
#     type: string
#     sql: ${TABLE}.ts_mlst_results ;;
#   }

#   dimension: ts_mlst_version {
#     type: string
#     sql: ${TABLE}.ts_mlst_version ;;
#   }

#   filter: drug_class_filter_1 {
#     type: string
#     suggest_dimension: classes
#     full_suggestions: yes
#   }

#   filter: drug_class_filter_3 {
#     type: string
#     suggest_dimension: classes
#     full_suggestions: yes
#     sql: {% condition %} classes {% endcondition %} ;;
#   }

#   filter: drug_class_filter_2 {
#     type: string
#     suggest_dimension: classes
#     full_suggestions: yes
#   }

#   filter: amr_filter_1 {
#     type: string
#     suggest_dimension: amr
#     full_suggestions: yes
#     #sql: {% condition %} classes {% endcondition %} ;;
#   }

#   parameter: filter_logic  {
#     type: unquoted
#     allowed_value: {
#       label: "AND"
#       value: "AND"
#     }
#     allowed_value: {
#       label: "OR"
#       value: "OR"
#     }
#   }

#   measure: count {
#     type: count
#     drill_fields: []
#   }

#   measure: specimen_count {
#     type: count_distinct
#     sql: ${specimen_id} ;;
#   }
# }

# view: amr_split3__amr {
#   dimension: amr_split3__amr {
#     type: string
#     sql: amr_split3__amr ;;
#   }
# }

# view: amr_split3__classes {
#   dimension: amr_split3__classes {
#     type: string
#     sql: amr_split3__classes ;;
#   }
# }

# view: amr_split3__plasmids {
#   dimension: amr_split3__plasmids {
#     type: string
#     sql: amr_split3__plasmids ;;
#   }
# }
