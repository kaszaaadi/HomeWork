param location string = 'norwayeast'

// A "resource rg" részt KIVETTÜK, mert azt a Pipeline (yml) intézi!

// Csak a tárolót hozzuk létre
resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'hazistorage${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
