output "resource_group" { value = azurerm_resource_group.rg.name }
output "vm_private_ip"  { value = azurerm_network_interface.nic.private_ip_address }
output "vm_public_ip"   { value = try(azurerm_public_ip.pip[0].ip_address, null) }

