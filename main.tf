resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = "West Europe"
}

resource "azurerm_network_interface" "example" {
  name                = var.nicname
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name


  ip_configuration {
    name                          = var.ipname
    subnet_id                     = var.cidr
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.example.id


  }
}

resource "azurerm_public_ip" "example" {
  name                = "EskimooPublicIp1"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  allocation_method = "Dynamic"

}


resource "azurerm_linux_virtual_machine" "example" {
  name                = var.name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  size                            = "Standard_F2"
  disable_password_authentication = false
  admin_username                  = "adminuser"
  admin_password                  = "Password123!"
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}
