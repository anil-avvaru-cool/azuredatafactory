resource "azurerm_resource_group" "data" {
  name     = "${var.prefix}-resources"  
  location = var.location
}

module "ado_module" {
  source = "./modules/az-ado"
  location = var.location  
  res_group_name = azurerm_resource_group.data.name 
}

module "storage_module" {
  source = "./modules/az-storage"
  location = var.location
  res_group_name = azurerm_resource_group.data.name
  storage_acc_name = var.storage_acc_name  
}