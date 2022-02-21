# terraform-s3-hosting
Hosting a Secure Static Website on AWS S3 using Terraform


How to Run

```
$ export TF_VAR_region="us-west-2" TF_VAR_access_key="xxxxxxxxxxxxx" && export TF_VAR_secret_key="xxxxxxxxxxxxxx" && terraform apply -var-file terraform-dev.tfvars
```
