resource "azurerm_resource_group" "sky0710" {
 
    for_each = var.rgs
    name     = each.value.name
    location = each.value.location
  
}

