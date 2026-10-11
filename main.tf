resource "google_dialogflow_cx_environment" "dialogflow_cx_environments" {
  for_each = var.dialogflow_cx_environments

  display_name    = each.value.display_name
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  parent          = each.value.parent

  dynamic "version_configs" {
    for_each = each.value.version_configs
    content {
      version = version_configs.value.version
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

