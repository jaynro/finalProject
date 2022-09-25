resource "azurerm_network_interface" "test" {
  name                = "myVM-netwrok"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = ""
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = ""
  }
}

resource "azurerm_linux_virtual_machine" "test" {
  name                = "myVM"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  size                = "Standard_B1s"
  admin_username      = "azureuser"
  network_interface_ids = []
  admin_ssh_key {
    username   = "azureuser"
    public_key = file("~/.ssh/my_key.pub")
  }
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}
