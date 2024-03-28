Config = {}

Config.inventory = "ox" -- supported: OX and QB

Config.Blips = {
    -- Weapons Dealer
    {title = 'Suspicious Dealer', colour = 59, id = 303, coords = vector3(-33.28, -614.28, 35.08), scale = 0.6, useblip = true},

    -- High Tier Heist Supplies
    {title = 'Heist Supplies', colour = 59, id = 303, coords = vector3(1157.95, -791.37, 57.58), scale = 0.6, useblip = true},

    -- Low Tier Heist Supplies
    {title = 'Suspicious Dealer', colour = 59, id = 303, coords = vector3(781.73, 1296.52, 361.36), scale = 0.6, useblip = true}
}
-- Ped settings
Config.Peds = {
    -- Weapons Dealer
    {name = 'Suspicious Dealer', coords = vector4(-33.86, -614.68, 35.08, 152.72), model = 'cs_molly', scenario = 'WORLD_HUMAN_SMOKING', label = 'Speak to Gabriella', icon = 'fa-solid fa-shop', event = 'tr-blackmarket:OpenShop3', distance = 2.0},
    
    -- High Tier Heist Supplies
    {name = 'Heist Supplies', coords = vector4(1157.84, -790.84, 57.59, 197.6), model = 's_m_y_dealer_01', scenario = 'WORLD_HUMAN_SMOKING', label = 'Speak to Austin', icon = 'fa-solid fa-shop', event = 'tr-blackmarket:OpenShop2', distance = 2.0},

    -- Low Tier Heist Supplies
    {name = 'Suspicious Dealer', coords = vector4(781.74, 1296.68, 361.36, 175.55), model = 's_m_y_dealer_01', scenario = 'WORLD_HUMAN_SMOKING', label = 'Speak to Ryan', icon = 'fab fa-drupal', event = 'tr-blackmarket:OpenShop', distance = 2.0},
}
-- Icons for the menus 
Config.Icons = {
    EyeIcon = "fa-solid fa-face-smile-horns",
    Header = "fa-solid fa-person-rifle",
    Pistol = "fa-solid fa-gun",
    SubMachineGuns = "fa-solid fa-gun",
    Shotguns = "fa-solid fa-gun",
    AssaultWeapons = "fa-solid fa-gun",
    Miscellanceous = "fa-solid fa-icons",
    HeistSeller = "fa-solid fa-icons",
    CriminalShop = "fa-solid fa-face-smile-horns",
}
-- Menu Text | If you want your peds to feel more unique, you can create unique ped headers and assign them in the client.lua
Config.Text = {
    TargetLabel = "BlackMarket Seller",
    PedHeader = "BlackMarket Dealer",
    Pistols = "Pistols",
    SubMachineGuns = "SubMachine Guns",
    Shotguns = "Shotguns",
    AssaultWeapons = "Assault Rifles",
    Miscellanceous = "Miscellanceous",
    HeistSeller = 'Heist Supplies',
    CriminalShop = 'Criminal Shop',
}

-- Begin shops here
Config.PistolShop = {
    label = "Black Market Pistols",
    slots = 10,
    items = {
        [1] = {
            name = "weapon_pistol",
            price = 3000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_pistol_mk2",
            price = 1600,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_heavypistol",
            price = 3000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_marksmanpistol",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_snspistol_mk2",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_navyrevolver",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 6,
        }
    }
}

Config.SubMachineGunShop = {
    label = "Black Market SubMachine Guns",
    slots = 10,
    items = {
        [1] = {
            name = "weapon_microsmg",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_smg_mk2",
            price = 6000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_assaultsmg",
            price = 6500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_combatpdw",
            price = 6000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_machinepistol",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_minismg",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 6,
        }
    }
}
Config.CriminalShop = {
    label = "Criminal Suppies",
    slots = 4,
    items = {
        [1] = {
            name = "lockpick",
            price = 100,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "advancedlockpick",
            price = 1000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "labkey",
            price = 6500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_pistol_mk2",
            price = 6000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        }
    }
}

Config.ShotGunShop = {
    label = "Black Market ShotGuns",
    slots = 10,
    items = {
        [1] = {
            name = "weapon_pumpshotgun",
            price = 12000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_sawnoffshotgun",
            price = 8000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_bullpupshotgun",
            price = 12500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_dbshotgun",
            price = 13000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_heavyshotgun",
            price = 15000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_pumpshotgun_mk2",
            price = 10000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 6,
        }
    }
}

Config.AssaultWeaponsShop = {
    label = "Black Market Assault Weapon Shop",
    slots = 10,
    items = {
        [1] = {
            name = "weapon_assaultrifle",
            price = 26000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_assaultrifle_mk2",
            price = 30000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_carbinerifle_mk2",
            price = 42000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_compactrifle",
            price = 28500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_advancedrifle",
            price = 32000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_bullpuprifle_mk2",
            price = 36000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 6,
        }
    }
}

Config.HeistSeller = {
    label = "Black Market Heist Supplies",
    slots = 3,
    items = {
        [1] = {
            name = "trojan_usb",
            price = 26000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "thermite",
            price = 30000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "drill",
            price = 42000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        }
    }
}

Config.MiscellanceousShop = {
    label = "Black Market Miscellanceous Shop",
    slots = 8,
    items = {
        [1] = {
            name = "armor",
            price = 10000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "heavyarmor",
            price = 15000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "advancedlockpick",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 7,
        },
        [4] = {
            name = "gatecrack",
            price = 950000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 8,
        },
        [5] = {
            name = "pistol_ammo",
            price = 100,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 9,
        },
        [6] = {
            name = "rifle_ammo",
            price = 1500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 10,
        },
        [7] = {
            name = "smg_ammo",
            price = 1000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 11,
        },
        [8] = {
            name = "shotgun_ammo",
            price = 2000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 12,
        },
    }
}
-- End Shops 

