resource "dns_cname_record" "cname_records" {
  for_each = var.cname_records

  cname = each.value.cname
  name  = each.value.name
  zone  = each.value.zone
  ttl   = each.value.ttl
}

