# terraform-s3-hosting
Hosting a Secure Static Website on AWS S3 using Terraform


How to Run

```
$ export export TF_VAR_access_key="" && export TF_VAR_secret_key="" && terraform apply -var-file terraform-dev.tfvars
```