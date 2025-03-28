output "vnet_id" {
    description = "The ID of the Virtual Network"
    value       = azurerm_virtual_network.vnet.id
}

output "subnets_ids" {
    description = "A map of subnets to their IDs"
    value       = { for s, subnet in azurerm_subnets.subnets : s => subnet.id }
}