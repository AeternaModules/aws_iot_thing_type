output "iot_thing_types_id" {
  description = "Map of id values across all iot_thing_types, keyed the same as var.iot_thing_types"
  value       = { for k, v in aws_iot_thing_type.iot_thing_types : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_thing_types_arn" {
  description = "Map of arn values across all iot_thing_types, keyed the same as var.iot_thing_types"
  value       = { for k, v in aws_iot_thing_type.iot_thing_types : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iot_thing_types_deprecated" {
  description = "Map of deprecated values across all iot_thing_types, keyed the same as var.iot_thing_types"
  value       = { for k, v in aws_iot_thing_type.iot_thing_types : k => v.deprecated if v.deprecated != null }
}
output "iot_thing_types_name" {
  description = "Map of name values across all iot_thing_types, keyed the same as var.iot_thing_types"
  value       = { for k, v in aws_iot_thing_type.iot_thing_types : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iot_thing_types_properties" {
  description = "Map of properties values across all iot_thing_types, keyed the same as var.iot_thing_types"
  value       = { for k, v in aws_iot_thing_type.iot_thing_types : k => one(v.properties) if v.properties != null && length(v.properties) > 0 }
}
output "iot_thing_types_region" {
  description = "Map of region values across all iot_thing_types, keyed the same as var.iot_thing_types"
  value       = { for k, v in aws_iot_thing_type.iot_thing_types : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_thing_types_tags" {
  description = "Map of tags values across all iot_thing_types, keyed the same as var.iot_thing_types"
  value       = { for k, v in aws_iot_thing_type.iot_thing_types : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iot_thing_types_tags_all" {
  description = "Map of tags_all values across all iot_thing_types, keyed the same as var.iot_thing_types"
  value       = { for k, v in aws_iot_thing_type.iot_thing_types : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

