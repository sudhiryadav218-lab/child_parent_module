module "resource_group" {
  source = "../module/resource_group"

  rgs = {
    rg1 = {
      name     = "sky0710"
      location = "eastus"
    }

    rg2 = {
      name     = "sky0711"
      location = "eastus"
    }
  }
}

module "storage_account" {
  source = "../module/storage_account"

  storage_accounts = {
    st1 = {
      name                = "skystorage0710"
      resource_group_name = module.resource_group.rgs["rg1"].name
      location            = module.resource_group.rgs["rg1"].location
      account_tier        = "Standard"
    }

    st2 = {
      name                = "skystorage0711"
      resource_group_name = module.resource_group.rgs["rg2"].name
      location            = module.resource_group.rgs["rg2"].location
      account_tier        = "Standard"
    }
  }
}