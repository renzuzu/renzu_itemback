ESX						= nil
local currentWeapon = nil
viewer = false
local loaded = false
local compodata = {}
local items = {}
Citizen.CreateThread(function()
	Wait(1)
	items = exports.ox_inventory:Items()
	ESX = exports['es_extended']:getSharedObject()
	ESX.PlayerData = ESX.GetPlayerData()
	PlayerData = ESX.PlayerData
	player = LocalPlayer.state
	Wait(2000)
	loaded = ESX.PlayerLoaded
	local componentitems = {}
	for item,v in pairs(items) do
		if v.client and v.client.component then
			componentitems[item] = v.client.component
		else
			items[item] = nil
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
active = false
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
	for k,v in pairs(onback) do
		if DoesEntityExist(v.entity) then
			DeleteAttachments(v)
			ReqAndDelete(v.entity)
		end
	end
	onback = {}
	Wait(5000)
	active = true
	loaded = true
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	loaded = false
	active = false
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
	loaded = true
end)

local items = {}
RegisterNetEvent("itemsonback")
AddEventHandler('itemsonback', function(data)
	items = data
end)

RegisterCommand('itemsonback', function(source,args)
	Wait(1000)
	active = true
end)

GetWeaponComponents = function(weapon)
	local components = {}
	local hascomponents = false
	local data = exports.ox_inventory:Search('slots', weapon:lower())
    if data then
        for k,v in pairs(data) do
			for k,v in pairs(v) do
				if v.metadata.components then
					for k,v in pairs(v.metadata.components) do
						for k,v2 in pairs(compodata) do
							if v2.item == v then
								components[v] = v2
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

function StartThread() -- temporary logic, to be reworked to non looped, later im lazy,  but it doesnt matter this dont consume much cpu. 0.0 or 0.01 most of the time
	Citizen.CreateThread(function()
		while true do
			while not active or not loaded do Wait(1000) end
			local ped = cache.ped
			local save = false
			for k,v in pairs(items) do
				local name = k
				local itemname = v.name
				local data = Config[itemname]
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
					--print(data , not onback[v.name] , currentWeapon and v.name ~= currentWeapon.name,currentWeapon)
					local y = data["y"]  
					AttachEntityToEntity(ent, ped, bone, data["x"], y, data["z"], data["x_rotation"], data["y_rotation"], data["z_rotation"], 0, 1, 0, 1, 0, 1)
					SetEntityCompletelyDisableCollision(ent, false, true)	
					local hascompo, components = GetWeaponComponents(itemname)
					if string.find(itemname:upper(), "WEAPON_") and hascompo then
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
				if data and onback[v.name] then
					if onback[v.name].entity and not DoesEntityExist(onback[v.name].entity) then
						onback[v.name] = nil
					end
				end
			end
			if save then
				TriggerServerEvent('saveprop',onback) -- save net ids so we can properly removed objects
			end
			Wait(1000)
		end
	end)
end

RegisterNetEvent("ox_inventory:setPlayerInventory")
AddEventHandler('ox_inventory:setPlayerInventory', function(currentDrops, inventory, weight, esxItem, player, source)
	items = inventory
end)

StartThread()

lastweapon = nil

DeleteAttachments = function(data)
	if data and data.components then
		for k,v in pairs(data.components) do
			print(NetworkGetEntityFromNetworkId(v),v)
			if DoesEntityExist(NetworkGetEntityFromNetworkId(v)) then
				print('delete',v)
				DeleteEntity(NetworkGetEntityFromNetworkId(v))
			end
		end
	end
end

AddEventHandler('ox_inventory:currentWeapon', function(cw)
	if currentWeapon and lastweapon and lastweapon ~= currentWeapon.name then
		currentWeapon = nil
	end
	currentWeapon = cw
	if currentWeapon ~= nil and GetHashKey(currentWeapon.name) ~= GetHashKey('WEAPON_UNARMED') then
		local ped = PlayerPedId()
		for k,v in pairs(items) do
			if onback[v.name] and v.name == currentWeapon.name then
				DeleteAttachments(onback[v.name])
				ReqAndDelete(onback[v.name].entity)
				onback[v.name] = nil
			end
			lastweapon = v.name
		end
	elseif currentWeapon and GetHashKey(currentWeapon.name) == GetHashKey('WEAPON_UNARMED') then
		currentWeapon = nil
	end
end)

RegisterNetEvent('esx:removeInventoryItem')
AddEventHandler('esx:removeInventoryItem', function(name,count)
	local item = exports.ox_inventory:Search('slots', name)
	local count = 0
	for _, v in pairs(item) do
		print(v.slot..' contains '..v.count..' '..name..'')
		count = count + v.count
	end
	if count <= 0 then
		DeleteAttachments(onback[name])
		ReqAndDelete(onback[name].entity)
		onback[name] = nil
		for k,v in pairs(items) do
			if name == v.name then
				items[k] = nil
			end
		end
	end
	print("REMOVED ITEM INV"..name,count)
end)

RegisterNetEvent('esx:addInventoryItem')
AddEventHandler('esx:addInventoryItem', function(name,count)
	local exist = false
	for k,v in pairs(items) do
		if name == v.name then
			exist = true
		end
	end
	if not exist then
		table.insert(items, {name = name, count = count})
	else
		for k,v in pairs(items) do
			if name == v.name then
				items[k].count = items[k].count + count
			end
		end
	end
end)

RegisterNetEvent('toggleprops') -- used for clothing shops or if you dont want to show the objects
AddEventHandler('toggleprops', function(bool)
	for k,v in pairs(onback) do
		SetEntityVisible(v.entity,bool)
	end
end)

RegisterNetEvent('togglesingle') -- same with above but to toggle single object only
AddEventHandler('togglesingle', function(name,bool)
	for k,v in pairs(onback) do
		if k == name then
			SetEntityVisible(v.entity,bool)
		end
	end
end)

function ReqAndDelete(object, detach)
    if NetworkGetEntityIsNetworked(object) then
        if DoesEntityExist(object) and NetworkGetEntityOwner(object) == PlayerId() then
            TriggerServerEvent('deleteentity', NetworkGetNetworkIdFromEntity(object))
            --print("sending server request delete")
        end
    else
        DeleteEntity(object)
		SetEntityCoords(object,0.0,0.0,0.0)
        --print("deleting Object locally")
    end
end