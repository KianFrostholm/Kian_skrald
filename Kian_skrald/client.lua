-- Script by Kian Frostholm
-- Discord: Kian Frostholm #0001

Citizen.CreateThread(function()

    local skraldespande = {
        1437508529,
        -130812911,
        1329570871,
        218085040,
        666561306,
        -58485588,
        1511880420,
        682791951,
        1614656839,
        600967813,
    }

	exports['bt-target']:AddTargetModel(skraldespande, {
        options = {
            {
                event = "Kian_trash:animation",
                icon = "fas fa-dumpster",
                label = "Rod i skrald",
            },
		},
        job = {"all"},
        distance = 2.5
    })
end)


RegisterNetEvent('Kian_trash:animation')
AddEventHandler('Kian_trash:animation', function()
    TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
    exports['progressBars']:startUI(cfg.time*1000, "Roder i skrald")
    Citizen.Wait(cfg.time*1000)
    TriggerServerEvent('Kian_trash:rodskrald')
    ClearPedTasks(PlayerPedId())
end)