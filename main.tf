module "vmware_linux_vm" {
  source            = "github.com/nehrman/terraform-vmware-linux"
  vmtemp            = "CentOS7-Template"
  instances         = "1"
  vmname            = "linux-vm"
  vmrp              = "jeromeRP"
  vlan              = "INTERNAL"
  data_disk         = "false"
  data_disk_size_gb = "10"
  dc                = "MYVWORLD"
  ds                = "vsanDatastore"
  ipaddress         = ["192.168.0.40"]
  ipv4submask       = "24"
  vmgateway         = "192.168.0.1"
  vmdns             = ["192.168.0.1"]
  tag_category      = "web"
  tag               = "web"
}