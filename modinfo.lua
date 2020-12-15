name = "backpack-improved"
description = [[
    more slots == more happiness
]]

author = "CG"
version = "1.0"

api_version = 10
api_version_dst = 10

client_only_mod = false
dont_starve_compatible = true
dst_compatible = true
reigon_of_giants_compatible = true
all_clients_require_mod = true

configuration_options = {
    {
        name = "BACKPACKIMPROVED_GENERNAL",
        label = "General backpack config",
        options = {
            {
                {description = "8(default)", data = 8},
                {description = "20", data = 20},
                {description = "30", data = 30},
                {description = "40", data = 40},
                {description = "50", data = 40},
                {description = "60", data = 40},
                {description = "70", data = 40},
                {description = "80", data = 80},
                {description = "100", data = 100},
                {description = "150", data = 150},
            },
            default = 8,
        }

    },
    {
        name = "BACKPACKIMPROVED_PIGPACK",
        label = "Pigpack config",
        options = {
            {
                {description = "12(default)", data=12},
                {description = "20", data = 20},
                {description = "30", data = 30},
                {description = "40", data = 40},
                {description = "50", data = 40},
                {description = "60", data = 40},
                {description = "70", data = 40},
                {description = "80", data = 80},
                {description = "100", data = 100},
                {description = "150", data = 150},
            },
            default = 15,
        }

    },
    {
        name = "BACKPACKIMPROVED_KRAMPUSSACK",
        label = "KRAMPUSSACK backpack config",
        options = {
            {
                {description = "14(default)", data=14},
                {description = "20", data = 20},
                {description = "30", data = 30},
                {description = "40", data = 40},
                {description = "50", data = 40},
                {description = "60", data = 40},
                {description = "70", data = 40},
                {description = "80", data = 80},
                {description = "100", data = 100},
                {description = "150", data = 150},
            },
            default = 20,
        }

    }
}