terragrunt = {
  # Configure Terragrunt to automatically store tfstate files in an S3 bucket
  remote_state {
    backend = "s3"
    config {
      encrypt = "true"
      bucket  = "example-com-example-dev-terraform"
      key     = "bastion.tfstate"
      region  = "us-east-1"
    }
  }
}

/*
* aws vars for Terraform
*/
svc_name = "bastion"

aws_s3_prefix           = "example-com"
aws_account             = "example-dev"  # AWS credentials profile name
aws_profile             = "example-dev"
aws_region              = "us-east-1"

asg_min_size            = 1
asg_max_size            = 1
asg_desired_capacity    = 1

subnet_type = "public"

security_group_service_ingress = {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_block = "0.0.0.0/0"
}

# We control what this bastion is able to tack to from here.
security_group_access = ["public", "private"]
security_group_default_ingress = {
  from_port             = 22
  to_port               = 22
  protocol              = "tcp"
}

