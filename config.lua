-- Item registration
-- some item included in default are from my server remove it if you dont have the item
Config = {
    ["lpmedkit"] = { -- Item Name
        model="prop_ld_health_pack", -- Model you want to display
        back_bone = 23553, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = 1.3877787807814e-17,
        y = 0.2,
        z = -1.3877787807814e-17,
        -- Rotaion of the object.
        x_rotation = 2.5,
        y_rotation = -272.00000000003,
        z_rotation = 0.0,
    },
	["detector"] = { -- Item Name
        model="w_am_digiscanner", -- Model you want to display
        back_bone = 23553, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = 0.22,
        y = -0.13,
        z = -0.05,
        -- Rotaion of the object.
        x_rotation = -124.21,
        y_rotation = 4.48,
        z_rotation = -30.5,
    },
	["pickaxe"] = { -- Item Name
        model="prop_tool_pickaxe", -- Model you want to display
        back_bone = 24817, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = -0.05,
        y = -0.09,
        z = 0.08,
        -- Rotaion of the object.
        x_rotation = 5.0,
        y_rotation = -244.72,
        z_rotation = -1.5,
    },
	["hotdogaxe"] = { -- Item Name
        model="hotdog", -- Model you want to display
        back_bone = 24817, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = -0.05,
        y = -0.09,
        z = 0.08,
        -- Rotaion of the object.
        x_rotation = 5.0,
        y_rotation = -244.72,
        z_rotation = -1.5,
    },
	["minecraftaxe"] = { -- Item Name
        model="minecraft", -- Model you want to display
        back_bone = 24817, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = -0.05,
        y = -0.09,
        z = 0.08,
        -- Rotaion of the object.
        x_rotation = 5.0,
        y_rotation = -244.72,
        z_rotation = -1.5,
    },
	["baglvl1"] = { -- Item Name
        model="prop_michael_backpack", -- Model you want to display
        back_bone = 24817, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = 0.2,
        y = -0.15,
        z = 0.0,
        -- Rotaion of the object.
        x_rotation = 9.0,
        y_rotation = -100.17,
        z_rotation = 193.87,
    },
	["baglvl2"] = { -- Item Name
        model="vw_prop_vw_backpack_01a", -- Model you want to display
        back_bone = 24817, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = -0.1 ,
        y = -0.1,
        z = 0.0099999999999992,
        -- Rotaion of the object.
        x_rotation = -1.4999999999999 ,
        y_rotation = -94.969999999999,
        z_rotation =  193.87,
    },
	["baglvl3"] = { -- Item Name
        model="sf_prop_sf_backpack_03a", -- Model you want to display
        back_bone = 24817, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = 0.2,
        y = -0.15,
        z = 0.0,
        -- Rotaion of the object.
        x_rotation = 9.0,
        y_rotation = -100.17,
        z_rotation = 193.87,
    },
    ["black_money"] = { -- Item Name
        model="prop_money_bag_01", -- Model you want to display
        back_bone = 24818, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = -0.4,
        y = -0.17,
        z = -0.12,
        -- Rotaion of the object.
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 0.0,
    },
	["ammo-rifle"] = { -- Item Name
		model="w_ar_m16_mag2", -- Model you want to display
		back_bone = 23553, -- PED bone the entity is attached to.
		-- Location of the model on the players back. Note this is and offset relative to the players bone coords.
		x = 0.0,
		y = 0.0,
		z = 0.19,
		-- Rotaion of the object.
		x_rotation = 95.0,
		y_rotation = 6.0,
		z_rotation = -281.0
    },
	["ammo-rifle2"] = { -- Item Name
        model="w_ar_m16_mag2", -- Model you want to display
        back_bone = 23553, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = 0.0,
        y = 0.0,
        z = 0.19,
        -- Rotaion of the object.
        x_rotation = 95.0,
        y_rotation = 6.0,
        z_rotation = -281.0,
    },
	["ammo-22"] = { -- Item Name
	model="w_pi_combatpistol_mag1", -- Model you want to display
	back_bone = 23553, -- PED bone the entity is attached to.
	-- Location of the model on the players back. Note this is and offset relative to the players bone coords.
	x = 0.09,
	y = -0.08,
	z = 0.14,
	-- Rotaion of the object.
	x_rotation = 92.69,
	y_rotation = 6.43,
	z_rotation = 69.75,
    },
	["ammo-38"] = { -- Item Name
	model="w_pi_combatpistol_mag1", -- Model you want to display
	back_bone = 23553, -- PED bone the entity is attached to.
	-- Location of the model on the players back. Note this is and offset relative to the players bone coords.
	x = 0.09,
	y = -0.08,
	z = 0.14,
	-- Rotaion of the object.
	x_rotation = 92.69,
	y_rotation = 6.43,
	z_rotation = 69.75,
    },
	["ammo-44"] = { -- Item Name
	model="w_pi_combatpistol_mag1", -- Model you want to display
	back_bone = 23553, -- PED bone the entity is attached to.
	-- Location of the model on the players back. Note this is and offset relative to the players bone coords.
	x = 0.09,
	y = -0.08,
	z = 0.14,
	-- Rotaion of the object.
	x_rotation = 92.69,
	y_rotation = 6.43,
	z_rotation = 69.75,
    },
	["ammo-45"] = { -- Item Name
	model="w_pi_combatpistol_mag1", -- Model you want to display
	back_bone = 23553, -- PED bone the entity is attached to.
	-- Location of the model on the players back. Note this is and offset relative to the players bone coords.
	x = 0.09,
	y = -0.08,
	z = 0.14,
	-- Rotaion of the object.
	x_rotation = 92.69,
	y_rotation = 6.43,
	z_rotation = 69.75,
    },
	["ammo-50"] = { -- Item Name
        model="w_pi_combatpistol_mag1", -- Model you want to display
        back_bone = 23553, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = 0.09,
        y = -0.08,
        z = 0.14,
        -- Rotaion of the object.
        x_rotation = 92.69,
        y_rotation = 6.43,
        z_rotation = 69.75,
    },

	["WEAPON_BZGAS"] = { -- Item Name
        model="prop_gas_grenade", -- Model you want to display
        back_bone = 23553, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = -0.04,
        y = 0.12,
        z = -0.16,
        -- Rotaion of the object.
        x_rotation = 85.45,
        y_rotation = 8.6499999999999,
        z_rotation = 87.19,
    },

	["WEAPON_POKEBALL"] = { -- Item Name
        model="w_am_pokeball", -- Model you want to display
        back_bone = 23553, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = -1.3877787807814e-17,
        y = 1.3877787807814e-17,
        z = -0.2,
        -- Rotaion of the object.
        x_rotation = 0.0,
        y_rotation = 20.25,
        z_rotation = 0.0,
    },
	["repairkit"] = { -- Item Name
        model="prop_tool_box_04", -- Model you want to display
        back_bone = 23553, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        x = -0.15,
        y = -0.2,
        z = 0.05,
        -- Rotaion of the object.
        x_rotation = 0.0,
        y_rotation = -265.30000000003,
        z_rotation = -4.6,
    },

    ["meth"] = {
        model="hei_prop_pill_bag_01", 
        back_bone = 24818,
        x = -0.1,
        y = -0.17,
        z = 0.12,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 0.0,
    },
    
	["WEAPON_MICROSMG"] = {
        model="w_sb_microsmg", 
        back_bone = 23553,
        x = 0.03,
        y = 0.04,
        z = -0.19,
        x_rotation = 68.38,
        y_rotation = 19.700000000001,
        z_rotation = 173.89,
    },
	["WEAPON_GHOST"] = {
        model="w_pi_ghost", 
        back_bone = 23553,
        x = 0.03,
        y = 0.04,
        z = -0.19,
        x_rotation = 68.38,
        y_rotation = 19.700000000001,
        z_rotation = 173.89,
    },
	["WEAPON_PISTOL"] = {
        model="w_pi_pistol", 
        back_bone = 23553,
        x = 0.03,
        y = 0.04,
        z = -0.19,
        x_rotation = 68.38,
        y_rotation = 19.700000000001,
        z_rotation = 173.89,
    },
	["WEAPON_HEAVYPISTOL"] = {
        model="w_pi_heavypistol", 
        back_bone = 23553,
        x = 0.03,
        y = 0.04,
        z = -0.19,
        x_rotation = 68.38,
        y_rotation = 19.700000000001,
        z_rotation = 173.89,
    },
	["WEAPON_MINISMG"] = {
        model="w_sb_minismg", 
        back_bone = 23553,
        x = 0.03,
        y = 0.04,
        z = -0.19,
        x_rotation = 68.38,
        y_rotation = 19.700000000001,
        z_rotation = 173.89,
    },
	["WEAPON_MACHINEPISTOL"] = {
        model="w_sb_compactsmg", 
        back_bone = 23553,
        x = 0.03,
        y = 0.04,
        z = -0.19,
        x_rotation = 68.38,
        y_rotation = 19.700000000001,
        z_rotation = 173.89,
    },

    ["WEAPON_BULLPUPSHOTGUN"] = {
        model="w_sg_bullpupshotgun", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_ADVANCEDRIFLE"] = {
        model="W_AR_ADVANCEDRIFLE", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_PRECISIONRIFLE"] = {
        model="W_SR_PrecisionRifle_REH", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_BULLPUPRIFLE_MK2"] = {
        model="w_ar_bullpupriflemk2", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_GUSENBERG"] = {
        model="w_sb_gusenberg", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_DBSHOTGUN"] = {
        model="w_sg_doublebarrel", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_APPISTOL"] = {
        model="W_PI_APPISTOL", 
        back_bone = 23553,
        x = 0.03,
        y = 0.04,
        z = -0.19,
        x_rotation = 68.38,
        y_rotation = 19.700000000001,
        z_rotation = 173.89,
    },

    ["WEAPON_PUMPSHOTGUN_MK2"] = {
        model="w_sg_pumpshotgunmk2", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_COMPACTRIFLE"] = {
        model="w_ar_assaultrifle_smg", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_SMG"] = {
        model="w_sb_smg", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_GUSENBERG"] = {
        model="w_sb_gusenberg", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_PUMPSHOTGUN"] = {
        model="w_sg_pumpshotgun", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
    ["WEAPON_ASSAULTRIFLE_MK2"] = {
        model="w_ar_assaultriflemk2", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_SAWNOFFSHOTGUN"] = {
        model="w_sg_sawnoff", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_HEAVYSNIPER_MK2"] = {
        model="w_sr_heavysnipermk2", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_MARKSMANRIFLE_MK2"] = {
        model="w_sr_marksmanriflemk2", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_HEAVYSNIPER"] = {
        model="w_sr_heavysniper", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_COMBATMG_MK2"] = {
        model="w_mg_combatmgmk2", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_MG"] = {
        model="w_mg_mg", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_AUTOSHOTGUN"] = {
        model="w_sg_sweeper", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_MUSKET"] = {
        model="w_ar_musket", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_COMBATPDW"] = {
        model="W_SB_PDW", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_COMBATSHOTGUN"] = {
        model="w_sg_pumpshotgunh4", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_TACTICALRIFLE"] = {
        model="W_AR_CARBINERIFLE_REH", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_MILITARYRIFLE"] = {
        model="w_ar_bullpuprifleh4", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_SNIPERRIFLE"] = {
        model="w_sr_sniperrifle", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_SMG_MK2"] = {
        model="w_sb_smgmk2", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_ASSAULTSHOTGUN"] = {
        model="w_sg_assaultshotgun", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_MARKSMANRIFLE"] = {
        model="w_sr_marksmanrifle", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_HEAVYSHOTGUN"] = {
        model="w_sg_heavyshotgun", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_MINIGUN"] = {
        model="w_mg_minigun", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_CARBINERIFLE_MK2"] = {
        model="w_ar_carbineriflemk2", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_HEAVYRIFLE"] = {
        model="w_ar_heavyrifleh", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_SPECIALCARBINE_MK2"] = {
        model="w_ar_specialcarbinemk2", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

    ["WEAPON_CERAMICPISTOL"] = {
        model="w_sb_assaultsmg", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },

	["WEAPON_SNSPISTOL_MK2"] = {
        model="w_pi_sns_pistolmk2", 
        back_bone = 23553,
        x = 0.03,
        y = 0.04,
        z = -0.19,
        x_rotation = 68.38,
        y_rotation = 19.700000000001,
        z_rotation = 173.89,
    },

	["WEAPON_ASSAULTSMG"] = {
        model="w_sb_assaultsmg", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.12,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
    ["WEAPON_ASSAULTRIFLE"] = {
        model="w_ar_assaultrifle",
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.05,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_CARBINERIFLE"] = {
        model="w_ar_carbinerifle",
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = -0.05,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
    ["WEAPON_SPECIALCARBINE"] = {
        model="w_ar_carbinerifle", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_BULLPUPRIFLE"] = {
        model="w_ar_bullpuprifle", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_RGXVANDAL"] = {
        model="w_ar_rgxvandal", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_FIREKATANA"] = {
        model="w_me_firekatana", 
        back_bone = 23553,
        x = 0.11,
        y = 0.059999999999998,
        z = -0.2,
        x_rotation = -89.5,
        y_rotation = 0.75,
        z_rotation = 107.64,
    },
	["WEAPON_NOTZSAKURA"] = {
        model="w_me_NOTZSAKURA", 
        back_bone = 23553,
        x = 0.11,
        y = 0.059999999999998,
        z = -0.2,
        x_rotation = -89.5,
        y_rotation = 0.75,
        z_rotation = 107.64,
    },
	["WEAPON_TRIDENT"] = {
        model="w_me_TRIDENT", 
        back_bone = 24818,
        x = 0.2,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 180.0,
    },
	["WEAPON_FIRESICKLE"] = {
        model="w_me_firesickle", 
        back_bone = 23553,
        x = -3.1225022567583e-17,
        y = -0.23,
        z = 0.059999999999906,
        x_rotation = -11.17,
        y_rotation = -246.34,
        z_rotation = 1.73,
    },
	["WEAPON_BLACKPINK"] = {
        model="w_me_BLACKPINK", 
        back_bone = 23553,
        x = 0.16,
        y = -0.17,
        z = 0.059999999999906,
        x_rotation = 4.3,
        y_rotation = -246.34,
        z_rotation = 1.73,
    },
	["WEAPON_HAMMERTHOR"] = {
        model="w_me_HAMMERTHOR", 
        back_bone = 24818,
        x = 0.23,
        y = -0.16,
        z = -0.08,
        x_rotation = -9.0999999999999,
        y_rotation = -77.69,
        z_rotation = 264.28,
    },
	["WEAPON_FANHAND"] = {
        model="w_me_FANHAND", 
        back_bone = 24818,
        x = 0.12,
        y = -0.16,
        z = 0.0,
        x_rotation = 13.0,
        y_rotation = -84.5,
        z_rotation = -2.0,
    },
	["WEAPON_MUWEBZEN"] = {
        model="w_me_muwebzen", 
        back_bone = 24818,
        x = 0.2,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 180.0,
    },
	["WEAPON_BAT"] = {
        model="w_me_bat", 
        back_bone = 24818,
        x = 0.2,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 180.0,
    },
	["WEAPON_SWITCHBLADE"] = {
        model="w_me_switchblade", 
        back_bone = 23553,
        x = 0.09,
        y = -0.029999999999959,
        z = -0.16,
        x_rotation = -103.58,
        y_rotation =  11.9,
        z_rotation = 116.31,
    },
	["handcuffs"] = {
        model="p_cs_cuffs_02_s", 
        back_bone = 23553,
        x = -0.02,
        y = 0.1,
        z = 0.17,
        x_rotation = -54.62,
        y_rotation =  18.73,
        z_rotation = 11.89,
    },

	["WEAPON_OPERATOR"] = {
        model="w_sr_operator", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_ELDERVANDAL"] = {
        model="w_ar_eldervandal", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_PRIMEVANDAL"] = {
        model="w_ar_primevandal", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_GPHAN"] = {
        model="w_ar_gphan", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_BPHAN"] = {
        model="w_ar_m16", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_M4"] = {
        model="w_ar_m4", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_DRACOAK"] = {
        model="w_ar_dracoak", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_ASSAAK"] = {
        model="w_ar_assaak", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_M16"] = {
        model="w_ar_goldphan", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
	["WEAPON_REAVERVANDAL"] = {
        model="w_ar_reavervandal", 
        back_bone = 24818,
        x = 0.0,
        y = -0.17,
        z = 0.08,
        x_rotation = 0.0,
        y_rotation = -180.0,
        z_rotation = 180.0,
    },
    ["weapon_rpg"] = {
        model="w_lr_rpg", 
        back_bone = 24818,
        x = 0.2,
        y = -0.17,
        z = 0.0,
        x_rotation = 0.0,
        y_rotation = 180.0,
        z_rotation = 180.0,
    },
    ["coke"] = {
        model="h4_prop_h4_coke_bottle_01a", 
        back_bone = 24818,
        x = -0.20,
        y = -0.17,
        z = 0.0,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 90.0,
    },
	["cocaine_cut"] = {
        model="prop_coke_block_half_a", 
        back_bone = 24818,
        x = -0.20,
        y = -0.17,
        z = 0.0,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 90.0,
    },
	["cocaine_uncut"] = {
        model="bkr_prop_coke_cutblock_01", 
        back_bone = 24818,
        x = -0.20,
        y = -0.17,
        z = 0.0,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 90.0,
    },
    ["weed"] = {
        model="bkr_prop_weed_drying_01a", 
        back_bone = 24818,
        x = -0.20,
        y = -0.17,
        z = 0.0,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 0.0,
    },
	["weed_untrimmed"] = {
        model="bkr_prop_weed_drying_01a", 
        back_bone = 24818,
        x = -0.20,
        y = -0.17,
        z = 0.0,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 0.0,
    },
	["meth_raw"] = {
        model="hei_prop_pill_bag_01", 
        back_bone = 24818,
        x = -0.20,
        y = -0.17,
        z = 0.0,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 0.0,
    },
	["meth_packaged"] = {
        model="hei_prop_pill_bag_01", 
        back_bone = 24818,
        x = -0.20,
        y = -0.17,
        z = 0.0,
        x_rotation = 0.0,
        y_rotation = 90.0,
        z_rotation = 0.0,
    },
}