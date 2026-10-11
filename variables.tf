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
}

