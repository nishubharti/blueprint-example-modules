output "cos_id" {
  description = "ID of IBM COS instance"
  value       = ibm_resource_instance.cos_instance.*.guid[0]
}

output "cos_crn" {
  description = "CRN OF COS instance"
  value       = ibm_resource_instance.cos_instance.*.crn[0]
}