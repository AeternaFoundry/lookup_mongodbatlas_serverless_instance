data "mongodbatlas_serverless_instance" "serverless_instance_lookup" {
  for_each = var.serverless_instance_lookup

  name                      = each.value.name
  project_id                = each.value.project_id
  auto_indexing             = each.value.auto_indexing
  continuous_backup_enabled = each.value.continuous_backup_enabled
  state_name                = each.value.state_name
}

