local TRClassicBlackMarketPed
-- Target and ped model

--Blips
CreateThread(function()
    for k, v in pairs(Config.Blips) do
        if v.useblip then
            v.blip = AddBlipForCoord(v['coords'].x, v['coords'].y, v['coords'].z)
            SetBlipSprite(v.blip, v.id)
            SetBlipDisplay(v.blip, 4)
            SetBlipScale(v.blip, v.scale)
            SetBlipColour(v.blip, v.colour)
            SetBlipAsShortRange(v.blip, true)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(v.title)
            EndTextCommandSetBlipName(v.blip)
        end
    end
end)
 -- Ped Spawning
        CreateThread(function()
            for k, v in pairs(Config.Peds) do
                RequestModel(GetHashKey(v.model))
                while not HasModelLoaded(GetHashKey(v.model)) do
                    Wait(1)
                end
                TRClassicBlackMarketPed = CreatePed(3, v.model, v['coords'].x, v['coords'].y, v['coords'].z-1, v['coords'].w, false, false)
                FreezeEntityPosition(TRClassicBlackMarketPed, true)
                SetEntityInvincible(TRClassicBlackMarketPed, true)
                SetBlockingOfNonTemporaryEvents(TRClassicBlackMarketPed, true)
                TaskStartScenarioInPlace(TRClassicBlackMarketPed, v.scenario, 0, true)
--Targeting Export
            exports['qb-target']:AddEntityZone('TRPed'..TRClassicBlackMarketPed, TRClassicBlackMarketPed, {
                name = 'TRPed'..TRClassicBlackMarketPed,
                heading = GetEntityHeading(TRClassicBlackMarketPed),
                debugPoly = false,
            }, {
                options = {
                    {   
                        icon = v.icon,
                        label = v.label,
                        event = v.event,
                        canInteract = function(entity)
                            if IsPedDeadOrDying(entity, true) or IsPedAPlayer(entity) or IsPedInAnyVehicle(PlayerPedId()) then return false end
                            return true
                        end,    
                    },
                },
                distance = v.distance
            })
        end
    end)
-- End Target

-- qb-menu 
-- First Shop| This is where you customize which shops get opened by this ped. |Default Weapons|
RegisterNetEvent('tr-blackmarket:OpenShop', function()
    local BlackMarket = {
        { header = Lang:t('PedHeader'), isMenuHeader = true, icon = Config.Icons["Header"] },
        { header = Lang:t('Pistols'), icon = Config.Icons['Pistol'], params = { event = "tr-blackmarket:PistolShop" } },
        { header = Lang:t('SubMachineGuns'), icon = Config.Icons['SubMachineGuns'], params = { event = "tr-blackmarket:SubMachineGunsShop" } },
        { header = Lang:t('Shotguns'), icon = Config.Icons['Shotguns'], params = { event = "tr-blackmarket:ShotGunsShop" } },
        { header = Lang:t('AssaultWeapons'), icon = Config.Icons['AssaultWeapons'], params = { event = "tr-blackmarket:AssaultWeaponsShop" } },
        { header = Lang:t('Miscellanceous'), icon = Config.Icons['Miscellanceous'], params = { event = "tr-blackmarket:MiscellanceousShop" } }
    }
    exports['qb-menu']:openMenu(BlackMarket)
end)

-- Second Shop| This is where you customize which shops get opened by this ped. |Default Heist Supplies|
RegisterNetEvent('tr-blackmarket:OpenShop2', function()
    local HeistSeller = {
        { header = Lang:t('PedHeader'), isMenuHeader = true, icon = Config.Icons["Header"] },
        { header = Lang:t('HeistSeller'), icon = Config.Icons['HeistSeller'], params = { event = "tr-blackmarket:HeistSeller" } }
    }
    exports['qb-menu']:openMenu(HeistSeller)
end)

-- Third Shop| This is where you customize which shops get opened by this ped. |Default Low Tier Supplies|
RegisterNetEvent('tr-blackmarket:OpenShop3', function()
    local CriminalShop = {
        { header = Lang:t('PedHeader'), isMenuHeader = true, icon = Config.Icons["Header"] },
        { header = Lang:t('CriminalShop'), icon = Config.Icons['CriminalShop'], params = { event = "tr-blackmarket:CriminalShop" } }
    }
    exports['qb-menu']:openMenu(CriminalShop)
end)



-- BlackMarket Shop Events
RegisterNetEvent("tr-blackmarket:PistolShop", function()
    if Config.Inventory == "qb" then
        TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.PistolShop)
        TriggerEvent("inventory:client:SetCurrentStash", stash)
    elseif Config.Inventory == "ox" then
        exports.ox_inventory:openInventory('shop', { type = 'pistolshopbm', id = 1 })
    end
end)

RegisterNetEvent("tr-blackmarket:SubMachineGunsShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.SubMachineGunShop)
end)

RegisterNetEvent("tr-blackmarket:HeistSeller", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.HeistSeller)
end)

RegisterNetEvent("tr-blackmarket:CriminalShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.CriminalShop)
end)

RegisterNetEvent("tr-blackmarket:ShotGunsShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.ShotGunShop)
end)

RegisterNetEvent("tr-blackmarket:AssaultWeaponsShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.AssaultWeaponsShop)
end)

RegisterNetEvent("tr-blackmarket:MiscellanceousShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.MiscellanceousShop)
end)

