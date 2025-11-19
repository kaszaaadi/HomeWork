param location string = 'norwayeast'

resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'hazistorage${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
resource stg2 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'haziextra${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
