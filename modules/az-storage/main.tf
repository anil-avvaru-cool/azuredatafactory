resource "azurerm_storage_account" "example" {
  name                     = "examplestoracc"
  resource_group_name      = var.res_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = "content"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}