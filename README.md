# Simple IaC Service Deployment

Create terraform.tfvars file
```terraform
compartment_ocid   = ""
region           = ""
tenancy_ocid = ""
fingerprint = ""
service_id       = "All <REGION_CODE> Services in Oracle Services network"
source_image_ocid = ""
instance_shape = "VM.Standard.A1.Flex"
ssh_public_key = ""
private_key_path = ""
bucket_name = "DevOps SVC Bucket"
bucket_namespace = ""
```

OCI CLI Authentication
```bash
oci session authenticate
```

TF Plan
```bash
terraform plan
```

TF Apply
```bash
terraform apply
```

Store .tfstate
```bash
oci os object put -bn 'BUCKET_NAME' --file terraform.tfstate
```