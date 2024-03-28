RegisterNetEvent("trbm:shop:pistol", function()
    exports.ox_inventory:RegisterShop('pistolshopbm', {
        name = 'Pistol Shop',
        inventory = {
            { name = 'burger', price = 10 },
            { name = 'water', price = 10 },
            { name = 'cola', price = 10 },
        },
        locations = {
            vec3(223.832962, -792.619751, 30.695190),
        },
    })
end)