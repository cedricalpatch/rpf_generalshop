data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent('sugar:sell')
AddEventHandler('sugar:sell', function()
    local _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local count = data.checkItem(_source, "sugar")
        if count == nil then
            TriggerClientEvent("redemrp_notification:start", _source, 'No tienes mas tabaco', 5)
        end
        if count >= 10 then
            print(count)
            data.delItem(_source,"sugar", 10)
            TriggerClientEvent('sell:general', _source)
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'No tienes mas tabaco', 5)
        end   
    end)
end)

RegisterServerEvent('corn:sell')
AddEventHandler('corn:sell', function()
    local _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local count = data.checkItem(_source, "corn")
        if count == nil then
            TriggerClientEvent("redemrp_notification:start", _source, 'No tienes mas tabaco', 5)
        end
        if count >= 10 then
            print(count)
            data.delItem(_source,"corn", 10)
            TriggerClientEvent('sell:general', _source)
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'No tienes mas tabaco', 5)
        end   
    end)
end)

AddEventHandler('tobacco:sell', function()
    local _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local count = data.checkItem(_source, "tobacco")
        if count == nil then
            TriggerClientEvent("redemrp_notification:start", _source, 'No tienes mas tabaco', 5)
        end
        if count >= 10 then
            print(count)
            data.delItem(_source,"tobacco", 10)
            TriggerClientEvent('sell:general', _source)
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'No tienes mas tabaco', 5)
        end   
    end)
end)

RegisterServerEvent('rpf:tobaccoseed')
AddEventHandler('rpf:tobaccoseed', function(price, item)
    local _item = item
    local _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user) 
        local identifier = user.getIdentifier()
        local charid = user.getSessionVar("charid")
        if user.getMoney() >= price then
                user.removeMoney(price)
                print(count)
                data.addItem(source,"tobaccoseed", 10)
                TriggerClientEvent('buy:general', _source)
        else
            TriggerClientEvent('Message:cancel', source)
        end
    end)
end)

RegisterServerEvent('rpf:wateringcan')
AddEventHandler('rpf:wateringcan', function(price, item)
    local _item = item
    local _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user) 
        local identifier = user.getIdentifier()
        local charid = user.getSessionVar("charid")
        if user.getMoney() >= price then
                user.removeMoney(price)
                print(count)
                data.addItem(source,"wateringcan", 10)
                TriggerClientEvent('buy:general', _source)
        else
            TriggerClientEvent('Message:cancel', source)
        end
    end)
end)

RegisterServerEvent('rpf:sugarcaneseed')
AddEventHandler('rpf:sugarcaneseed', function(price, item)
    local _item = item
    local _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user) 
        local identifier = user.getIdentifier()
        local charid = user.getSessionVar("charid")
        if user.getMoney() >= price then
                user.removeMoney(price)
                print(count)
                data.addItem(source,"sugarcaneseed", 10)
                TriggerClientEvent('buy:general', _source)
        else
            TriggerClientEvent('Message:cancel', source)
        end
    end)
end)

RegisterServerEvent('rpf:cornseed')
AddEventHandler('rpf:cornseed', function(price, item)
    local _item = item
    local _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user) 
        local identifier = user.getIdentifier()
        local charid = user.getSessionVar("charid")
        if user.getMoney() >= price then
                user.removeMoney(price)
                print(count)
                data.addItem(source,"cornseed", 10)
                TriggerClientEvent('buy:general', _source)
        else
            TriggerClientEvent('Message:cancel', source)
        end
    end)
end)