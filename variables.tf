variable "tenancy_ocid" {
  description = "OCID from your tenancy page"
  type        = string
}

variable "compartment_ocid" {
  description = "OCID from your working compartment"
  type        = string
}
variable "region" {
  description = "region where you have OCI tenancy"
  type        = string
  default     = "us-phoenix-1"
}

variable "fingerprint" {
    description = "OCI User Auth fingerprint"
}

variable "service_id" {
  type        = string
  description = "The OCID of the Service"
}

variable "instance_shape" {
  default = "VM.Standard.A1.Flex" # Or VM.Standard.E2.1.Micro
}

variable "instance_ocpus" { default = 1 }

variable "instance_shape_config_memory_in_gbs" { default = 6 }

data "oci_identity_availability_domain" "ad" {
  compartment_id = var.compartment_ocid
  ad_number      = 1
}

variable "source_image_ocid" {
  type = string
  description = "The source image OCID of the Compute instance"
}

variable "ssh_public_key" {
  description = "The file path to your local public ssh key"
}

variable "bucket_name" {
  description = "The name of Object Storage Bucket"
}

variable "bucket_namespace" {
  description = "The namespace of Object Storage Bucket"
}

variable "private_key_path" {
  description = "The file path to your local private ssh key"
}