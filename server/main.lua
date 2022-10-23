ESX = exports['es_extended']:getSharedObject()
local props = {}
RegisterNetEvent("esx_multicharacter:relog", function()
	local source = source
	for src,v in pairs(props) do
		if v.components then
			for k,v in pairs(v.components) do
				if DoesEntityExist(NetworkGetEntityFromNetworkId(v)) then
					DeleteEntity(NetworkGetEntityFromNetworkId(v))
				end
			end
		end
		for k,v in pairs(v) do
			if src == source and DoesEntityExist(NetworkGetEntityFromNetworkId(v.net)) then
				DeleteEntity(NetworkGetEntityFromNetworkId(v.net))
			end
		end
	end
end)

AddEventHandler("playerDropped",function()
	local source = source
	local new = false
	for src,v in pairs(props) do
		if v.components then
			for k,v in pairs(v.components) do
				if DoesEntityExist(NetworkGetEntityFromNetworkId(v)) then
					DeleteEntity(NetworkGetEntityFromNetworkId(v))
				end
			end
		end
		for k,v in pairs(v) do
			if src == source and DoesEntityExist(NetworkGetEntityFromNetworkId(v.net)) then
				DeleteEntity(NetworkGetEntityFromNetworkId(v.net))
			end
		end
	end
end)

RegisterNetEvent('deleteentity', function(net)
    local ent = NetworkGetEntityFromNetworkId(net)
    if DoesEntityExist(ent) then
        if NetworkGetEntityOwner(ent) == source then
            DeleteEntity(ent)
        end
    end
end)

AddStateBagChangeHandler('ownedobjects' --[[key filter]], nil --[[bag filter]], function(bagName, key, value, _unused, replicated)
	if value == nil then return end
	local net = tonumber(bagName:gsub('player:', ''), 10)
	local value = value
	props[net] = value
end)