resource "azurerm_network_interface" "vinterface" {
  name                = "example-nic"
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}
  resource "azurerm_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.vinterface.id]
  vm_size               = var.vm_size
  storage_image_reference {
    publisher = var.image_publisher 
    offer     = var.image_offer 
    sku       = var.image_sku 
    version   = var.image_version 
  }
  

  storage_os_disk {
    name              = var.d_name 
    caching           = var.d_caching 
    create_option     = var.d_create_option 
    managed_disk_type = var.d_managed_disk_type 
  }
  
  os_profile {
    computer_name  = var.h_name
    admin_username =var.h_admin 
    admin_password = var.h_passwd
  }
  os_profile_linux_config {
    disable_password_authentication = var.disable_password_authentication 
  }
  tags = {
    environment = var.env_tag 
  
}
  }
