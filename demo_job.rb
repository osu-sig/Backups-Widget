bytes_in_gibibyte = 1073741824
capacity_gb = 65265.3
used_gb = 30022.0

# Convert everything to bytes so our helpers work properly.
series = [
  { values: [ { label: "Capacity", value: used_gb * bytes_in_gibibyte } ],
    max_value: capacity_gb * bytes_in_gibibyte }
]

items = [
  { label: "Space Savings", value: "89.2%"},
  { label: "Job Failures", value: 3 }
]

send_event('demo_2', series: series.to_json, items: items)




used_capacity_gb = 27
total_capacity_gb = 57.1
used_performance_gb = 8
total_performance_gb = 13.0

series = [
  { values: [ { label: "Capacity", value: used_capacity_gb * bytes_in_gibibyte } ],
    max_value: total_capacity_gb * bytes_in_gibibyte },
  { values: [ { label: "Performance", value: used_performance_gb * bytes_in_gibibyte } ],
    max_value: total_performance_gb * bytes_in_gibibyte }
]

items = [
  { label: "Compression", value: "12%" }
]

send_event('demo_1', series: series.to_json, items: items)
