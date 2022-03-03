-- Script by Kian Frostholm
-- Discord: Kian Frostholm #0001

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","Kian_trash")


RegisterNetEvent('Kian_trash:rodskrald')
AddEventHandler('Kian_trash:rodskrald', function()
    local user_id = vRP.getUserId({source})
    local target = vRP.getUserSource({user_id})
    local value = math.random (1, 1000)
    local penge = math.random(cfg.Min, cfg.Max)

    if value == 996 or value == 997 or value == 998 then

        vRP.givepenge({user_id, penge})
        vRPclient.notify(target, {"Du fandt "..penge .."DKK"})

    elseif value == 999 then

        vRP.givepenge({user_id, penge})
        vRPclient.notify(target, {"Du fandt "..penge .."DKK"})

    elseif value > 760 and value <= 799 then

        vRP.giveInventoryItem({user_id, 'kokain', 1, true})

    elseif value >= 860 and value <= 899 then

        vRP.giveInventoryItem({user_id, 'bread', 1, true})

    elseif value >= 960 and value <= 995 then
        
        vRP.giveInventoryItem({user_id, 'water', 1, true})

    elseif value >= 400 and value <= 699 then

        vRP.giveInventoryItem({user_id, 'lockpick', 1, true})

    else
        vRPclient.notify(target,{"Skraldespanden er tom"})

    end

end)