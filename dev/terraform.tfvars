rg = {
  rg1 = {
    name     = "kadir-dev-rg"
    location = "east us"
  }

}

vnet = {
  vnet1 = {
    name                = "kadir-dev-vnet"
    address_space       = ["10.0.0.0/16"]
    location            = "east us"
    resource_group_name = "kadir-dev-rg"
  }
 
}
subnet = {
  subnet1 = {
    name                 = "kadir-dev-subnet"
    resource_group_name  = "kadir-dev-rg"
    virtual_network_name = "kadir-dev-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }

  # subnet2 = {
  #   name                 = "kadirbackendsubnet"
  #   resource_group_name  = "kadir-dev-rg"
  #   virtual_network_name = "kadir-dev-vnet2"
  #   address_prefixes     = ["10.1.0.0/24"]
  # }
  # subnet3 = {
  #   name                 = "AzureBastionSubnet"
  #   resource_group_name  = "kadir-dev-rg"
  #   virtual_network_name = "kadir-dev-vnet"
  #   address_prefixes     = ["10.0.3.0/24"]
  # }

}
pip = {
    pip1 = {
      name                = "frontend-devpip1"
      resource_group_name = "kadir-dev-rg"
      location            = "east us"
      allocation_method   = "Static"
  sku                 = "Basic"
    }
    pip2 = {
      name                = "frontend-devpip2"
      resource_group_name = "kadir-dev-rg"
      location            = "east us"
      allocation_method   = "Static"
  sku                 = "Basic"

    }
  # pip3 = {
  #   name                = "bastionpip"
  #   resource_group_name = "kadir-dev-rg"
  #   location            = "east us"
  #   allocation_method   = "Static"
  #   sku                 = "Standard"
  # }
  # pip4 = {
  #   name                = "loadbalancerpip"
  #   resource_group_name = "kadir-dev-rg"
  #   location            = "east us"
  #   allocation_method   = "Static"
  #   sku                 = "Standard"
  # }

}


nic = {
  nic1 = {
    name                 = "frontend-devnic1"
    location             = "east us"
    resource_group_name  = "kadir-dev-rg"
    virtual_network_name = "kadir-dev-vnet"
    subnetname           = "kadir-dev-subnet"
     ipname               = "frontend-devpip1"
  }
  nic2 = {
    name                 = "frontend-devnic2"
    location             = "east us"
    resource_group_name  = "kadir-dev-rg"
    virtual_network_name = "kadir-dev-vnet"
    subnetname           = "kadir-dev-subnet"
     ipname               = "frontend-devpip2"
  }


}
nsg = {
  nsg1 = {
    name                = "nsgdevrule"
    location            = "east us"
    resource_group_name = "kadir-dev-rg"
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
    name                 = "kadirdevnsg"
    nsgname              = "nsgdevrule"
    resource_group_name  = "kadir-dev-rg"
    subnatname           = "kadir-dev-subnet"
    virtual_network_name = "kadir-dev-vnet"

  }
}


vm = {
  vm01 = {
    name                = "kadirfrontend-devvm1"
    location            = "east us"
    resource_group_name = "kadir-dev-rg"
    nicname             = "frontend-devnic1"
  }
  vm02= {
    name                = "kadirfrontend-devvm2"
    location            = "east us"
    resource_group_name = "kadir-dev-rg"
    nicname             = "frontend-devnic2"

  }
 


}
# sqlservers = {
#   sqlserver1 = {
#     name                = "kadirsqlservertest"
#     resource_group_name = "kadir-dev-rg"
#     location            = "east us"
#   }
# }
# sqldata = {
#   sqldata1 = {
#     name                = "kadir_database"
#     servername          = "kadirsqlservertest"
#     resource_group_name = "kadir-dev-rg"
#   }
# }

# bastionhost = {
#   bastionhost1 = {
#     name                 = "kadirhost"
#     location             = "east us"
#     resource_group_name  = "kadir-dev-rg"
#     virtual_network_name = "kadir-dev-vnet"
#     subnetname           = "AzureBastionSubnet"
#     ipname               = "bastionpip"
#   }
# }

# vms = {
#   "frontend" = {
#     vmname                 = "kadirfrontend-devvm1"
#     network_interface_name = "frontend-devnic1"
#   },
#   "frontend2" = {
#     vmname                 = "kadirfrontend-devvm2"
#     network_interface_name = "frontend-devnic2"
#   }
# }

# probename = "frontendprobe"
# port      = "80"
# protocol  = "Tcp"
# interval  = "5"

# lbrule       = "frontendrule"
# frontendport = "80"
# backendport  = "80"

# lbname             = "lb-todoapp"
# backendpool        = "todoapp_backendpool"
# backendpooladdress = "todoapp_backendaddress"


