- dashboard: healthcare_associated_infections_dashboard
  title: Healthcare Associated Infections Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Qqb3VI03fBndqO2UMR0SPR
  elements:
  - title: Drug Classes - AMR Gene Categories
    name: Drug Classes - AMR Gene Categories
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: looker_grid
    fields: [amr_split_flat.specimen_count, amr_split_flat.amr_gene_categories, amr_split_flat.drug_classes]
    pivots: [amr_split_flat.drug_classes]
    sorts: [amr_split_flat.specimen_count desc 0]
    limit: 5000
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 11
    col: 0
    width: 12
    height: 11
  - title: Specimen Count - Collection Month
    name: Specimen Count - Collection Month
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: looker_column
    fields: [amr_split_flat.collection_month, amr_split_flat.specimen_count]
    fill_fields: [amr_split_flat.collection_month]
    sorts: [amr_split_flat.collection_month desc]
    limit: 5000
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 3
    col: 0
    width: 12
    height: 8
  - title: Specimen Count - Drug Class
    name: Specimen Count - Drug Class
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: looker_column
    fields: [amr_split_flat.specimen_count, amr_split_flat.drug_classes]
    sorts: [amr_split_flat.specimen_count desc 0]
    limit: 5000
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 32
    col: 0
    width: 12
    height: 7
  - title: Specimen Count - County
    name: Specimen Count - County
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: looker_map
    fields: [amr_split_flat.specimen_count, amr_split_flat.county]
    sorts: [amr_split_flat.specimen_count desc 0]
    limit: 5000
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 37
    map_longitude: -119
    map_zoom: 5
    map_value_scale_clamp_max: 5
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 3
    col: 12
    width: 12
    height: 8
  - title: New Tile
    name: New Tile
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: single_value
    fields: [amr_split_flat.specimen_count]
    limit: 5000
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Specimen Count
    series_types: {}
    defaults_version: 1
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 0
    col: 10
    width: 4
    height: 3
  - title: Gambit Predicted Taxon - Count
    name: Gambit Predicted Taxon - Count
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: looker_column
    fields: [amr_split_flat.gambit_predicted_taxon, amr_split_flat.specimen_count]
    sorts: [amr_split_flat.specimen_count desc 0]
    limit: 5000
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 32
    col: 12
    width: 12
    height: 7
  - title: Drug Classes - Collection Month
    name: Drug Classes - Collection Month
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: looker_line
    fields: [amr_split_flat.specimen_count, amr_split_flat.collection_month, amr_split_flat.drug_classes]
    pivots: [amr_split_flat.drug_classes]
    fill_fields: [amr_split_flat.collection_month]
    sorts: [amr_split_flat.drug_classes, amr_split_flat.collection_month desc]
    limit: 5000
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 11
    col: 12
    width: 12
    height: 11
  - title: County - AMR Gene Categories
    name: County - AMR Gene Categories
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: looker_column
    fields: [amr_split_flat.specimen_count, amr_split_flat.county, amr_split_flat.amr_gene_categories]
    pivots: [amr_split_flat.amr_gene_categories]
    sorts: [amr_split_flat.amr_gene_categories, amr_split_flat.specimen_count desc
        0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: aac - amr_split_flat.specimen_count,
            id: aac - amr_split_flat.specimen_count, name: aac}, {axisId: aad - amr_split_flat.specimen_count,
            id: aad - amr_split_flat.specimen_count, name: aad}, {axisId: aba - amr_split_flat.specimen_count,
            id: aba - amr_split_flat.specimen_count, name: aba}, {axisId: acr - amr_split_flat.specimen_count,
            id: acr - amr_split_flat.specimen_count, name: acr}, {axisId: ade - amr_split_flat.specimen_count,
            id: ade - amr_split_flat.specimen_count, name: ade}, {axisId: amv - amr_split_flat.specimen_count,
            id: amv - amr_split_flat.specimen_count, name: amv}, {axisId: ant - amr_split_flat.specimen_count,
            id: ant - amr_split_flat.specimen_count, name: ant}, {axisId: aph - amr_split_flat.specimen_count,
            id: aph - amr_split_flat.specimen_count, name: aph}, {axisId: arm - amr_split_flat.specimen_count,
            id: arm - amr_split_flat.specimen_count, name: arm}, {axisId: arr - amr_split_flat.specimen_count,
            id: arr - amr_split_flat.specimen_count, name: arr}, {axisId: blaACT -
              amr_split_flat.specimen_count, id: blaACT - amr_split_flat.specimen_count,
            name: blaACT}, {axisId: blaADC - amr_split_flat.specimen_count, id: blaADC
              - amr_split_flat.specimen_count, name: blaADC}, {axisId: blaAXC - amr_split_flat.specimen_count,
            id: blaAXC - amr_split_flat.specimen_count, name: blaAXC}, {axisId: blaCARB
              - amr_split_flat.specimen_count, id: blaCARB - amr_split_flat.specimen_count,
            name: blaCARB}, {axisId: blaCKO - amr_split_flat.specimen_count, id: blaCKO
              - amr_split_flat.specimen_count, name: blaCKO}, {axisId: blaCMY - amr_split_flat.specimen_count,
            id: blaCMY - amr_split_flat.specimen_count, name: blaCMY}, {axisId: blaCTX
              - amr_split_flat.specimen_count, id: blaCTX - amr_split_flat.specimen_count,
            name: blaCTX}, {axisId: blaDHA - amr_split_flat.specimen_count, id: blaDHA
              - amr_split_flat.specimen_count, name: blaDHA}, {axisId: blaEC - amr_split_flat.specimen_count,
            id: blaEC - amr_split_flat.specimen_count, name: blaEC}, {axisId: blaI
              - amr_split_flat.specimen_count, id: blaI - amr_split_flat.specimen_count,
            name: blaI}, {axisId: blaKPC - amr_split_flat.specimen_count, id: blaKPC
              - amr_split_flat.specimen_count, name: blaKPC}, {axisId: blaL1 - amr_split_flat.specimen_count,
            id: blaL1 - amr_split_flat.specimen_count, name: blaL1}, {axisId: blaNDM
              - amr_split_flat.specimen_count, id: blaNDM - amr_split_flat.specimen_count,
            name: blaNDM}, {axisId: blaOXA - amr_split_flat.specimen_count, id: blaOXA
              - amr_split_flat.specimen_count, name: blaOXA}, {axisId: blaOXY - amr_split_flat.specimen_count,
            id: blaOXY - amr_split_flat.specimen_count, name: blaOXY}, {axisId: blaPDC
              - amr_split_flat.specimen_count, id: blaPDC - amr_split_flat.specimen_count,
            name: blaPDC}, {axisId: blaPER - amr_split_flat.specimen_count, id: blaPER
              - amr_split_flat.specimen_count, name: blaPER}, {axisId: blaPLA - amr_split_flat.specimen_count,
            id: blaPLA - amr_split_flat.specimen_count, name: blaPLA}, {axisId: blaPME
              - amr_split_flat.specimen_count, id: blaPME - amr_split_flat.specimen_count,
            name: blaPME}, {axisId: blaR - amr_split_flat.specimen_count, id: blaR
              - amr_split_flat.specimen_count, name: blaR}, {axisId: blaSFO - amr_split_flat.specimen_count,
            id: blaSFO - amr_split_flat.specimen_count, name: blaSFO}, {axisId: blaSHV
              - amr_split_flat.specimen_count, id: blaSHV - amr_split_flat.specimen_count,
            name: blaSHV}, {axisId: blaSME - amr_split_flat.specimen_count, id: blaSME
              - amr_split_flat.specimen_count, name: blaSME}, {axisId: blaSRT - amr_split_flat.specimen_count,
            id: blaSRT - amr_split_flat.specimen_count, name: blaSRT}, {axisId: blaTEM
              - amr_split_flat.specimen_count, id: blaTEM - amr_split_flat.specimen_count,
            name: blaTEM}, {axisId: blaVEB - amr_split_flat.specimen_count, id: blaVEB
              - amr_split_flat.specimen_count, name: blaVEB}, {axisId: blaVIM - amr_split_flat.specimen_count,
            id: blaVIM - amr_split_flat.specimen_count, name: blaVIM}, {axisId: blaZ
              - amr_split_flat.specimen_count, id: blaZ - amr_split_flat.specimen_count,
            name: blaZ}, {axisId: ble - amr_split_flat.specimen_count, id: ble - amr_split_flat.specimen_count,
            name: ble}, {axisId: cat - amr_split_flat.specimen_count, id: cat - amr_split_flat.specimen_count,
            name: cat}, {axisId: cml - amr_split_flat.specimen_count, id: cml - amr_split_flat.specimen_count,
            name: cml}, {axisId: crp - amr_split_flat.specimen_count, id: crp - amr_split_flat.specimen_count,
            name: crp}, {axisId: dfr - amr_split_flat.specimen_count, id: dfr - amr_split_flat.specimen_count,
            name: dfr}, {axisId: emr - amr_split_flat.specimen_count, id: emr - amr_split_flat.specimen_count,
            name: emr}, {axisId: ere - amr_split_flat.specimen_count, id: ere - amr_split_flat.specimen_count,
            name: ere}, {axisId: erm - amr_split_flat.specimen_count, id: erm - amr_split_flat.specimen_count,
            name: erm}, {axisId: floR - amr_split_flat.specimen_count, id: floR -
              amr_split_flat.specimen_count, name: floR}, {axisId: fos - amr_split_flat.specimen_count,
            id: fos - amr_split_flat.specimen_count, name: fos}, {axisId: kde - amr_split_flat.specimen_count,
            id: kde - amr_split_flat.specimen_count, name: kde}, {axisId: lsa - amr_split_flat.specimen_count,
            id: lsa - amr_split_flat.specimen_count, name: lsa}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 22
    col: 0
    width: 24
    height: 10
  - title: Table View
    name: Table View
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: looker_grid
    fields: [amr_split_flat.specimen_id, amr_split_flat.collection_date, amr_split_flat.county,
      amr_split_flat.amrfinderplus_amr_genes, amr_split_flat.amrfinderplus_amr_classes,
      amr_split_flat.gambit_predicted_taxon, amr_split_flat.specimen_count, amr_split_flat.ts_mlst_predicted_st]
    sorts: [amr_split_flat.collection_date desc]
    limit: 5000
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [amr_split_flat.specimen_count]
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 59
    col: 0
    width: 24
    height: 9
  - title: Subclasses- Drug Class
    name: Subclasses- Drug Class
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: looker_column
    fields: [amr_split_flat.specimen_count, amr_split_flat.subclass, amr_split_flat.drug_classes]
    pivots: [amr_split_flat.subclass]
    sorts: [amr_split_flat.subclass, amr_split_flat.specimen_count desc 0]
    limit: 5000
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: AMINOGLYCOSIDE - amr_split_flat.specimen_count,
            id: AMINOGLYCOSIDE - amr_split_flat.specimen_count, name: AMINOGLYCOSIDE},
          {axisId: AMINOGLYCOSIDE/QUINOLONE - amr_split_flat.specimen_count, id: AMINOGLYCOSIDE/QUINOLONE
              - amr_split_flat.specimen_count, name: AMINOGLYCOSIDE/QUINOLONE}, {
            axisId: BETA-LACTAM - amr_split_flat.specimen_count, id: BETA-LACTAM -
              amr_split_flat.specimen_count, name: BETA-LACTAM}, {axisId: BLEOMYCIN
              - amr_split_flat.specimen_count, id: BLEOMYCIN - amr_split_flat.specimen_count,
            name: BLEOMYCIN}, {axisId: COLISTIN - amr_split_flat.specimen_count, id: COLISTIN
              - amr_split_flat.specimen_count, name: COLISTIN}, {axisId: EFFLUX -
              amr_split_flat.specimen_count, id: EFFLUX - amr_split_flat.specimen_count,
            name: EFFLUX}, {axisId: FLUOROQUINOLONE - amr_split_flat.specimen_count,
            id: FLUOROQUINOLONE - amr_split_flat.specimen_count, name: FLUOROQUINOLONE},
          {axisId: FOSFOMYCIN - amr_split_flat.specimen_count, id: FOSFOMYCIN - amr_split_flat.specimen_count,
            name: FOSFOMYCIN}, {axisId: LINCOSAMIDE/STREPTOGRAMIN - amr_split_flat.specimen_count,
            id: LINCOSAMIDE/STREPTOGRAMIN - amr_split_flat.specimen_count, name: LINCOSAMIDE/STREPTOGRAMIN},
          {axisId: MACROLIDE - amr_split_flat.specimen_count, id: MACROLIDE - amr_split_flat.specimen_count,
            name: MACROLIDE}, {axisId: PHENICOL - amr_split_flat.specimen_count, id: PHENICOL
              - amr_split_flat.specimen_count, name: PHENICOL}, {axisId: PHENICOL/QUINOLONE
              - amr_split_flat.specimen_count, id: PHENICOL/QUINOLONE - amr_split_flat.specimen_count,
            name: PHENICOL/QUINOLONE}, {axisId: QUINOLONE - amr_split_flat.specimen_count,
            id: QUINOLONE - amr_split_flat.specimen_count, name: QUINOLONE}, {axisId: RIFAMYCIN
              - amr_split_flat.specimen_count, id: RIFAMYCIN - amr_split_flat.specimen_count,
            name: RIFAMYCIN}, {axisId: STREPTOTHRICIN - amr_split_flat.specimen_count,
            id: STREPTOTHRICIN - amr_split_flat.specimen_count, name: STREPTOTHRICIN},
          {axisId: SULFONAMIDE - amr_split_flat.specimen_count, id: SULFONAMIDE -
              amr_split_flat.specimen_count, name: SULFONAMIDE}, {axisId: TETRACYCLINE
              - amr_split_flat.specimen_count, id: TETRACYCLINE - amr_split_flat.specimen_count,
            name: TETRACYCLINE}, {axisId: TRIMETHOPRIM - amr_split_flat.specimen_count,
            id: TRIMETHOPRIM - amr_split_flat.specimen_count, name: TRIMETHOPRIM}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 39
    col: 0
    width: 24
    height: 10
  - title: County - Subclasses
    name: County - Subclasses
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    type: looker_column
    fields: [amr_split_flat.county, amr_split_flat.specimen_count, amr_split_flat.subclass]
    pivots: [amr_split_flat.subclass]
    sorts: [amr_split_flat.subclass, amr_split_flat.specimen_count desc 0]
    limit: 5000
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: AMIKACIN/KANAMYCIN -
              amr_split_flat.specimen_count, id: AMIKACIN/KANAMYCIN - amr_split_flat.specimen_count,
            name: AMIKACIN/KANAMYCIN}, {axisId: AMIKACIN/KANAMYCIN/QUINOLONE/TOBRAMYCIN
              - amr_split_flat.specimen_count, id: AMIKACIN/KANAMYCIN/QUINOLONE/TOBRAMYCIN
              - amr_split_flat.specimen_count, name: AMIKACIN/KANAMYCIN/QUINOLONE/TOBRAMYCIN},
          {axisId: AMIKACIN/KANAMYCIN/TOBRAMYCIN - amr_split_flat.specimen_count,
            id: AMIKACIN/KANAMYCIN/TOBRAMYCIN - amr_split_flat.specimen_count, name: AMIKACIN/KANAMYCIN/TOBRAMYCIN},
          {axisId: AMINOGLYCOSIDE - amr_split_flat.specimen_count, id: AMINOGLYCOSIDE
              - amr_split_flat.specimen_count, name: AMINOGLYCOSIDE}, {axisId: BETA-LACTAM
              - amr_split_flat.specimen_count, id: BETA-LACTAM - amr_split_flat.specimen_count,
            name: BETA-LACTAM}, {axisId: BLEOMYCIN - amr_split_flat.specimen_count,
            id: BLEOMYCIN - amr_split_flat.specimen_count, name: BLEOMYCIN}, {axisId: CARBAPENEM
              - amr_split_flat.specimen_count, id: CARBAPENEM - amr_split_flat.specimen_count,
            name: CARBAPENEM}, {axisId: CEPHALOSPORIN - amr_split_flat.specimen_count,
            id: CEPHALOSPORIN - amr_split_flat.specimen_count, name: CEPHALOSPORIN},
          {axisId: CHLORAMPHENICOL - amr_split_flat.specimen_count, id: CHLORAMPHENICOL
              - amr_split_flat.specimen_count, name: CHLORAMPHENICOL}, {axisId: CHLORAMPHENICOL/FLORFENICOL
              - amr_split_flat.specimen_count, id: CHLORAMPHENICOL/FLORFENICOL - amr_split_flat.specimen_count,
            name: CHLORAMPHENICOL/FLORFENICOL}, {axisId: COLISTIN - amr_split_flat.specimen_count,
            id: COLISTIN - amr_split_flat.specimen_count, name: COLISTIN}, {axisId: EFFLUX
              - amr_split_flat.specimen_count, id: EFFLUX - amr_split_flat.specimen_count,
            name: EFFLUX}, {axisId: FLUOROQUINOLONE - amr_split_flat.specimen_count,
            id: FLUOROQUINOLONE - amr_split_flat.specimen_count, name: FLUOROQUINOLONE},
          {axisId: FOSFOMYCIN - amr_split_flat.specimen_count, id: FOSFOMYCIN - amr_split_flat.specimen_count,
            name: FOSFOMYCIN}, {axisId: GENTAMICIN - amr_split_flat.specimen_count,
            id: GENTAMICIN - amr_split_flat.specimen_count, name: GENTAMICIN}, {axisId: GENTAMICIN/KANAMYCIN/TOBRAMYCIN
              - amr_split_flat.specimen_count, id: GENTAMICIN/KANAMYCIN/TOBRAMYCIN
              - amr_split_flat.specimen_count, name: GENTAMICIN/KANAMYCIN/TOBRAMYCIN},
          {axisId: KANAMYCIN - amr_split_flat.specimen_count, id: KANAMYCIN - amr_split_flat.specimen_count,
            name: KANAMYCIN}, {axisId: LINCOSAMIDE/STREPTOGRAMIN - amr_split_flat.specimen_count,
            id: LINCOSAMIDE/STREPTOGRAMIN - amr_split_flat.specimen_count, name: LINCOSAMIDE/STREPTOGRAMIN},
          {axisId: MACROLIDE - amr_split_flat.specimen_count, id: MACROLIDE - amr_split_flat.specimen_count,
            name: MACROLIDE}, {axisId: METHICILLIN - amr_split_flat.specimen_count,
            id: METHICILLIN - amr_split_flat.specimen_count, name: METHICILLIN}, {
            axisId: PHENICOL/QUINOLONE - amr_split_flat.specimen_count, id: PHENICOL/QUINOLONE
              - amr_split_flat.specimen_count, name: PHENICOL/QUINOLONE}, {axisId: QUINOLONE
              - amr_split_flat.specimen_count, id: QUINOLONE - amr_split_flat.specimen_count,
            name: QUINOLONE}, {axisId: RIFAMYCIN - amr_split_flat.specimen_count,
            id: RIFAMYCIN - amr_split_flat.specimen_count, name: RIFAMYCIN}, {axisId: SPECTINOMYCIN
              - amr_split_flat.specimen_count, id: SPECTINOMYCIN - amr_split_flat.specimen_count,
            name: SPECTINOMYCIN}, {axisId: SPECTINOMYCIN/STREPTOMYCIN - amr_split_flat.specimen_count,
            id: SPECTINOMYCIN/STREPTOMYCIN - amr_split_flat.specimen_count, name: SPECTINOMYCIN/STREPTOMYCIN},
          {axisId: STREPTOMYCIN - amr_split_flat.specimen_count, id: STREPTOMYCIN
              - amr_split_flat.specimen_count, name: STREPTOMYCIN}, {axisId: STREPTOTHRICIN
              - amr_split_flat.specimen_count, id: STREPTOTHRICIN - amr_split_flat.specimen_count,
            name: STREPTOTHRICIN}, {axisId: SULFONAMIDE - amr_split_flat.specimen_count,
            id: SULFONAMIDE - amr_split_flat.specimen_count, name: SULFONAMIDE}, {
            axisId: TETRACYCLINE - amr_split_flat.specimen_count, id: TETRACYCLINE
              - amr_split_flat.specimen_count, name: TETRACYCLINE}, {axisId: TOBRAMYCIN
              - amr_split_flat.specimen_count, id: TOBRAMYCIN - amr_split_flat.specimen_count,
            name: TOBRAMYCIN}, {axisId: TRIMETHOPRIM - amr_split_flat.specimen_count,
            id: TRIMETHOPRIM - amr_split_flat.specimen_count, name: TRIMETHOPRIM}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Collection Date: amr_split_flat.collection_date
      County: amr_split_flat.county
      Gambit Predicted Taxon: amr_split_flat.gambit_predicted_taxon
      Specimen ID: amr_split_flat.specimen_id
      Drug Classes: amr_split_flat.drug_classes
      Subclass: amr_split_flat.subclass
      Amr Genes: amr_split_flat.amr_genes
      Ts Mlst Predicted St: amr_split_flat.ts_mlst_predicted_st
    row: 49
    col: 0
    width: 24
    height: 10
  filters:
  - name: Amr Genes
    title: Amr Genes
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    listens_to_filters: []
    field: amr_split_flat.amr_genes
  - name: County
    title: County
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    listens_to_filters: []
    field: amr_split_flat.county
  - name: Drug Classes
    title: Drug Classes
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    listens_to_filters: []
    field: amr_split_flat.drug_classes
  - name: Subclass
    title: Subclass
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    listens_to_filters: []
    field: amr_split_flat.subclass
  - name: Gambit Predicted Taxon
    title: Gambit Predicted Taxon
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    listens_to_filters: []
    field: amr_split_flat.gambit_predicted_taxon
  - name: Specimen ID
    title: Specimen ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    listens_to_filters: []
    field: amr_split_flat.specimen_id
  - name: Collection Date
    title: Collection Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    listens_to_filters: []
    field: amr_split_flat.collection_date
  - name: Ts Mlst Predicted St
    title: Ts Mlst Predicted St
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hospital_acquired_infections_dashboard
    explore: amr_split_flat
    listens_to_filters: []
    field: amr_split_flat.ts_mlst_predicted_st
