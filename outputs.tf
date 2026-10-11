output "cname_records_id" {
  description = "Map of id values across all cname_records, keyed the same as var.cname_records except keys with no id are omitted"
  value       = { for k, v in dns_cname_record.cname_records : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cname_records_cname" {
  description = "Map of cname values across all cname_records, keyed the same as var.cname_records except keys with no cname are omitted"
  value       = { for k, v in dns_cname_record.cname_records : k => v.cname if v.cname != null && length(v.cname) > 0 }
}
output "cname_records_name" {
  description = "Map of name values across all cname_records, keyed the same as var.cname_records except keys with no name are omitted"
  value       = { for k, v in dns_cname_record.cname_records : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cname_records_ttl" {
  description = "Map of ttl values across all cname_records, keyed the same as var.cname_records except keys with no ttl are omitted"
  value       = { for k, v in dns_cname_record.cname_records : k => v.ttl if v.ttl != null }
}
output "cname_records_zone" {
  description = "Map of zone values across all cname_records, keyed the same as var.cname_records except keys with no zone are omitted"
  value       = { for k, v in dns_cname_record.cname_records : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

