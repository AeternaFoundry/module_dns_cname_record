output "cname_records_id" {
  description = "Map of id values across all cname_records, keyed the same as var.cname_records"
  value       = { for k, v in dns_cname_record.cname_records : k => v.id }
}
output "cname_records_cname" {
  description = "Map of cname values across all cname_records, keyed the same as var.cname_records"
  value       = { for k, v in dns_cname_record.cname_records : k => v.cname }
}
output "cname_records_name" {
  description = "Map of name values across all cname_records, keyed the same as var.cname_records"
  value       = { for k, v in dns_cname_record.cname_records : k => v.name }
}
output "cname_records_ttl" {
  description = "Map of ttl values across all cname_records, keyed the same as var.cname_records"
  value       = { for k, v in dns_cname_record.cname_records : k => v.ttl }
}
output "cname_records_zone" {
  description = "Map of zone values across all cname_records, keyed the same as var.cname_records"
  value       = { for k, v in dns_cname_record.cname_records : k => v.zone }
}

