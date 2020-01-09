local blips = {
	{ name = 'General Shop', sprite = 1475879922, x=-322.25, y=803.97, z=116.95 },
	{ name = 'General Shop', sprite = 1475879922, x=-784.885, y=-1324.067, z=43.88416 },
}

Citizen.CreateThread(function()
	for _, info in pairs(blips) do
        local blip = N_0x554d9d53f696d002(1664425300, info.x, info.y, info.z)
        SetBlipSprite(blip, info.sprite, 1)
		SetBlipScale(blip, 0.2)
		Citizen.InvokeNative(0x9CB1A1623062F402, blip, info.name)
    end  
end)

--------------------------------------------------------

function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end


function DisplayHelp(_message, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
 local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", _message, Citizen.ResultAsLong())
    SetTextScale(w, h)
    SetTextCentre(centre)
    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
end