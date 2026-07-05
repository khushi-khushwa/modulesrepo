module "azurerm_resource_group" {
   source = "../../modules/azurerm_rg"
   rg_variable = var.rg_variable



}

module "azurerm_virtual_network" {
   #  depends_on = [ module.azurerm_resource_group ]
   source = "../../modules/azurerm_vnet"
vnet-khushi=var.vnet-khushi
}

module "azurerm_subnet" {
   #  depends_on = [ module.azurerm_virtual_network ]
   source = "../../modules/azurerm_subnet"
khushi_sub=var.khushi_sub
}