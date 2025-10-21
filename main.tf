resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.location
}

resource "azurem_network_security_group" "example_nsg"{
    name = "iac-dev-nsg"
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
}

resource "azurem_network_security_rule" "insecure_ssh"{
    name = "Allow-SSH-Pubilc"
    priority = 100
    direction = "Inbound"
    acess = "Allow"
    protocol = "Tcp"
    source_port_rang = "*"
    description_port_rang ="22"
    source_address_prefix = "*"
    description_address_prefix = "*"
    network_security_group_name = azurem_network_security_group.example_nsg
    resource_group_name = azurerm_resource_group.rg.name
}