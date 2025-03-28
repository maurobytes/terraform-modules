resource "azurerm_virtual_network" "vnet" {
    name               = var.vnet_name
    location           = "East US"
    resource_group_name = "demo-resource-group"
    address_space = var.address_space
}

resource "azurerm_subnet" "subnets" {
    for_each = var.subnets

    name = each.key
    resource_group_name = "demo-resource-group"
    virtual_network_name = azurerm_virtual_network.vnet
    address_prefixes = [each.value]
}