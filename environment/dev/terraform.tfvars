rg_variable ={


    rg1={
        name = "rg-tinki"
        location="CentralIndia"
    }
}



vnet-khushi ={

    vnet1={
      name     = "vnet_khushi1"
    location = "CentralIndia"
    resource_group_name="rg-tinki"
      address_space = ["10.0.0.0/21"]
    }
 
}

khushi_sub = {

    

    subnet1={
      name     = "frontend_subnet"

    resource_group_name="rg-tinki"
    virtual_network_name="vnet_khushi1"
        address_prefixes = ["10.0.0.0/24"]
    
    }
    subnet2={
       name     = "backend_subnet"
       resource_group_name="rg-tinki"
       virtual_network_name="vnet_khushi1"
       address_prefixes = ["10.0.1.0/24"]
    
    }
}

network_interface ={
     nic1 ={
     name= "frontend-vm-nic"
     location="CentralIndia"
     resource_group_name="rg-tinki"
     subnet_name ="frontend_subnet"
     virtual_network_name="vnet_khushi1"
     pip_name = "pip-chor"
     }
      nic2 ={
     name= "backend-vm-nic"
     location="CentralIndia"
     resource_group_name="rg-tinki"
     subnet_name ="backend_subnet"
     virtual_network_name="vnet_khushi1"
     pip_name = "pip-chor2"
     }

}

public_ips={
    pip1={
        public_ips_name= "pip-chor"
        resource_group_name="rg-tinki"
        location="CentralIndia"
        allocation_method="Static"
    }

     pip2={
       public_ips_name= "pip-chor2"
        resource_group_name="rg-tinki"
        location="CentralIndia"
        allocation_method="Static"
    }
}

# blob_storage = {
#       storage_name = "khushistore"
#   resource_group_name = "rg-tinki"
#     location                 ="CentralIndia"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

# }

vms={
    vms1={
name= "vms1"
     location="CentralIndia"
     resource_group_name="rg-tinki"
     virtual_network_name="vnet_khushi1"
      size               = "Standard_B1s"
     admin_username      = "adminuser"
    admin_password = "Khushi@12345"
    network_interface_name ="frontend-vm-nic"
    }

        vms2={
       name= "vms2"
      location="CentralIndia"
       resource_group_name="rg-tinki"
      size = "Standard_B1s"
      admin_username      = "adminuser"
      admin_password = "Khushi@12345"
      virtual_network_name="vnet_khushi1"
      network_interface_name ="backend-vm-nic"
    }
}