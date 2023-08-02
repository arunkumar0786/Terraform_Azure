resource "azurerm_service_plan" "companyplan" {
  name                = "companyplan"
  resource_group_name = local.resource_group_name
  location            = local.location
  os_type             = "Windows"
  sku_name            = "B1"
  depends_on = [
    azurerm_resource_group.athiyan-arun0786
  ]
}

resource "azurerm_windows_web_app" "companyapp12b 0001" {
  name                = "companyapp120001"
  resource_group_name = local.resource_group_name
  location            = local.location
  service_plan_id     = azurerm_service_plan.companyplan.id

  site_config {
    application_stack {
      current_stack="dotnet"
      dotnet_version="v6.0"
    }
  }

  depends_on = [
    azurerm_service_plan.companyplan
  ]
}