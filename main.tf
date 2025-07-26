resource "azurerm_resource_group" "my-rg" {
  name     = "skumar26_rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "mystg" {
  name                     = "tillustorage"
  resource_group_name      = azurerm_resource_group.my-rg.name
  location                 = azurerm_resource_group.my-rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

} 
