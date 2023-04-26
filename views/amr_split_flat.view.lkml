view: amr_split_flat {
  sql_table_name: `hai-looker.cdph_hai_combined.master`
    ;;

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

  dimension: amr_gene_categories {
    type: string
    sql: ${TABLE}.amr_gene_categories ;;
    drill_fields: [amr_genes, drug_classes, specimen_count]
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
    sql: ${TABLE}.collection_date;;
    drill_fields: [amr_genes, drug_classes]
  }

  dimension: county {
    type: string
    sql:${TABLE}.county ;;
    map_layer_name: counties_layer
    drill_fields: [amr_genes, gambit_predicted_taxon, drug_classes]
  }

  dimension: amr_gene_and_drug_class {
    type: string
    sql: ${TABLE}.drug_classes ;;
    drill_fields: [amr_genes, specimen_count]
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

  dimension: subclasses {
    type: string
    sql: ${TABLE}.subclasses ;;
    drill_fields: [amr_genes]
  }

  dimension: subclass {
    type: string
    sql: ${TABLE}.subclass;;
    drill_fields: [amr_genes]
  }

  dimension: specimen_id {
    type: string
    #primary_key: yes
    sql: ${TABLE}.specimen_id ;;
  }

  dimension: drug_classes {
    type: string
    sql: ${TABLE}.drug_classes ;;
      drill_fields: [amr_genes]
    }

    dimension: ts_mlst_predicted_st {
      type: string
      sql: ${TABLE}.ts_mlst_predicted_st ;;
    }

  # dimension: distinct_count {
  #   type: string
  #   sql: ${TABLE}.distinct_count ;;
  # }

  filter: amr_gene_filter_1 {
    type: string
    suggest_dimension: amr_genes
    full_suggestions: yes
  }

  filter: amr_gene_filter_2 {
    type: string
    suggest_dimension: amr_genes
    full_suggestions: yes
  }

  filter: amr_gene_filter_3 {
    type: string
    suggest_dimension: amr_genes
    full_suggestions: yes
  }

  filter: amr_gene_filter_4 {
    type: string
    suggest_dimension: amr_genes
    full_suggestions: yes
  }

  #filter: amr_gene_test_1 {
  #  type: string
  #  suggest_dimension: amr_genes
  #  full_suggestions: yes
  #}

  #filter: amr_gene_test_2 {
  #  type: string
  #  suggest_dimension: amr_genes
  #  sql: SELECT ${amr_genes} FROM amr_split_flat WHERE ${amrfinderplus_amr_genes} CONTAINS {% condition %} ${amr_genes} AND ${amrfinderplus_amr_genes} CONTAINS (% condition %} ${amr_genes} {% endcondition %} ;;
  #  full_suggestions: yes
  #}

  #parameter: filter_logic  {
  # type: unquoted
  # allowed_value: {
  #   label: "AND"
  #   value: "AND"
  # }
  # allowed_value: {
  #   label: "OR"
  #   value: "OR"
  # }
 #}

  measure: count {
    type: count
    drill_fields: []
  }

  measure: specimen_count {
    type: count_distinct
    sql: ${specimen_id} ;;
    drill_fields: [amr_genes, drug_classes]
  }

  measure: distinct_counts {
    type: count_distinct
    sql: distinct_count ;;
    drill_fields: [amr_genes, drug_classes]
  }

}
