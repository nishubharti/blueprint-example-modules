variable "resource_group_id" {
  description = "ID of the resource group."
  type        = string
}


variable "cos_instance_name" {
  description = "Name of the COS instane."
  type        = string
  default     = "demo-cos-workitem"
}

variable "cos_storage_class" {
  type        = string
  description = "storage_class"
  default     = "smart"
}

variable "cos_storage_plan" {
  type        = string
  description = "COS plan"
  default     = "standard"
}


variable "cos_single_site_loc" {
  type    = string
  default = "sjc04"
}

variable "cos_bucket_name" {
  type    = string
  default = "demo-cos-buck"
}
