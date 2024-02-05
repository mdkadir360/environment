rg = {
  rg1 = {
    name     = "kadir-prod-resources"
    location = "central india"
  }

}


vnet = {
  vnet1 = {
    name                = "kadir-prod-kadirvnet"
    address_space       = ["10.0.0.0/16"]
    location            = "central india"
    resource_group_name = "kadir-prod-resources"
  }
 
}
subnet = {
  subnet1 = {
    name                 = "kadir-prod-kadirsubnet"
    resource_group_name  = "kadir-prod-resources"
    virtual_network_name = "kadir-prod-kadirvnet"
    address_prefixes     = ["10.0.1.0/24"]
  }

  # subnet2 = {
  #   name                 = "kadirkadir-prod1subnet"
  #   resource_group_name  = "kadir-prod-resources"
  #   virtual_network_name = "kadir-prod-kadirvnet2"
  #   address_prefixes     = ["10.1.0.0/24"]
  # }
  # subnet3 = {
  #   name                 = "AzureBastionSubnet"
  #   resource_group_name  = "kadir-prod-resources"
  #   virtual_network_name = "kadir-prod-kadirvnet"
  #   address_prefixes     = ["10.0.3.0/24"]
  # }

}
pip = {
    pip1 = {
      name                = "kadir-prodpip"
      resource_group_name = "kadir-prod-resources"
      location            = "central india"
      allocation_method   = "Static"
  sku                 = "Basic"
    }
    pip2 = {
      name                = "kadir-prod1pip"
      resource_group_name = "kadir-prod-resources"
      location            = "central india"
      allocation_method   = "Static"
  sku                 = "Basic"

    }
  # pip3 = {
  #   name                = "bastionpip"
  #   resource_group_name = "kadir-prod-resources"
  #   location            = "central india"
  #   allocation_method   = "Static"
  #   sku                 = "Standard"
  # }
  # pip4 = {
  #   name                = "loadbalancerpip"
  #   resource_group_name = "kadir-prod-resources"
  #   location            = "central india"
  #   allocation_method   = "Static"
  #   sku                 = "Standard"
  # }

}


nic = {
  nic1 = {
    name                 = "kadir-prodnic1"
    location             = "central india"
    resource_group_name  = "kadir-prod-resources"
    virtual_network_name = "kadir-prod-kadirvnet"
    subnetname           = "kadir-prod-kadirsubnet"
     ipname               = "kadir-prodpip"
  }
  nic2 = {
    name                 = "kadir-prodnic2"
    location             = "central india"
    resource_group_name  = "kadir-prod-resources"
    virtual_network_name = "kadir-prod-kadirvnet"
    subnetname           = "kadir-prod-kadirsubnet"
     ipname               = "kadir-prod1pip"
  }


}
nsg = {
  nsg1 = {
    name                = "kadir-prod-nsgrule1"
    location            = "central india"
    resource_group_name = "kadir-prod-resources"
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
    name                 = "kadir-prodvmnsg1"
    nsgname              = "kadir-prod-nsgrule1"
    resource_group_name  = "kadir-prod-resources"
    subnatname           = "kadir-prod-kadirsubnet"
    virtual_network_name = "kadir-prod-kadirvnet"

  }
}


vm = {
  vm01 = {
    name                = "kadirkadir-prodvm1"
    location            = "central india"
    resource_group_name = "kadir-prod-resources"
    nicname             = "kadir-prodnic1"
  }
  vm02= {
    name                = "kadirkadir-prodvm2"
    location            = "central india"
    resource_group_name = "kadir-prod-resources"
    nicname             = "kadir-prodnic2"

  }
 


}
# sqlservers = {
#   sqlserver1 = {
#     name                = "kadirsqlservertest"
#     resource_group_name = "kadir-prod-resources"
#     location            = "central india"
#   }
# }
# sqldata = {
#   sqldata1 = {
#     name                = "kadir_database"
#     servername          = "kadirsqlservertest"
#     resource_group_name = "kadir-prod-resources"
#   }
# }

# bastionhost = {
#   bastionhost1 = {
#     name                 = "kadirhost"
#     location             = "central india"
#     resource_group_name  = "kadir-prod-resources"
#     virtual_network_name = "kadir-prod-kadirvnet"
#     subnetname           = "AzureBastionSubnet"
#     ipname               = "bastionpip"
#   }
# }

# vms = {
#   "kadir-prod" = {
#     vmname                 = "kadirkadir-prodvm1"
#     network_interface_name = "kadir-prodnic1"
#   },
#   "kadir-prod2" = {
#     vmname                 = "kadirkadir-prodvm2"
#     network_interface_name = "kadir-prodnic2"
#   }
# }

# probename = "kadir-prodprobe"
# port      = "80"
# protocol  = "Tcp"
# interval  = "5"

# lbrule       = "kadir-prodrule"
# kadir-prodport = "80"
# kadir-prod1port  = "80"

# lbname             = "lb-todoapp"
# kadir-prod1pool        = "todoapp_kadir-prod1pool"
# kadir-prod1pooladdress = "todoapp_kadir-prod1address"


