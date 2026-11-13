variable "cname_records" {
  description = <<EOT
Map of cname_records, attributes below
Required:
    - cname
    - name
    - zone
Optional:
    - ttl
EOT

  type = map(object({
    cname = string
    name  = string
    zone  = string
    ttl   = optional(number)
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

