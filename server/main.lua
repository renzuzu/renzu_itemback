ESX = exports['es_extended']:getSharedObject()
ObjectList = {}
local playercache = {}

local already = {}
local props = {}
RegisterServerEvent("esx_multicharacter:relog")
AddEventHandler('esx_multicharacter:relog', function()
	local source = source
	for src,v in pairs(props) do
		for k,v in pairs(v) do
			--print(k,v,v.net,DoesEntityExist(NetworkGetEntityFromNetworkId(v.net)))
			if src == source and DoesEntityExist(NetworkGetEntityFromNetworkId(v.net)) then
				local ent = Entity(NetworkGetEntityFromNetworkId(v.net)).state
				if tonumber(ent.owner) == tonumber(src) then
					DeleteEntity(NetworkGetEntityFromNetworkId(v.net))
					--print("deleting itemback prop from ID:"..source)
				end
			end
		end
	end
end)

AddEventHandler("playerDropped",function()
	local source = source
	local new = false
	for src,v in pairs(props) do
		for k,v in pairs(v) do
			if src == source and DoesEntityExist(NetworkGetEntityFromNetworkId(v.net)) then
				local ent = Entity(NetworkGetEntityFromNetworkId(v.net)).state
				if tonumber(ent.owner) == tonumber(src) then
					DeleteEntity(NetworkGetEntityFromNetworkId(v.net))
					--print("deleting itemback prop from ID:"..source)
				end
			end
		end
	end
end)

RegisterNetEvent("saveprop") -- save entity to server for deletion purpose
AddEventHandler('saveprop', function(data)
	props[source] = data
	for k,v in pairs(data) do
		if DoesEntityExist(NetworkGetEntityFromNetworkId(v.net)) then
			local ent = Entity(NetworkGetEntityFromNetworkId(v.net)).state
			EnsureEntityStateBag(NetworkGetEntityFromNetworkId(v.net))
			ent:set('owner', source, true) -- make sure the object is owned, netids are migrating!, this is just in case
			--print('Entity Object State:',ent.owner)
		end
	end
end)

RegisterNetEvent('deleteentity')
AddEventHandler('deleteentity', function(net)
    local ent = NetworkGetEntityFromNetworkId(net)
    --print("Requesting delete Entity: "..NetworkGetEntityOwner(ent),net,ent)
    if DoesEntityExist(ent) then
        if NetworkGetEntityOwner(ent) == source then
            DeleteEntity(ent)
        end
    end
end)