variable vsphere_user {
    type = string
    default = "jpapazian@vsphere.local"
}
variable vsphere_password {
    type = string
}
variable vsphere_server {
    type = string
    default = "vcsa.my-v-world.fr"
}
variable storage_policy_name {
    type = string
    default = "vSAN Default Storage Policy"
}

variable vmtemp {
    type = string
    description = "template to use for the VM"
}
variable instances {
    type = string
    description = "number of VM to launch"
}

variable vmname {
    type = string
    description = "name of the vm"
}

variable "vmnamesuffix" {
  description = "vmname suffix after numbered index coming from instance variable"
  default     = ""
}

variable vmrp {
    type = string
    description = "resource pool for the VM"
}

variable vlan {
    type = string
    description = "vlan name where the vm should be deployed"
}

variable "data_disk" {
  type        = string
  description = "Set to true to add a datadisk."
  default     = "false"
}

variable "data_disk_size_gb" {
  description = "Storage data disk size size"
  default     = 20
}

variable "cpu_number" {
  description = "number of CPU (core per CPU) for the VM"
  default     = 2
}

variable "ram_size" {
  description = "VM RAM size in megabytes"
  default     = 4096
}

variable "ipv4submask" {
  description = "ipv4 Subnet mask"
  default     = 24
}

variable "ipaddress" {
  description = "host(VM) IP address in list format, support more than one IP. Should correspond to number of instances"
  type        = list(string)
  default     = [""]
}

variable "vmdomain" {
  description = "default VM domain for linux guest customization"
  default     = "Development"
}

variable "dc" {
  description = "Name of the datacenter you want to deploy the VM to"
}

variable "vmrp" {
  description = "Cluster resource pool that VM will be deployed to. you use following to choose default pool in the cluster (esxi1) or (Cluster)/Resources"
}

variable "ds" {
  description = "Datastore to deploy the VM."
}

variable "vmfolder" {
  default = "Discovered virtual machine"
}

variable "vmgateway" {
  description = "VM gateway to set during provisioning"
  default     = ""
}

variable "vmdns" {
  type    = list(string)
  default = []
}

variable "tag_category" {
  description = "Used to name a tags' category on vCenter"
  default     = ""
}

variable "tag" {
  description = "Used to name a tag on vCenter"
  default     = ""
}