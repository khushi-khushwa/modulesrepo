
resource "azurerm_resource_group" "khushi-rg" {
  
for_each = var.rg_variable
   

   name=each.value.name
   location = each.value.location

}