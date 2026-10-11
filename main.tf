data "mongodbatlas_flex_snapshots" "flex_snapshots_lookup" {
  for_each = var.flex_snapshots_lookup

  name       = each.value.name
  project_id = each.value.project_id
}

