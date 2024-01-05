resource "azurerm_app_service" "app-service-1" {
  name                = "app-service1-ironclouder"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.service-plan.id

  
}

