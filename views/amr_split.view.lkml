# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# view: amr_split {
#   sql_table_name: `hai-looker.cdph_hai_combined.amr_split`
#     ;;

#   dimension: amr {
#     hidden: no
#     sql: ${TABLE}.amr ;;
#   }

#   filter: amrfilter1 {
#     type: string
#     sql: UNNEST(${TABLE}.amr) ;;
#     #suggest_dimension: UNNEST(amr)
#     full_suggestions: yes
#   }

#   filter: amrfilter2 {
#     type: string
#     suggest_dimension: amr
#     full_suggestions: yes
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

#   dimension: amr_and {
#     hidden: yes
#     sql: CONCAT("%", " ", ${TABLE}.amr, " ", "%") ;;
#   }

#   dimension: amrfinderplus_all_report {
#     type: string
#     sql: ${TABLE}.amrfinderplus_all_report ;;
#   }

#   dimension: amrfinderplus_amr_genes {
#     type: string
#     sql: ${TABLE}.amrfinderplus_amr_genes ;;
#   }

#   dimension: amrfinderplus_amr_report {
#     type: string
#     sql: ${TABLE}.amrfinderplus_amr_report ;;
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

#   dimension: ani_highest_percent {
#     type: number
#     sql: ${TABLE}.ani_highest_percent ;;
#   }

#   dimension: ani_highest_percent_bases_aligned {
#     type: number
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

#   dimension: clean_read_screen {
#     type: string
#     sql: ${TABLE}.clean_read_screen ;;
#   }

#   dimension_group: collection {
#     type: time
#     description: "%E4Y-%m-%d"
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

#   measure: count {
#     type: count
#     drill_fields: []
#   }
# }

# view: amr_split__amr {
#   dimension: amr_split__amr {
#     type: string
#     full_suggestions: yes
#     sql: amr_split__amr ;;
#   }

#   #test as filter instead of dimension
#   filter: amr_split__amr1 {
#     type: string
#     label: "AMR Filter 1"
#     full_suggestions: yes
#     sql: amr_split__amr ;;
#   }
#   filter: amr_split__amr2 {
#     type: string
#     label: "AMR Filter 2"
#     full_suggestions: yes
#     sql: amr_split__amr ;;
#   }
# }
