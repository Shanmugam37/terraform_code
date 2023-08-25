# terraform_code

## i have written the code for (vpc,ec2,security_group,s3,load_balancer)

##USAGE
```hcl
module "vpc_basic" {
  source ="github.com/Shanmugam37/terraform_code.git"

  name = "All_source_tf_code"

  cidr = "10.0.0.0/16"
  public_subnet = "10.0.1.0/24"
}

```
# AWS VPC module for Terraform

A lightweight VPC module for Terraform.


