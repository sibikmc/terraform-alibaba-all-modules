# Ecs instance module

resource "alicloud_vpc" "vpc" {
  vpc_name = var.vpc_name
  cidr_block = var.cidr_block
  vpc_id = var.vpc_id
  tag = var.vpctags
  count = var.vpc_id != "" ? 0 : var.create ? 1 : 0
}

resource "alicloud_vswitch" "vswitch" {
  vswitch_name = var.vswitch_name
  cidr_block = var.vswitch_cidrs
  
  

}
resource "alicloud_instance" "ecs" {
  instance_name = var.instance_name
  instance_type = var.instance_type
  image_id = var.image_id
  system_disk_size = var.system_disk_size
  system_disk_category = var.system_disk_category
  instance_charge_type = var.instance_charge_type

 
}

resource "alicloud_security_group"  "security" {
  security_groups_ids = var.security_group_ids
  resource_group_id   = var.resource_group_id
  vpc_id = var.vpc_id
  security_group_name = var.security_group_name
}