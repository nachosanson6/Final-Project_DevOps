
resource "azurerm_app_service_plan" "service-plan" {
  name                = "ironclouders-service-plan"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name

  sku {
    tier = "Standard"
    size = "S1"

  }
  
  kind = "Linux"

  reserved = true 
}
