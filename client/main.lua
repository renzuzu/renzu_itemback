ESX = nil
local currentWeapon = nil
local loaded = false
local compodata = {}
local itemsdb = {}
local PlayerData = {}
Citizen.CreateThread(function()
	Wait(1)
	itemsdb = exports.ox_inventory:Items()
	ESX = exports['es_extended']:getSharedObject()
	ESX.PlayerData = ESX.GetPlayerData()
	PlayerData = ESX.PlayerData
	local componentitems = {}
	for item,v in pairs(itemsdb) do
		if v.client and v.client.component then
			componentitems[item] = v.client.component
		end
	end
	for k,v in pairs(components_data) do
		local compo = GetHashKey(v.name)
		v.model = GetHashKey(v.model)
		v.name = GetHashKey(v.name)
		for item,v2 in pairs(componentitems) do
			for k,v3 in pairs(v2) do
				if compo == v3 then
					v.item = item
				end
			end
		end
		compodata[compo] = v
	end
end)

local onback = {}
local items = {}
RegisterNetEvent('esx:playerLoaded', function(playerData)
	for k,v in pairs(onback) do
		if DoesEntityExist(v.entity) then
			DeleteAttachments(v)
			ReqAndDelete(v.entity)
		end
	end
	PlayerData = playerData
	onback = {}
end)

startingup = true
RegisterNetEvent("ox_inventory:setPlayerInventory", function(currentDrops, inventory, weight, esxItem, player, source)
	items = inventory
	PlayerData.inventory = inventory
	for k,v in pairs(items) do
		ItemBack(v.name)
	end
	startingup = false
	LocalPlayer.state:set('ownedobjects',onback,true)
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	for k,v in pairs(onback) do
		if DoesEntityExist(v.entity) then
			DeleteAttachments(v)
			ReqAndDelete(v.entity)
		end
	end
	onback = {}
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

GetWeaponComponents = function(weapon)
	local components = {}
	local hascomponents = false
	local data = exports.ox_inventory:Search('slots', weapon:lower())
    if data then
        for k,v in pairs(data) do
			for k,v2 in pairs(v) do
				if v2.metadata and v2.metadata.components then
					for k,v3 in pairs(v2.metadata.components) do
						for k,v4 in pairs(compodata) do
							if v4.item == v3 then
								components[v3] = v4
								hascomponents = true
							end
						end
						
					end
				end
			end
		end
    end
	return hascomponents, components
end

ItemBack = function(name)
	local itemname = name
	local data = Config[itemname]
	local save = false
	if data and not onback[itemname] and currentWeapon and itemname ~= currentWeapon.name 
		or currentWeapon == nil and data and not onback[itemname] then
		local model = data["model"]
		local ped = cache.ped
		local bone = GetPedBoneIndex(ped, data["back_bone"])
		lib.requestModel(model)
		SetModelAsNoLongerNeeded(model)
		local ent = CreateObject(GetHashKey(model), GetEntityCoords(cache.ped)-vec3(0.0,0.0,5.0), true, true, false)
		while not DoesEntityExist(ent) do Wait(1) end
		while not NetworkGetEntityIsNetworked(ent) do Wait(1) NetworkRegisterEntityAsNetworked(ent) end
		if not onback[itemname] then onback[itemname] = {} end
		onback[itemname] = {net = NetworkGetNetworkIdFromEntity(ent), entity = ent}
		save = true
		local y = data["y"]  
		AttachEntityToEntity(ent, ped, bone, data["x"], y, data["z"], data["x_rotation"], data["y_rotation"], data["z_rotation"], 0, 1, 0, 1, 0, 1)
		SetEntityCompletelyDisableCollision(ent, false, true)	
		if string.find(itemname:upper(), "WEAPON_") then
			local hascompo, components = GetWeaponComponents(itemname)
			if hascompo then
				for k,v in pairs(components) do
					if compodata[v.name].item == k and IsModelInCdimage(v.model) then
						local bone = GetEntityBoneIndexByName(ent, v.bone)
						lib.requestModel(v.model)
						local componentEntity = CreateObjectNoOffset(v.model,GetEntityCoords(cache.ped)-vec3(0.0,0.0,5.0), true, true)
						while not DoesEntityExist(componentEntity) do Wait(1) end
						NetworkRegisterEntityAsNetworked(componentEntity)
						while not NetworkGetEntityIsNetworked(componentEntity) do Wait(1) NetworkRegisterEntityAsNetworked(componentEntity) end
						if onback[itemname]['components'] == nil then
							onback[itemname]['components'] = {}
						end
						table.insert(onback[itemname]['components'],NetworkGetNetworkIdFromEntity(componentEntity))
						SetEntityCollision(componentEntity, false, false)
						AttachEntityToEntity(componentEntity, ent, bone, 0.0 , 0.0 , 0.00, 0.0 , 0.0 , 0.0, true, true, false, false, 1, true)
					end
				end
			end
		end
	end
	if save and not startingup then
		LocalPlayer.state:set('ownedobjects',onback,true)
	end
end

lastweapon = nil

DeleteAttachments = function(data)
	if data and data.components then
		for k,v in pairs(data.components) do
			if DoesEntityExist(NetworkGetEntityFromNetworkId(v)) then
				DeleteEntity(NetworkGetEntityFromNetworkId(v))
			end
		end
	end
end

AddEventHandler('ox_inventory:currentWeapon', function(cw)
	if currentWeapon and lastweapon and lastweapon ~= currentWeapon.name then
		ItemBack(lastweapon)
		lastweapon = currentWeapon.name
		currentWeapon = nil
	end
	currentWeapon = cw
	if currentWeapon ~= nil and GetHashKey(currentWeapon.name) ~= GetHashKey('WEAPON_UNARMED') then
		local ped = cache.ped
		ItemBack(lastweapon)
		for k,v in pairs(items) do
			if onback[v.name] and v.name == currentWeapon.name then
				DeleteAttachments(onback[v.name])
				ReqAndDelete(onback[v.name].entity)
				onback[v.name] = nil
			end
			lastweapon = v.name
		end
	elseif currentWeapon and GetHashKey(currentWeapon.name) == GetHashKey('WEAPON_UNARMED') then
		ItemBack(lastweapon)
		lastweapon = currentWeapon.name
		currentWeapon = nil
	elseif currentWeapon == nil and not onback[lastweapon] and lastweapon then
		ItemBack(lastweapon)
	end
end)

RegisterNetEvent('esx:removeInventoryItem', function(name,count)
	local item = exports.ox_inventory:Search('slots', name)
	local count = 0
	for _, v in pairs(item) do
		count = count + v.count
	end
	if count <= 0 and onback[name] then
		DeleteAttachments(onback[name])
		ReqAndDelete(onback[name].entity)
		onback[name] = nil
		for k,v in pairs(items) do
			if name == v.name then
				items[k] = nil
			end
		end
	end
end)

RegisterNetEvent('esx:addInventoryItem', function(name,count)
	local exist = false
	for k,v in pairs(items) do
		if name == v.name then
			exist = true
		end
	end
	if not exist then
		table.insert(items, {name = name, count = count})
		ItemBack(name)
	else
		for k,v in pairs(items) do
			if name == v.name then
				items[k].count = items[k].count + count
			end
		end
	end
end)

ToggleItemBack = function(bool)
	for k,v in pairs(onback) do
		SetEntityVisible(v.entity,bool)
	end
end

-- used for clothing shops or if you dont want to show the objects
RegisterNetEvent('toggleprops', ToggleItemBack)
exports('ToggleItemBack', ToggleItemBack)

ToggleItemBackSingle = function(name,bool)
	for k,v in pairs(onback) do
		if k == name then
			SetEntityVisible(v.entity,bool)
		end
	end
end

-- same with above but to toggle single object only
RegisterNetEvent('togglesingle', ToggleItemBackSingle)
exports('ToggleItemBackSingle', ToggleItemBackSingle)

local bool = true
RegisterCommand('toggleprops', function (source, args)
	ToggleItemBack(not bool)
	bool = not bool
end)

function ReqAndDelete(object, detach)
    if NetworkGetEntityIsNetworked(object) then
        if DoesEntityExist(object) and NetworkGetEntityOwner(object) == PlayerId() then
            TriggerServerEvent('deleteentity', NetworkGetNetworkIdFromEntity(object))
        end
    else
        DeleteEntity(object)
		SetEntityCoords(object,0.0,0.0,0.0)
    end
end