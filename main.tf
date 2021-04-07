module "vmware_linux_vm" {
  source            = "github.com/nehrman/terraform-vmware-linux"
  vmtemp            = var.vmtemp
  instances         = var.instances
  vmname            = var.vmname
  vmrp              = var.vmrp
  vlan              = var.vlan
  data_disk         = var.data_disk
  data_disk_size_gb = var.data_disk_size_gb
  dc                = var.dc
  ds                = var.ds
  ipaddress         = var.ipaddress
  ipv4submask       = var.ipv4submask
  vmgateway         = var.vmgateway
  vmdns             = var.vmdns
  tag_category      = var.tag_category
  tag               = var.tag
  storage_policy_name = var.storage_policy_name
  cpu_number        = var.cpu_number
  ram_size          = var.ram_size
}