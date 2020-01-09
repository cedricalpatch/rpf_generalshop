--- RPF Studio Developement 

-- Credit : https://github.com/cedricalpatch

-- general shop 0.2 WIP

Citizen.CreateThread(function()
    WarMenu.CreateMenu('general', "General Shop")
    WarMenu.SetSubTitle('general', 'Buy or Sell some stock')
    WarMenu.CreateSubMenu('buy', 'general', 'Buy some stock')
     WarMenu.CreateSubMenu('sell', 'general', 'Sell some stock')

    while true do

        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(PlayerPedId())

        if WarMenu.IsMenuOpened('general') then
            if WarMenu.MenuButton('Buy Stock', 'buy') then
            end
            if WarMenu.MenuButton('Sell Stock', 'sell') then
            end
            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('buy') then
            if WarMenu.Button('Buy tabac seed for 10$') then
                        TriggerServerEvent("rpf:tobaccoseed", 10)  
            elseif WarMenu.Button('Buy sugarcane seed for 10$') then
                        TriggerServerEvent("rpf:sugarcaneseed", 10) 
            elseif WarMenu.Button('Buy corn seed for 10$') then
                        TriggerServerEvent("rpf:cornseed", 10)
            elseif WarMenu.Button('Buy Waterican for 10$') then
                        TriggerServerEvent("rpf:wateringcan", 10)
            end
            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('sell') then
            if WarMenu.Button('Sell Tabac 10') then
                TriggerServerEvent("tobacco:sell")  
            elseif WarMenu.Button('Sell corn 10') then
                TriggerServerEvent("corn:sell")  
            elseif WarMenu.Button('Sell Sugar 10') then
                TriggerServerEvent("sugar:sell")  
            end
            WarMenu.Display()
        elseif (Vdist(coords.x, coords.y, coords.z, -322.25, 803.97, 116.95) < 2.0) then
               TriggerEvent("enter:general")
               if whenKeyJustPressed(keys["E"]) then
                WarMenu.OpenMenu('general')
               end
        elseif (Vdist(coords.x, coords.y, coords.z, -785.2388, -1323.848, 43.88416) < 2.0) then --f6
            TriggerEvent("enter:general")
            if whenKeyJustPressed(keys["E"]) then
            WarMenu.OpenMenu('general')
            end
        end
        Citizen.Wait(0)
    end
end)


RegisterNetEvent('sell:general')
AddEventHandler('sell:general', function()
    DisplayHelp('You have been sell you stock.')
end)

RegisterNetEvent('buy:general')
AddEventHandler('buy:general', function()
    DisplayHelp('You have been buy you stock.')
end)

RegisterNetEvent('enter:general')
  AddEventHandler('enter:general', function()
    SetTextScale(0.5, 0.5)
    local msg = "Press [E] to see the General Shop."
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())

    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
  end)