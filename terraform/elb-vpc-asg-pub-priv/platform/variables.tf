variable "region" {
  default     = "us-east-1"
  description = "AWS Region"
}

variable "remote_state_bucket" {
  description = "Remote bucket for state file"
}

variable "remote_state_key" {
  default     = "layer1/dev-vpc.tfstate"
  description = "Remote state file to read"
}

variable "ec2_key_pair_name" {
  //default     = "azat-eskomac"
  default = "myEC2Keypair"
  description = "Key pair for connecting to launched EC2 instances"
}

variable "ec2_instance_type" {
  description = "EC2 Instance type to launch"
}

variable "ec2_min_instance_size" {
  description = "Minimum number of instances to launch in AutoScaling Group"
}

variable "ec2_max_instance_size" {
  description = "Maximum number of instances to launch in AutoScaling Group"
}

// variable "tag_production" {
//   default = "Production"
// }

variable "tag_webapp" {
  default = "WebApp"
}

variable "tag_backend" {
  default = "Backend"
}

variable "env" {
  description = "Environment variable"
  type = string
}

// variable "ami_id" {
//   description = "image  id"
//   default = ""
// }