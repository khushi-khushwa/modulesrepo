rg_variable = {
  rg1 = {
    name     = "rg-tinki"
    location = "japaneast"
  }
}

vnet-khushi = {
  vnet1 = {
    name                = "vnet_khushi1"
    location            = "japaneast"
    resource_group_name = "rg-tinki"
    address_space       = ["10.0.0.0/21"]
  }
}

khushi_sub = {
  subnet1 = {
    name                 = "frontend_subnet"
    resource_group_name  = "rg-tinki"
    virtual_network_name = "vnet_khushi1"
    address_prefixes     = ["10.0.0.0/24"]
  }
  subnet2 = {
    name                 = "backend_subnet"
    resource_group_name  = "rg-tinki"
    virtual_network_name = "vnet_khushi1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet_bastion = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-tinki"
    virtual_network_name = "vnet_khushi1"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet_appgw = {
    name                 = "appgw_subnet"
    resource_group_name  = "rg-tinki"
    virtual_network_name = "vnet_khushi1"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

network_interface = {
  nic1 = {
    name                 = "frontend-vm-nic"
    location             = "japaneast"
    resource_group_name  = "rg-tinki"
    subnet_name          = "frontend_subnet"
    virtual_network_name = "vnet_khushi1"
  }
  nic2 = {
    name                 = "backend-vm-nic"
    location             = "japaneast"
    resource_group_name  = "rg-tinki"
    subnet_name          = "backend_subnet"
    virtual_network_name = "vnet_khushi1"
  }
}

public_ips = {
  pip_bastion = {
    public_ips_name     = "pip-bastion"
    resource_group_name = "rg-tinki"
    location            = "japaneast"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
  pip_appgw = {
    public_ips_name     = "pip-appgw"
    resource_group_name = "rg-tinki"
    location            = "japaneast"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}

# blob_storage = {
#   storage_name             = "khushistore"
#   resource_group_name      = "rg-tinki"
#   location                 = "japaneast"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }

vms = {
  vms1 = {
    name                   = "vms1"
    location               = "japaneast"
    resource_group_name    = "rg-tinki"
    virtual_network_name   = "vnet_khushi1"
    size                   = "Standard_B1s"
    admin_username         = "adminuser"
    admin_password         = "Khushi@12345"
    network_interface_name = "frontend-vm-nic"
    api_key                = "sk_test_1234567890abcdef1234567890"
  }
  vms2 = {
    name                   = "vms2"
    location               = "japaneast"
    resource_group_name    = "rg-tinki"
    size                   = "Standard_B1s"
    admin_username         = "adminuser"
    admin_password         = "Khushi@12345"
    virtual_network_name   = "vnet_khushi1"
    network_interface_name = "backend-vm-nic"
  }
}

bastions = {
  bastion1 = {
    name                 = "bastion-khushi"
    location             = "japaneast"
    resource_group_name  = "rg-tinki"
    virtual_network_name = "vnet_khushi1"
    subnet_name          = "AzureBastionSubnet"
    pip_name             = "pip-bastion"
  }
}

app_gateways = {
  appgw1 = {
    name                 = "appgw-khushi"
    location             = "japaneast"
    resource_group_name  = "rg-tinki"
    virtual_network_name = "vnet_khushi1"
    subnet_name          = "appgw_subnet"
    pip_name             = "pip-appgw"
    sku_name             = "Standard_v2"
    sku_tier             = "Standard_v2"
    capacity             = 2
  }
}