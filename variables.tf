variable "vnet_name" {
  description = "Name of the VNet"
  type        = string
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "subnets" {
    description = "A map of subnets to their address prefixes"
    type        = map(string)
}