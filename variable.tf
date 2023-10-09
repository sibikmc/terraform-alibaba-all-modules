# vpc variables 
variable "create" {
  description = "to create vpc"
  type        = bool
  default     = true
  
}

variable "vpc_name" {
  description = "it will create a vpc_name default TF-VPC"
  type        = string
  default     = ""
  
}

variable "cidr_block" {
  description = "to create vpc cidr block"
  type        = string
  default     = ""
  
}
variable "vpc_id" {
  description = "to create vpc_id"
  type        = string
  default     = ""
  
}

variable "vpctags" {
  description = "A map of tags to apply to the VPC."
  type        = map(string)
}

# vswitch variables

variable "vswitch_cidrs" {
  description = "List of cidr blocks used to launch several new vswitches"
  type        = list(string)
  default     = []
}

variable "vswitch_name" {
  description = "To create vswitch name "
  type        = string
  default     = ""
}





# Ecs instance variables 

variable "number_of_instances" {
  description = "The number of instance will be created"
  type        = string
  default     = "1"
 
}

variable "instance_name" {
  description = "INSTANCE NAME "
  type        = string
  default     = ""
  
}

variable "image_id" {
  description = "The instance image id"
  type        = string
  default     = ""
 
}
variable "instance_type" {
description = "The instance type to lauch the instance"
  type        = string
  default     = ""
  
}
variable "system_disk_size_category" {
description = "The instance of the system disk size category"
  type        = string
  default     = "cloud_efficiency"
  
}
variable "system_disk_size" {
description = "The instance of the system disk size "
  type        = number
  default     = 40
  
}
variable "instance_charge_type" {
description = "The instance of the charge type "
  type        = string
  default     = ""
  
}
variable "internet_charge_type" {
  description = "The internet charge type of instance. Choices are 'PayByTraffic' and 'PayByBandwidth'."
  type        = string
  default     = "PayByTraffic"
}
variable "internet_max_bandwidth_out" {
  description = "The maximum internet out bandwidth of instance."
  type        = number
  default     = 5
}
variable "subscription" {
  description = "A mapping of fields for Prepaid ECS instances created. "
  type        = map(string)
  default = {
    period             = 1
    period_unit        = "Month"
    renewal_status     = "Normal"
    auto_renew_period  = 1
    include_data_disks = true
  }
}

# Security group variables


variable "security_group_ids" {
  description = "To create the security group id."
  type        = string
  default     = ""
}
variable "security_group_type" {
  description = "The type of the security group. Valid values: 'normal'(basic security group.), 'enterprise'(advanced security group For more information.). Default to 'normal'."
  type        = string
  default     = "normal"
}

variable "security_group_name" {
  description = "it create a security group name."
  type        = string
  default     = ""
}