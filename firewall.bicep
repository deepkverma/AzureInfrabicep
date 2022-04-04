resource firewall 'Microsoft.Network/azureFirewalls@2020-11-01' = {
  name: 'Firewall'
  location: 'Eastus'
  properties: {
    applicationRuleCollections: [
      {
        name: 'name'
        properties: {
          priority: 'priority'
          action: {
            type: 'Allow'
          }
          rules: [
            {
              name: 'name'
              description: 'description'
              sourceAddresses: [
                'sourceAddress'
              ]
              protocols: [
                {
                  protocolType: 'Http'
                  port: 80
                }
              ]
              targetFqdns: [
                'www.microsoft.com'
              ]
            }
          ]
        }
      }
    ]
    natRuleCollections: [
      {
        name: 'name'
        properties: {
          priority: 'priority'
          action: {
            type: 'Dnat'
          }
          rules: [
            {
              name: 'name'
              description: 'description'
              sourceAddresses: [
                'sourceAddress'
              ]
              destinationAddresses: [
                'destinationAddress'
              ]
              destinationPorts: [
                'port'
              ]
              protocols: [
                'TCP'
              ]
              translatedAddress: 'translatedAddress'
              translatedPort: 'translatedPort'
            }
          ]
        }
      }
    ]
    networkRuleCollections: [
      {
        name: 'name'
        properties: {
          priority: 'priority'
          action: {
            type: 'Deny'
          }
          rules: [
            {
              name: 'name'
              description: 'description'
              sourceAddresses: [
                'sourceAddress'
              ]
              destinationAddresses: [
                'destinationAddress'
              ]
              destinationPorts: [
                'destinationPort'
              ]
              protocols: [
                'TCP'
              ]
            }
          ]
        }
      }
    ]
    ipConfigurations: [
      {
        name: 'name'
        properties: {
          subnet: {
            id: 'id'
          }
          publicIPAddress: {
            id: 'id'
          }
        }
      }
    ]
  }
}
