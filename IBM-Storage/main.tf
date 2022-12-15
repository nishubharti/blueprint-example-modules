resource "random_id" "name" {
  byte_length = 5
}

resource "ibm_resource_instance" "cos_instance" {
  name              = var.cos_instance_name
  service           = "cloud-object-storage"
  plan              = var.cos_storage_plan
  location          = "global"
  resource_group_id = var.resource_group_id
  tags              = ["t1", "t2"]

}


resource "ibm_cos_bucket" "standard-ams03" {
  bucket_name          = "${var.cos_bucket_name}-${random_id.name.hex}"
  resource_instance_id = ibm_resource_instance.cos_instance.id
  single_site_location = var.cos_single_site_loc
  storage_class        = var.cos_storage_class
}

