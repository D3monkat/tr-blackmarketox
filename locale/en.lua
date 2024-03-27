local Translations = {
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

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})