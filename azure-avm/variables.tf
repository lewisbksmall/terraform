variable "location" {
  type        = string
  description = "The location/region where the resources will be created"
}

variable "address_space_start_ip" {
  type        = string
  description = "The address space that is used the virtual network"
}

variable "address_space_size" {
  type        = number
  description = "The address space that is used the virtual network"
}

variable "subnets" {
  type = map(object({
    size                       = number      # Changed to number for subnet size
    has_nat_gateway            = bool        # Changed to bool type for true/false values
    has_network_security_group = bool        # Changed to bool type for true/false values
  }))
  description = "The subnets"
  default = {
    subnet1 = {
      size                       = 24
      has_nat_gateway            = true
      has_network_security_group = true
    },
    subnet2 = {
      size                       = 24
      has_nat_gateway            = true
      has_network_security_group = true
    }
  }
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources"
}
