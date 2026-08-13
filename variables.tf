variable "iot_thing_types" {
  description = <<EOT
Map of iot_thing_types, attributes below
Required:
    - name
Optional:
    - deprecated
    - region
    - tags
    - tags_all
    - properties (block):
        - description (optional)
        - searchable_attributes (optional)
EOT

  type = map(object({
    name       = string
    deprecated = optional(bool)
    region     = optional(string)
    tags       = optional(map(string))
    tags_all   = optional(map(string))
    properties = optional(object({
      description           = optional(string)
      searchable_attributes = optional(set(string))
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

