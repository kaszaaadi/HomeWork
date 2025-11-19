param location string = 'norwayeast'

// Ez hozza létre az erőforráscsoportot
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' existing = {
  name: 'HaziPipelineRG'
}

// Ez hoz létre egy tárhelyet
resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'hazistorage${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
