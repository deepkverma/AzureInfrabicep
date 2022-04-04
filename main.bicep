// Below is the cmdlt to deploy from Azure CLI
//az deployment sub create --name rgDeployment --template-file .\main.bicep --location WestUS

targetScope = 'subscription'
resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'BicepRG'
  location: 'eastus'
}

// Deploying VNet account using module
module Vnet './vnet.bicep' = {
  name: 'storageDeployment'
  scope: rg    // Deployed in the scope of resource group we created above
 
}
