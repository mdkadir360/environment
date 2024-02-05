rg = {
  rg1 = {
    name     = "kadir-staging-resources"
    location = "central india"
  }

}


vnet = {
  vnet1 = {
    name                = "kadir-staging-kadirvnet"
    address_space       = ["10.0.0.0/16"]
    location            = "central india"
    resource_group_name = "kadir-staging-resources"
  }
 
}
subnet = {
  subnet1 = {
    name                 = "kadir-staging-kadirsubnet"
    resource_group_name  = "kadir-staging-resources"
    virtual_network_name = "kadir-staging-kadirvnet"
    address_prefixes     = ["10.0.1.0/24"]
  }

  # subnet2 = {
  #   name                 = "kadirkadir-staging1subnet"
  #   resource_group_name  = "kadir-staging-resources"
  #   virtual_network_name = "kadir-staging-kadirvnet2"
  #   address_prefixes     = ["10.1.0.0/24"]
  # }
  # subnet3 = {
  #   name                 = "AzureBastionSubnet"
  #   resource_group_name  = "kadir-staging-resources"
  #   virtual_network_name = "kadir-staging-kadirvnet"
  #   address_prefixes     = ["10.0.3.0/24"]
  # }

}
pip = {
    pip1 = {
      name                = "kadir-stagingpip"
      resource_group_name = "kadir-staging-resources"
      location            = "central india"
      allocation_method   = "Static"
  sku                 = "Basic"
    }
    pip2 = {
      name                = "kadir-staging1pip"
      resource_group_name = "kadir-staging-resources"
      location            = "central india"
      allocation_method   = "Static"
  sku                 = "Basic"

    }
  # pip3 = {
  #   name                = "bastionpip"
  #   resource_group_name = "kadir-staging-resources"
  #   location            = "central india"
  #   allocation_method   = "Static"
  #   sku                 = "Standard"
  # }
  # pip4 = {
  #   name                = "loadbalancerpip"
  #   resource_group_name = "kadir-staging-resources"
  #   location            = "central india"
  #   allocation_method   = "Static"
  #   sku                 = "Standard"
  # }

}


nic = {
  nic1 = {
    name                 = "kadir-stagingnic1"
    location             = "central india"
    resource_group_name  = "kadir-staging-resources"
    virtual_network_name = "kadir-staging-kadirvnet"
    subnetname           = "kadir-staging-kadirsubnet"
     ipname               = "kadir-stagingpip"
  }
  nic2 = {
    name                 = "kadir-stagingnic2"
    location             = "central india"
    resource_group_name  = "kadir-staging-resources"
    virtual_network_name = "kadir-staging-kadirvnet"
    subnetname           = "kadir-staging-kadirsubnet"
     ipname               = "kadir-staging1pip"
  }


}
nsg = {
  nsg1 = {
    name                = "kadir-staging-nsgrule1"
    location            = "central india"
    resource_group_name = "kadir-staging-resources"
  }
  
}

security = {
  rule1 = {
    name                       = "ssh_access"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = 22
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
  rule2 = {
    name                       = "http_access"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = 80
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
  

}

associationm = {
  association1 = {
    name                 = "kadir-stagingvmnsg1"
    nsgname              = "kadir-staging-nsgrule1"
    resource_group_name  = "kadir-staging-resources"
    subnatname           = "kadir-staging-kadirsubnet"
    virtual_network_name = "kadir-staging-kadirvnet"

  }
}


vm = {
  vm01 = {
    name                = "kadirkadir-stagingvm1"
    location            = "central india"
    resource_group_name = "kadir-staging-resources"
    nicname             = "kadir-stagingnic1"
  }
  vm02= {
    name                = "kadirkadir-stagingvm2"
    location            = "central india"
    resource_group_name = "kadir-staging-resources"
    nicname             = "kadir-stagingnic2"

  }
 


}
# sqlservers = {
#   sqlserver1 = {
#     name                = "kadirsqlservertest"
#     resource_group_name = "kadir-staging-resources"
#     location            = "central india"
#   }
# }
# sqldata = {
#   sqldata1 = {
#     name                = "kadir_database"
#     servername          = "kadirsqlservertest"
#     resource_group_name = "kadir-staging-resources"
#   }
# }

# bastionhost = {
#   bastionhost1 = {
#     name                 = "kadirhost"
#     location             = "central india"
#     resource_group_name  = "kadir-staging-resources"
#     virtual_network_name = "kadir-staging-kadirvnet"
#     subnetname           = "AzureBastionSubnet"
#     ipname               = "bastionpip"
#   }
# }

# vms = {
#   "kadir-staging" = {
#     vmname                 = "kadirkadir-stagingvm1"
#     network_interface_name = "kadir-stagingnic1"
#   },
#   "kadir-staging2" = {
#     vmname                 = "kadirkadir-stagingvm2"
#     network_interface_name = "kadir-stagingnic2"
#   }
# }

# probename = "kadir-stagingprobe"
# port      = "80"
# protocol  = "Tcp"
# interval  = "5"

# lbrule       = "kadir-stagingrule"
# kadir-stagingport = "80"
# kadir-staging1port  = "80"

# lbname             = "lb-todoapp"
# kadir-staging1pool        = "todoapp_kadir-staging1pool"
# kadir-staging1pooladdress = "todoapp_kadir-staging1address"


