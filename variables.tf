variable "flex_snapshots_lookup" {
  description = <<EOT
Map of flex_snapshots_lookup, attributes below
Required:
    - name
    - project_id
EOT

  type = map(object({
    name       = string
    project_id = string
  }))
}

