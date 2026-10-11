output "flex_snapshots_lookup_name" {
  description = "Map of name values across all flex_snapshots_lookup, keyed the same as var.flex_snapshots_lookup except keys with no name are omitted"
  value       = { for k, v in data.mongodbatlas_flex_snapshots.flex_snapshots_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "flex_snapshots_lookup_project_id" {
  description = "Map of project_id values across all flex_snapshots_lookup, keyed the same as var.flex_snapshots_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_flex_snapshots.flex_snapshots_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "flex_snapshots_lookup_results" {
  description = "Map of results values across all flex_snapshots_lookup, keyed the same as var.flex_snapshots_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_flex_snapshots.flex_snapshots_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

