location               = "westus2"
address_space_start_ip = "10.50.0.0"
address_space_size     = 16
subnets_and_sizes = {
  AzureBastionSubnet = 24,
  private_endpoints  = 28,
  virtual_machines   = 24
}
tags = {
  type = "avm"
  env  = "demo"
}

