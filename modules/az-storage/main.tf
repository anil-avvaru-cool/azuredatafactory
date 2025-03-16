resource "azurerm_storage_account" "example" {
  name                     = var.storage_acc_name
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

resource "azurerm_storage_container" "emp" {
  name                  = "emp"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}

resource "azurerm_storage_container" "dept" {
  name                  = "dept"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}