output "dialogflow_cx_environments_id" {
  description = "Map of id values across all dialogflow_cx_environments, keyed the same as var.dialogflow_cx_environments except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_cx_environment.dialogflow_cx_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_cx_environments_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_cx_environments, keyed the same as var.dialogflow_cx_environments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_cx_environment.dialogflow_cx_environments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_cx_environments_description" {
  description = "Map of description values across all dialogflow_cx_environments, keyed the same as var.dialogflow_cx_environments except keys with no description are omitted"
  value       = { for k, v in google_dialogflow_cx_environment.dialogflow_cx_environments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dialogflow_cx_environments_display_name" {
  description = "Map of display_name values across all dialogflow_cx_environments, keyed the same as var.dialogflow_cx_environments except keys with no display_name are omitted"
  value       = { for k, v in google_dialogflow_cx_environment.dialogflow_cx_environments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dialogflow_cx_environments_name" {
  description = "Map of name values across all dialogflow_cx_environments, keyed the same as var.dialogflow_cx_environments except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_cx_environment.dialogflow_cx_environments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_cx_environments_parent" {
  description = "Map of parent values across all dialogflow_cx_environments, keyed the same as var.dialogflow_cx_environments except keys with no parent are omitted"
  value       = { for k, v in google_dialogflow_cx_environment.dialogflow_cx_environments : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "dialogflow_cx_environments_update_time" {
  description = "Map of update_time values across all dialogflow_cx_environments, keyed the same as var.dialogflow_cx_environments except keys with no update_time are omitted"
  value       = { for k, v in google_dialogflow_cx_environment.dialogflow_cx_environments : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "dialogflow_cx_environments_version_configs" {
  description = "Map of version_configs values across all dialogflow_cx_environments, keyed the same as var.dialogflow_cx_environments except keys with no version_configs are omitted"
  value       = { for k, v in google_dialogflow_cx_environment.dialogflow_cx_environments : k => v.version_configs if v.version_configs != null && length(v.version_configs) > 0 }
}

