param VMadm string
param VMPass string
param WindowsOS string

resource windowsVM 'Microsoft.Compute/virtualMachines@2020-12-01' = {
  name: 'Windows'
  location: 'eastus'
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_A2_v2'
    }
    osProfile: {
      computerName: WindowsOS
      adminUsername: VMadm
      adminPassword: VMPass
    }
    storageProfile: {
      imageReference: {
        publisher: 'MicrosoftWindowsServer'
        offer: 'WindowsServer'
        sku: '2012-R2-Datacenter'
        version: 'latest'
      }
      osDisk: {
        name: 'name'
        caching: 'ReadWrite'
        createOption: 'FromImage'
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: 'id'
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
        storageUri:  'storageUri'
      }
    }
  }
}
