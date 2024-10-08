
### ######### ###
### in_ami_id ###
### ######### ###

variable in_ami_id {

    description = "The ID of the amazon machine image to use as a template for raising the instances."
    type        = string
}


### ################ ###
### in_instance_type ###
### ################ ###

variable in_instance_type {

    description = "The intance type that defaults with 2 virtual CPUs, 4Gig of RAM and 24 credits an hour."
    default     = "t2.medium"
    type        = string
}


### ###################### ###
### in_instance_profile_id ###
### ###################### ###

variable in_instance_profile_id {

    description = "The ID of the profile giving the ec2 access to other AWS resources like S3, ECS and RDS."
    type        = string
}


### ############################## ###
### in_ssh_public_key ###
### ############################## ###

variable in_ssh_public_key {

    description = "The public key to ply into the ec2 instances raised by this launch configuration."
    type        = string
}


### ################################ ###
### in_user_data_script ###
### ################################ ###

variable in_user_data_script {

    description = "The user data compliant script to run within the ec2 instance right after it is created."
    default     = ""
    type        = string
}


### #################### ###
### in_minimum_instances ###
### #################### ###

variable in_minimum_instances {

    description = "The minimum number of instance to always have ready to handle requests defaulted at 1."
    type        = number
    default     = 3
}


### #################### ###
### in_maximum_instances ###
### #################### ###

variable in_maximum_instances {

    description = "The maximum number of instance that this auto scaling group will raise to handle your workload."
    type        = number
    default     = 7
}


### #################### ###
### in_desired_instances ###
### #################### ###

variable in_desired_instances {

    description = "The goldilocks instance count when your request levels are not to hot and not too cold."
    type        = number
    default     = 4
}


### #################### ###
### in_security_group_id ###
### #################### ###

variable in_security_group_id {
    description = "The ID of the security group that constrains the traffic to and from the raised ec2 instances."
    type        = string
}


### ########################## ###
### in_subnet_ids ###
### ########################## ###

variable "in_subnet_ids" {
  description = "IDs of subnets the network interfaces are attached to."
  type        = list(string)
  default     = []  # Default to an empty list
}

### ################ ###
### in_mandated_tags ###
### ################ ###

variable in_mandated_tags {

    description = "Optional tags unless your organization mandates that a set of given tags must be set."
    type        = map
    default     = { }
}


### ############ ###
### in_ecosystem ###
### ############ ###

variable in_ecosystem {
    description = "Creational stamp binding all infrastructure components created on behalf of this ecosystem instance."
    default     = "auto-scaling"
    type        = string
}


### ############ ###
### in_timestamp ###
### ############ ###

variable in_timestamp {
    description = "A timestamp for resource tags in the format ymmdd-hhmm like 80911-1435"
    default     = "TIMESTAMP"
    type        = string
}


### ############## ###
### in_description ###
### ############## ###

variable in_description {
    description = "Ubiquitous note detailing who, when, where and why for every infrastructure component."
    default     = "within the AWS cloud at this point in time."
    type        = string
}
