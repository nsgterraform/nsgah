
orib_securityrule = [
{
                access                                     = "Allow"
                destination_address_prefix                 = "*"
                destination_address_prefixes               = []
                destination_application_security_group_ids = []
                destination_port_range                     = null
                destination_port_ranges                    = [
                    "8080",
                    "90",
                ]
                direction                                  = "Inbound"
                name                                       = "allow100"
                priority                                   = 100
                protocol                                   = "Tcp"
                source_address_prefix                      = null
                source_address_prefixes                    = [
                    "192.168.0.0/24",
                    "192.168.1.0/24",
                ]
                source_application_security_group_ids      = []
                source_port_range                          = null
                source_port_ranges                         = [
                    "20",
                    "30",
                    "40",
                ]
            },
            {
                access                                     = "Allow"
                destination_address_prefix                 = "*"
                destination_address_prefixes               = []
                destination_application_security_group_ids = []
                destination_port_range                     = "80"
                destination_port_ranges                    = []
                direction                                  = "Inbound"
                name                                       = "allow110"
                priority                                   = 110
                protocol                                   = "Tcp"
                source_address_prefix                      = "*"
                source_address_prefixes                    = []
                source_application_security_group_ids      = []
                source_port_range                          = "*"
                source_port_ranges                         = []
            },
            {
                access                                     = "Allow"
                destination_address_prefix                 = "*"
                destination_address_prefixes               = []
                destination_application_security_group_ids = []
                destination_port_range                     = "80"
                destination_port_ranges                    = []
                direction                                  = "Inbound"
                name                                       = "allow120"
                priority                                   = 120
                protocol                                   = "Tcp"
                source_address_prefix                      = "*"
                source_address_prefixes                    = []
                source_application_security_group_ids      = []
                source_port_range                          = "*"
                source_port_ranges                         = []
            },

        ]