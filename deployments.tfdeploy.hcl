# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "azurerm" {
  audience = ["api://AzureADTokenExchange"]
}

deployment "development" {
  inputs = {
    identity_token = identity_token.azurerm.jwt

    regions = ["East US"]

    client_id       = "1cbe1bf0-aa3d-47a2-9ae3-f60957001b2d"
    subscription_id = "3b6fbd13-f061-4e67-a34e-738658a91c63"
    tenant_id       = "56f775a3-2540-4f05-ab58-72cd72d17d3e"
  }
}

deployment "production" {
  inputs = {
    identity_token = identity_token.azurerm.jwt

    regions = ["East US", "West US"]

    client_id       = "1cbe1bf0-aa3d-47a2-9ae3-f60957001b2d"
    subscription_id = "3b6fbd13-f061-4e67-a34e-738658a91c63"
    tenant_id       = "56f775a3-2540-4f05-ab58-72cd72d17d3e"
  }
}
