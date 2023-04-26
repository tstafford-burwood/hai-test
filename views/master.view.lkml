view: master {
  sql_table_name: `hai-looker.cdph_hai_combined.master`
    ;;

  dimension: amr_gene_categories {
    type: string
    sql: ${TABLE}.amr_gene_categories ;;
    drill_fields: [amr_genes, drug_classes, specimen_count]
  }

  dimension: amr_genes {
    type: string
    sql: ${TABLE}.amr_genes ;;
  }

  dimension: amrfinderplus_amr_classes {
    type: string
    sql: ${TABLE}.amrfinderplus_amr_classes ;;
  }

  dimension: amrfinderplus_amr_genes {
    type: string
    sql: ${TABLE}.amrfinderplus_amr_genes ;;
  }

  dimension: amrfinderplus_amr_subclasses {
    type: string
    sql: ${TABLE}.amrfinderplus_amr_subclasses ;;
  }

  dimension_group: collection {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.collection_date ;;
    drill_fields: [amr_genes, drug_classes]
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
    map_layer_name: counties_layer
    drill_fields: [amr_genes, gambit_predicted_taxon, drug_classes]
  }

  dimension: drug_classes {
    type: string
    sql: ${TABLE}.drug_classes ;;
    drill_fields: [amr_genes]
  }

  dimension: gambit_predicted_taxon {
    type: string
    sql: ${TABLE}.gambit_predicted_taxon ;;
    drill_fields: [amr_genes, drug_classes, ts_mlst_predicted_st, specimen_count]
  }

  dimension: plasmidfinder_plasmids {
    type: string
    sql: ${TABLE}.plasmidfinder_plasmids ;;
  }

  dimension: plasmids {
    type: string
    sql: ${TABLE}.plasmids ;;
    drill_fields: [amr_genes, drug_classes]
  }

  dimension: specimen_id {
    type: string
    sql: ${TABLE}.specimen_id ;;
  }

  dimension: subclass {
    type: string
    sql: ${TABLE}.subclass ;;
    drill_fields: [amr_genes]
  }

  dimension: subclasses {
    type: string
    sql: ${TABLE}.subclasses ;;
  }

  dimension: ts_mlst_predicted_st {
    type: string
    sql: ${TABLE}.ts_mlst_predicted_st ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: specimen_count {
    type: count_distinct
    sql: ${specimen_id} ;;
    drill_fields: [amr_genes, drug_classes]
  }
}
