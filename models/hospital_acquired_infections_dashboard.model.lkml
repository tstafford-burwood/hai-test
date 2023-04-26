connection: "hospital_acquired_infections_dashboard"

# include all the views
include: "/views/**/*.view"
include: "/dashboard/*"

datagroup: hospital_acquired_infections_dashboard_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

datagroup: datagroup_alert_specimen_id {
  max_cache_age: "24 hours"
  sql_trigger: SELECT count(distinct specimen_id) FROM amr_split_flat ;;
  # label: "desired label"
  # description: "description string"
}

datagroup: datagroup_alert_amr {
  max_cache_age: "24 hours"
  sql_trigger: SELECT count(distinct amr_genes) FROM amr_split_flat ;;
  # label: "desired label"
  # description: "description string"
}

persist_with: hospital_acquired_infections_dashboard_default_datagroup

#explore: hai_master {}

#explore: test1 {}

#explore: antibody_resistance {}

#explore: amr_split {
#  hidden: no
#  join: amr_split__amr {
#    view_label: "Amr Split: Amr"
#    sql: LEFT JOIN UNNEST(${amr_split.amr}) as amr_split__amr ;;
#    relationship: one_to_many
#  }
# sql_always_where: {% condition amr_split__amr.amr_split__amr1 %} amr_split.amrfinderplus_amr_genes {% endcondition %}
#  {% parameter amr_split.filter_logic %}
#  {% condition amr_split__amr.amr_split__amr2 %} amr_split.amrfinderplus_amr_genes {% endcondition %};;
#}
#{% condition amr_split.amr1 %} amr_split.amrfinderplus_amr_genes {% endcondition %}
#{% parameter amr_split.filter_logic %}
#{% condition amr_split.amr2 %} amr_split.amrfinderplus_amr_genes {% endcondition %};;
#explore: amr_split2 {}

explore: amr_split_flat {
  sql_always_where: {% condition amr_split_flat.amr_gene_filter_1 %} amr_split_flat.amrfinderplus_amr_genes {% endcondition %}
  AND
  {% condition amr_split_flat.amr_gene_filter_2 %} amr_split_flat.amrfinderplus_amr_genes {% endcondition %}
  AND
  {% condition amr_split_flat.amr_gene_filter_3 %} amr_split_flat.amrfinderplus_amr_genes {% endcondition %}
  AND
  {% condition amr_split_flat.amr_gene_filter_4 %} amr_split_flat.amrfinderplus_amr_genes {% endcondition %};;
  #AND ${drug_classes} <> "Other" AND ${subclass} <> "Other" ;;
}

explore: master {}

map_layer: counties_layer {
  file: "/maps/california_counties_topo.json"
  property_key: "NAME"
}
