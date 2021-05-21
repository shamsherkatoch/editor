
{
    "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
    "contentVersion": "1.0.0.0",
    "parameters": {
        "location": {
            "type": "string"
        },
        "storageAccountName": {
            "type": "string"
        },
        "accountType": {
            "type": "string"
        },
        "kind": {
            "type": "string"
        },
        "accessTier": {
            "type": "string"
        },
        "minimumTlsVersion": {
            "type": "string"
        },
        "supportsHttpsTrafficOnly": {
            "type": "bool"
        },
        "allowBlobPublicAccess": {
            "type": "bool"
        },
        "allowSharedKeyAccess": {
            "type": "bool"
        },
        "networkAclsBypass": {
            "type": "string"
        },
        "networkAclsDefaultAction": {
            "type": "string"
        },
        "networkAclsVirtualNetworkRules": {
            "type": "array"
        },
        "keySource": {
            "type": "string"
        },
        "encryptionEnabled": {
            "type": "bool"
        },
        "keyTypeForTableAndQueueEncryption": {
            "type": "string"
        },
        "isContainerRestoreEnabled": {
            "type": "bool"
        },
        "isBlobSoftDeleteEnabled": {
            "type": "bool"
        },
        "blobSoftDeleteRetentionDays": {
            "type": "int"
        },
        "changeFeed": {
            "type": "bool"
        },
        "isVersioningEnabled": {
            "type": "bool"
        },
        "isShareSoftDeleteEnabled": {
            "type": "bool"
        },
        "shareSoftDeleteRetentionDays": {
            "type": "int"
        }
    },
    "variables": {},
    "resources": [
        {
            "apiVersion": "2019-06-01",
            "type": "Microsoft.Resources/deployments",
            "name": "virtualNetworks_0.6672717545558298",
            "subscriptionId": "0f1c5e89-3639-4a79-aaa8-5fe6f67d2935",
            "resourceGroup": "rg-auac-dev-network",
            "dependsOn": [],
            "resources": [],
            "properties": {
                "mode": "Incremental",
                "parameters": {},
                "template": {
                    "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
                    "contentVersion": "1.0.0.0",
                    "parameters": {},
                    "variables": {},
                    "resources": [
                        {
                            "apiVersion": "2019-09-01",
                            "name": "vnet-auac-dev-dev",
                            "type": "Microsoft.Network/virtualNetworks",
                            "location": "australiacentral",
                            "properties": {
                                "provisioningState": "Succeeded",
                                "resourceGuid": "07d79c8c-3977-4ccb-b7b3-cbf0c8d764ca",
                                "addressSpace": {
                                    "addressPrefixes": [
                                        "10.61.16.0/20"
                                    ]
                                },
                                "dhcpOptions": {
                                    "dnsServers": [
                                        "10.61.4.21",
                                        "10.61.4.22"
                                    ]
                                },
                                "subnets": [
                                    {
                                        "name": "rds-ws",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/rds-ws",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.23.0/24",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Sql",
                                                    "locations": [
                                                        "australiacentral"
                                                    ]
                                                }
                                            ],
                                            "delegations": [],
                                            "privateEndpointNetworkPolicies": "Enabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "apps-dev",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/apps-dev",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.18.0/24",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "ipConfigurations": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/auacdc10test001nictest1/ipConfigurations/ipconfig1"
                                                }
                                            ],
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.AzureActiveDirectory",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Sql",
                                                    "locations": [
                                                        "australiacentral"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.AzureCosmosDB",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                }
                                            ],
                                            "delegations": [],
                                            "privateEndpointNetworkPolicies": "Enabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "data",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/data",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.19.0/24",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Sql",
                                                    "locations": [
                                                        "australiacentral"
                                                    ]
                                                }
                                            ],
                                            "delegations": [],
                                            "privateEndpointNetworkPolicies": "Enabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "services",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/services",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.17.0/24",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.AzureActiveDirectory",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Web",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Sql",
                                                    "locations": [
                                                        "australiacentral"
                                                    ]
                                                }
                                            ],
                                            "delegations": [],
                                            "privateEndpointNetworkPolicies": "Enabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "lb",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/lb",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.16.0/24",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "ipConfigurations": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/auacdc10test001a334456/ipConfigurations/ipconfig1"
                                                }
                                            ],
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Sql",
                                                    "locations": [
                                                        "australiacentral"
                                                    ]
                                                }
                                            ],
                                            "delegations": [],
                                            "privateEndpointNetworkPolicies": "Enabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "lb-agw",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/lb-agw",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.22.0/28",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-lbagw"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-lbagw"
                                            },
                                            "ipConfigurations": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-shared/providers/Microsoft.Network/applicationGateways/agw-auac-dev-shared/frontendIPConfigurations/appGwPrivateFrontendIp"
                                                }
                                            ],
                                            "applicationGatewayIPConfigurations": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-shared/providers/Microsoft.Network/applicationGateways/agw-auac-dev-shared/gatewayIPConfigurations/appGatewayIpConfig"
                                                }
                                            ],
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Web",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                }
                                            ],
                                            "delegations": [],
                                            "privateEndpointNetworkPolicies": "Enabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "unhrc-pvtEdp",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/unhrc-pvtEdp",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.20.16/28",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "ipConfigurations": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devunhrcportal-auac.nic.fce646ce-84e2-4cfc-8849-b3ef18a7dd73/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devunhrcrestapi-auac.nic.dab60f9a-03e2-4bd8-96aa-580ad089a95b/ipConfigurations/sites-sites.privateEndpoint"
                                                }
                                            ],
                                            "privateEndpoints": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devunhrcportal-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devunhrcrestapi-auac"
                                                }
                                            ],
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                }
                                            ],
                                            "delegations": [],
                                            "purpose": "PrivateEndpoints",
                                            "privateEndpointNetworkPolicies": "Disabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "flair-pvtEdp",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/flair-pvtEdp",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.20.32/28",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "ipConfigurations": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devflair-auac.nic.1d455a4e-1b2a-4332-9765-1569a68c3af4/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devflairadmin-auac.nic.2e9a178e-d486-477b-afed-79ea7358a9af/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devflairportal-auac.nic.9c2279cc-4cf0-472c-9b3f-a1894ff330cc/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devflairrestapi-auac.nic.4b4297c1-8a1f-41d5-bdd6-933e84b94782/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-infraops/providers/Microsoft.Network/networkInterfaces/testing-lbagw-flairvnet/ipConfigurations/ipconfig1"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-infraops/providers/Microsoft.Network/networkInterfaces/testinfraops494/ipConfigurations/ipconfig1"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-webapp-flair/providers/Microsoft.Network/networkInterfaces/pv-kvauacdevflair.nic.72f87a95-149c-4b17-9a1b-17f950590693/ipConfigurations/vault-default.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-webapp-flair/providers/Microsoft.Network/networkInterfaces/pv-saaucdevflair.nic.7d37575c-2e76-4233-910f-d926777f05e2/ipConfigurations/blob-blob.privateEndpoint"
                                                }
                                            ],
                                            "privateEndpoints": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devflair-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devflairadmin-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devflairportal-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devflairrestapi-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-webapp-flair/providers/Microsoft.Network/privateEndpoints/pv-kvauacdevflair"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-webapp-flair/providers/Microsoft.Network/privateEndpoints/pv-saaucdevflair"
                                                }
                                            ],
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Web",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                }
                                            ],
                                            "delegations": [],
                                            "purpose": "PrivateEndpoints",
                                            "privateEndpointNetworkPolicies": "Disabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "star-vntInt",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/star-vntInt",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.21.0/28",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "serviceAssociationLinks": [
                                                {
                                                    "name": "AppServiceLink",
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/star-vntInt/serviceAssociationLinks/AppServiceLink",
                                                    "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                                    "type": "Microsoft.Network/virtualNetworks/subnets/serviceAssociationLinks",
                                                    "properties": {
                                                        "provisioningState": "Succeeded",
                                                        "linkedResourceType": "Microsoft.Web/serverfarms",
                                                        "link": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-webapp-star/providers/Microsoft.Web/serverfarms/ASP-auacdevwebappstar",
                                                        "enabledForArmDeployments": false,
                                                        "allowDelete": false,
                                                        "locations": []
                                                    }
                                                }
                                            ],
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Sql",
                                                    "locations": [
                                                        "australiacentral"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Web",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.AzureCosmosDB",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                }
                                            ],
                                            "delegations": [
                                                {
                                                    "name": "Microsoft.Web.serverFarms",
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/star-vntInt/delegations/Microsoft.Web.serverFarms",
                                                    "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                                    "properties": {
                                                        "provisioningState": "Succeeded",
                                                        "serviceName": "Microsoft.Web/serverFarms",
                                                        "actions": [
                                                            "Microsoft.Network/virtualNetworks/subnets/action"
                                                        ]
                                                    },
                                                    "type": "Microsoft.Network/virtualNetworks/subnets/delegations"
                                                }
                                            ],
                                            "privateEndpointNetworkPolicies": "Enabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "unhrc-vntInt",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/unhrc-vntInt",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.21.16/28",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "serviceAssociationLinks": [
                                                {
                                                    "name": "AppServiceLink",
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/unhrc-vntInt/serviceAssociationLinks/AppServiceLink",
                                                    "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                                    "type": "Microsoft.Network/virtualNetworks/subnets/serviceAssociationLinks",
                                                    "properties": {
                                                        "provisioningState": "Succeeded",
                                                        "linkedResourceType": "Microsoft.Web/serverfarms",
                                                        "link": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-webapp-unhrc/providers/Microsoft.Web/serverfarms/ASP-auacdevwebappunhrc",
                                                        "enabledForArmDeployments": false,
                                                        "allowDelete": false,
                                                        "locations": []
                                                    }
                                                }
                                            ],
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Web",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Sql",
                                                    "locations": [
                                                        "australiacentral"
                                                    ]
                                                }
                                            ],
                                            "delegations": [
                                                {
                                                    "name": "Microsoft.Web.serverFarms",
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/unhrc-vntInt/delegations/Microsoft.Web.serverFarms",
                                                    "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                                    "properties": {
                                                        "provisioningState": "Succeeded",
                                                        "serviceName": "Microsoft.Web/serverFarms",
                                                        "actions": [
                                                            "Microsoft.Network/virtualNetworks/subnets/action"
                                                        ]
                                                    },
                                                    "type": "Microsoft.Network/virtualNetworks/subnets/delegations"
                                                }
                                            ],
                                            "privateEndpointNetworkPolicies": "Enabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "flair-vntInt",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/flair-vntInt",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.21.32/28",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "serviceAssociationLinks": [
                                                {
                                                    "name": "AppServiceLink",
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/flair-vntInt/serviceAssociationLinks/AppServiceLink",
                                                    "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                                    "type": "Microsoft.Network/virtualNetworks/subnets/serviceAssociationLinks",
                                                    "properties": {
                                                        "provisioningState": "Succeeded",
                                                        "linkedResourceType": "Microsoft.Web/serverfarms",
                                                        "link": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-webapp-flair/providers/Microsoft.Web/serverfarms/ASP-auacdevwebappflair",
                                                        "enabledForArmDeployments": false,
                                                        "allowDelete": false,
                                                        "locations": []
                                                    }
                                                }
                                            ],
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Web",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Sql",
                                                    "locations": [
                                                        "australiacentral"
                                                    ]
                                                }
                                            ],
                                            "delegations": [
                                                {
                                                    "name": "Microsoft.Web.serverFarms",
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/flair-vntInt/delegations/Microsoft.Web.serverFarms",
                                                    "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                                    "properties": {
                                                        "provisioningState": "Succeeded",
                                                        "serviceName": "Microsoft.Web/serverFarms",
                                                        "actions": [
                                                            "Microsoft.Network/virtualNetworks/subnets/action"
                                                        ]
                                                    },
                                                    "type": "Microsoft.Network/virtualNetworks/subnets/delegations"
                                                }
                                            ],
                                            "privateEndpointNetworkPolicies": "Enabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "testing-lbagw",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/testing-lbagw",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.22.16/28",
                                            "networkSecurityGroup": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkSecurityGroups/nsg-auac-dev-dev"
                                            },
                                            "routeTable": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/routeTables/rt-auac-dev-dev-all"
                                            },
                                            "ipConfigurations": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-infraops/providers/Microsoft.Network/networkInterfaces/testing-lbagw139/ipConfigurations/ipconfig1"
                                                }
                                            ],
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Web",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.Storage",
                                                    "locations": [
                                                        "australiacentral",
                                                        "australiacentral2"
                                                    ]
                                                },
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.KeyVault",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                }
                                            ],
                                            "delegations": [],
                                            "privateEndpointNetworkPolicies": "Enabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    },
                                    {
                                        "name": "star-pvtEdp",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/subnets/star-pvtEdp",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "addressPrefix": "10.61.20.0/28",
                                            "ipConfigurations": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devwebappstar-auac.nic.9e4c0e68-f2c0-42ff-999e-c9fb7162e1a5/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devsts-auac.nic.3c45d7fa-db85-492a-8d99-964a65d52515/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devrsmabnlookup-auac.nic.36b5dff4-c0ab-4333-b7f3-957b66ac6dc0/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devquestionnaire-auac.nic.9c087558-dbcc-4811-839d-bdb8cdd08715/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devfsoonline-auac.nic.97080c6c-045b-49ed-b393-251c0812627d/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devfsconline-auac.nic.cae6d8a3-2b0f-4ab1-9ac8-97770f139de0/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devcomposer-auac-njs.nic.325854c5-6029-49f7-b5fa-2460fbc96dd6/ipConfigurations/sites-sites.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devstarmongodb-auac.nic.881cda30-0a88-408c-9e1b-0a5787d41a5a/ipConfigurations/mongodb-devstarmongodb-auac.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devstarmongodb-auac.nic.881cda30-0a88-408c-9e1b-0a5787d41a5a/ipConfigurations/mongodb-devstarmongodb-auac-australiacentral.privateEndpoint"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/networkInterfaces/devstarmongodb-auac.nic.881cda30-0a88-408c-9e1b-0a5787d41a5a/ipConfigurations/mongodb-devstarmongodb-auac-australiacentral2.privateEndpoint"
                                                }
                                            ],
                                            "privateEndpoints": [
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devwebappstar-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devsts-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devrsmabnlookup-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devquestionnaire-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devfsoonline-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devfsconline-auac"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devcomposer-auac-njs"
                                                },
                                                {
                                                    "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/privateEndpoints/devstarmongodb-auac"
                                                }
                                            ],
                                            "serviceEndpoints": [
                                                {
                                                    "provisioningState": "Succeeded",
                                                    "service": "Microsoft.AzureCosmosDB",
                                                    "locations": [
                                                        "*"
                                                    ]
                                                },
                                                {
                                                    "service": "Microsoft.Storage"
                                                }
                                            ],
                                            "delegations": [],
                                            "purpose": "PrivateEndpoints",
                                            "privateEndpointNetworkPolicies": "Disabled",
                                            "privateLinkServiceNetworkPolicies": "Enabled"
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/subnets"
                                    }
                                ],
                                "virtualNetworkPeerings": [
                                    {
                                        "name": "peer-auac-dev-dev-auae-dev-dev",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/virtualNetworkPeerings/peer-auac-dev-dev-auae-dev-dev",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "resourceGuid": "e930d02e-337c-0bcb-2283-fd1a9ab59036",
                                            "peeringState": "Connected",
                                            "remoteVirtualNetwork": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auae-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auae-dev-dev"
                                            },
                                            "allowVirtualNetworkAccess": true,
                                            "allowForwardedTraffic": false,
                                            "allowGatewayTransit": false,
                                            "useRemoteGateways": false,
                                            "doNotVerifyRemoteGateways": false,
                                            "remoteAddressSpace": {
                                                "addressPrefixes": [
                                                    "10.62.16.0/20"
                                                ]
                                            },
                                            "routeServiceVips": {}
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/virtualNetworkPeerings"
                                    },
                                    {
                                        "name": "peer-dev-dev-auac-hub-gateway",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/virtualNetworkPeerings/peer-dev-dev-auac-hub-gateway",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "resourceGuid": "6eff696e-d4c6-0d77-2a23-90b5ffc8e3eb",
                                            "peeringState": "Connected",
                                            "remoteVirtualNetwork": {
                                                "id": "/subscriptions/ec1ab1f6-a595-42a6-93ec-25af219fe534/resourceGroups/rg-auac-hub-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-hub-gateway"
                                            },
                                            "allowVirtualNetworkAccess": true,
                                            "allowForwardedTraffic": true,
                                            "allowGatewayTransit": false,
                                            "useRemoteGateways": false,
                                            "doNotVerifyRemoteGateways": false,
                                            "remoteAddressSpace": {
                                                "addressPrefixes": [
                                                    "10.61.0.0/22"
                                                ]
                                            },
                                            "routeServiceVips": {}
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/virtualNetworkPeerings"
                                    },
                                    {
                                        "name": "peer-auac-dev-dev-auac2-dev-dev",
                                        "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac-dev-network/providers/Microsoft.Network/virtualNetworks/vnet-auac-dev-dev/virtualNetworkPeerings/peer-auac-dev-dev-auac2-dev-dev",
                                        "etag": "W/\"5fdda7d3-e30c-4b02-ad3a-bd763415960e\"",
                                        "properties": {
                                            "provisioningState": "Succeeded",
                                            "resourceGuid": "c23e5900-d3ab-08e2-2107-7b610f13b565",
                                            "peeringState": "Connected",
                                            "remoteVirtualNetwork": {
                                                "id": "/subscriptions/0f1c5e89-3639-4a79-aaa8-5fe6f67d2935/resourceGroups/rg-auac2-network/providers/Microsoft.Network/virtualNetworks/vnet-auac2-dev-dev"
                                            },
                                            "allowVirtualNetworkAccess": true,
                                            "allowForwardedTraffic": false,
                                            "allowGatewayTransit": false,
                                            "useRemoteGateways": false,
                                            "doNotVerifyRemoteGateways": false,
                                            "remoteAddressSpace": {
                                                "addressPrefixes": [
                                                    "10.60.16.0/20"
                                                ]
                                            },
                                            "routeServiceVips": {}
                                        },
                                        "type": "Microsoft.Network/virtualNetworks/virtualNetworkPeerings"
                                    }
                                ],
                                "enableDdosProtection": false
                            },
                            "tags": {
                                "DEV": "Billing",
                                "Assigned To": "IR SYSTEM",
                                "Environment": "Dev",
                                "Application": "Shared"
                            }
                        }
                    ],
                    "outputs": {}
                }
            }
        },
        {
            "name": "[parameters('storageAccountName')]",
            "type": "Microsoft.Storage/storageAccounts",
            "apiVersion": "2019-06-01",
            "location": "[parameters('location')]",
            "properties": {
                "accessTier": "[parameters('accessTier')]",
                "minimumTlsVersion": "[parameters('minimumTlsVersion')]",
                "supportsHttpsTrafficOnly": "[parameters('supportsHttpsTrafficOnly')]",
                "allowBlobPublicAccess": "[parameters('allowBlobPublicAccess')]",
                "allowSharedKeyAccess": "[parameters('allowSharedKeyAccess')]",
                "networkAcls": {
                    "bypass": "[parameters('networkAclsBypass')]",
                    "defaultAction": "[parameters('networkAclsDefaultAction')]",
                    "ipRules": [],
                    "virtualNetworkRules": "[parameters('networkAclsVirtualNetworkRules')]"
                },
                "encryption": {
                    "keySource": "[parameters('keySource')]",
                    "services": {
                        "blob": {
                            "enabled": "[parameters('encryptionEnabled')]"
                        },
                        "file": {
                            "enabled": "[parameters('encryptionEnabled')]"
                        },
                        "queue": {
                            "enabled": "[parameters('encryptionEnabled')]",
                            "keyType": "[parameters('keyTypeForTableAndQueueEncryption')]"
                        },
                        "table": {
                            "enabled": "[parameters('encryptionEnabled')]",
                            "keyType": "[parameters('keyTypeForTableAndQueueEncryption')]"
                        }
                    }
                }
            },
            "dependsOn": [
                "Microsoft.Resources/deployments/virtualNetworks_0.6672717545558298"
            ],
            "sku": {
                "name": "[parameters('accountType')]"
            },
            "kind": "[parameters('kind')]",
            "tags": {
                "Application": "",
                "Environment": "Dev"
            }
        },
        {
            "name": "[concat(parameters('storageAccountName'), '/default')]",
            "type": "Microsoft.Storage/storageAccounts/blobServices",
            "apiVersion": "2019-06-01",
            "properties": {
                "restorePolicy": {
                    "enabled": "[parameters('isContainerRestoreEnabled')]"
                },
                "deleteRetentionPolicy": {
                    "enabled": "[parameters('isBlobSoftDeleteEnabled')]",
                    "days": "[parameters('blobSoftDeleteRetentionDays')]"
                },
                "changeFeed": {
                    "enabled": "[parameters('changeFeed')]"
                },
                "isVersioningEnabled": "[parameters('isVersioningEnabled')]"
            },
            "dependsOn": [
                "[concat('Microsoft.Storage/storageAccounts/', parameters('storageAccountName'))]"
            ]
        },
        {
            "name": "[concat(parameters('storageAccountName'), '/default')]",
            "type": "Microsoft.Storage/storageAccounts/fileservices",
            "apiVersion": "2019-06-01",
            "properties": {
                "shareDeleteRetentionPolicy": {
                    "enabled": "[parameters('isShareSoftDeleteEnabled')]",
                    "days": "[parameters('shareSoftDeleteRetentionDays')]"
                }
            },
            "dependsOn": [
                "[concat('Microsoft.Storage/storageAccounts/', parameters('storageAccountName'))]",
                "[concat(concat('Microsoft.Storage/storageAccounts/', parameters('storageAccountName')), '/blobServices/default')]"
            ]
        }
    ],
    "outputs": {}
}
