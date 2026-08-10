module "azurerm_resource_group" {
   source = "../../modules/azurerm_rg"
   rg_variable = var.rg_variable

}
# module "azurerm_storage_account" {
#    depends_on = [ module.azurerm_resource_group ]
#   source = "../../modules/storage_account"
#   blob_storage = var.blob_storage
# }
module "azurerm_virtual_network" {
    depends_on = [ module.azurerm_resource_group ]
   source = "../../modules/azurerm_vnet"
vnet-khushi=var.vnet-khushi
}

module "azurerm_subnet" {
    depends_on = [ module.azurerm_virtual_network ]
   source = "../../modules/azurerm_subnet"
khushi_sub=var.khushi_sub
}

module "azurerm_public_ip" {
     depends_on = [module.azurerm_subnet]
  source = "../../modules/azurerm_public"
  public_ips = var.public_ips
}

module "azurerm_network_interface" {
     depends_on = [
    module.azurerm_subnet,
    module.azurerm_public_ip
  ]
   source = "../../modules/azurerm_network_interface"
    network_interface= var.network_interface

}

module "azurerm_linux_virtual_machine" {
   depends_on = [ module.azurerm_network_interface]
   source = "../../modules/azurerm_virtual_machine"
   vms=var.vms
}

