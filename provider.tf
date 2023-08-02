terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.66.0"
    }
  }
}

provider "azurerm" {

    subscription_id = "df551976-25a9-476a-a138-8187ac4ba232"
    tenant_id = "7e7b6465-e002-4cbf-a2a7-49525d6af3c4"
    client_id = "0d72e790-72a3-4bf1-a92b-967f66f07fbb"
    client_secret = "Ju~8Q~RruNGyfg9NG_YIj.Vl.ebKnG8xLiqKkave"
    features {}
  
}