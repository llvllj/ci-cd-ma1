variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "myResourceGroup"
}

variable "location" {
  description = "The location of the resources"
  default     = "West US"
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  default     = "myVNet"
}

variable "subnet_name" {
  description = "The name of the subnet"
  default     = "mySubnet"
}

variable "network_security_group_name" {
  description = "The name of the network security group"
  default     = "myNSG"
}
