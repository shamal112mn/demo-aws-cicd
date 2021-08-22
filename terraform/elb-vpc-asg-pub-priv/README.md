# vpc_and_ec2_architecture

Reference architecture for a highly-available, scalable,
fault-tolerant and resilient infrastructure on AWS with VPC and EC2

1. infrastructure folder for build VPC
2. platform folder to provision elb and asg



terraform init -backend-config="vpc-dev.config"
terraform plan -var-file="vpc-dev.tfvars"
 

terraform init -backend-config="backend-dev.config"
terraform plan -var-file="platform-dev.tfvars"


terraform init -backend-config="vpc-qa.config"
terraform plan -var-file="vpc-qa.tfvars"

terraform plan -var-file="vpc-dev.tfvars"

terraform plan -var-file="platform-dev.tfvars"



aws_launch_configuration.ec2_public_launch_configuration
data.aws_ami.launch_configuration_ami