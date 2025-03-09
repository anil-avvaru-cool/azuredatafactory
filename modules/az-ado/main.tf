
resource "azurerm_data_factory" "this" {
    name = "adodemo"
    location = var.location
    resource_group_name = var.res_group_name
  
}