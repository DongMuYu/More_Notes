-- table.insert(actions,
-- 	{
-- 		id          = "OTTAVA_ALTA",
-- 		name 		= "$action_ottava_alta",
-- 		description = "$actiondesc_ottava_alta",
-- 		sprite 		= "data/ui_gfx/gun_actions/misc/ottava_alta.png",
-- 		related_extra_entities = { "data/entities/misc/ottava_alta.xml" },
-- 		type 		= ACTION_TYPE_MODIFIER,
-- 		spawn_level                       = "0", -- OTTAVA_ALTA
-- 		spawn_probability                 = "0", -- OTTAVA_ALTA
-- 		price = 0,
-- 		mana = 0,
-- 		action 		= function()
-- 			c.extra_entities = c.extra_entities .. "data/entities/misc/ottava_alta.xml,"
-- 			draw_actions( 1, true )
-- 		end,
-- 	}
-- )

-- table.insert(actions,
-- 	{
-- 		id          = "OTTAVA_BASSA",	
-- 		name 		= "$action_ottava_bassa",
-- 		description = "$actiondesc_ottava_bassa",
-- 		sprite 		= "data/ui_gfx/gun_actions/misc/ottava_bassa.png",
-- 		related_extra_entities = { "data/entities/misc/ottava_bassa.xml" },
-- 		type 		= ACTION_TYPE_MODIFIER,
-- 		spawn_level                       = "0", -- OTTAVA_BASSA
-- 		spawn_probability                 = "0", -- OTTAVA_BASSA
-- 		price = 0,
-- 		mana = 0,
-- 		action 		= function()
-- 			c.extra_entities = c.extra_entities .. "data/entities/misc/ottava_bassa.xml,"
-- 			draw_actions( 1, true )
-- 		end,
-- 	}
-- )
-- table.insert(actions,
-- 	{
-- 				id  = "QUINDICESIMA_ALTA",
-- 		name 		= "$action_quindicesima_alta",
-- 		description = "$actiondesc_quindicesima_alta",
-- 		sprite 		= "data/ui_gfx/gun_actions/misc/quindicesima_alta.png",
-- 		related_extra_entities = { "data/entities/misc/quindicesima_alta.xml" },
-- 		type 		= ACTION_TYPE_MODIFIER,
-- 		spawn_level                       = "0", -- QUINDICESIMA_ALTA
-- 		spawn_probability                 = "0", -- QUINDICESIMA_ALTA
-- 		price = 0,
-- 		mana = 0,
-- 		action 		= function()
-- 			c.extra_entities = c.extra_entities .. "data/entities/misc/quindicesima_alta.xml,"
-- 			draw_actions( 1, true )
-- 		end,
-- 	}
-- )
-- table.insert(actions,
-- 	{
-- 		id          = "QUINDICESIMA_BASSA",
-- 		name 		= "$action_quindicesima_bassa",
-- 		description = "$actiondesc_quindicesima_bassa",
-- 		sprite 		= "data/ui_gfx/gun_actions/misc/quindicesima_bassa.png",
-- 		related_extra_entities = { "data/entities/misc/quindicesima_bassa.xml" },
-- 		type 		= ACTION_TYPE_MODIFIER,
-- 		spawn_level                       = "0", -- QUINDICESIMA_BASSA
-- 		spawn_probability                 = "0", -- QUINDICESIMA_BASSA
-- 		price = 0,
-- 		mana = 0,
-- 		action 		= function()
-- 			c.extra_entities = c.extra_entities .. "data/entities/misc/quindicesima_bassa.xml,"
-- 			draw_actions( 1, true )
-- 		end,
-- 	}
-- )

-- 功能法术
table.insert(actions,
	{
		id          = "FIRE_RATE_WAIT",
		name 		= "FIRE_RATE_WAIT",
		description = "",
		sprite 		= "data/ui_gfx/gun_actions/slow_but_steady.png",
		type 		= ACTION_TYPE_MODIFIER,
		spawn_level                       = "10", -- LIFETIME
		spawn_probability                 = "0", -- LIFETIME
		price = 0,
		mana = 0,
		action 		= function()

			current_reload_time = 0
			local player_stats_entity_id = GameGetPlayerStatsEntity()
			GamePrint("player_entity_id:  " .. tostring(player_stats_entity_id))

			-- local delay = function() 
			-- 	
			-- 	return global_fire_rate_coefficient 
			-- end

			-- GamePrint("FIRE_RATE_WAIT:  " .. tostring(delay()))
			-- + function() return global_fire_rate_coefficient end
			c.fire_rate_wait = c.fire_rate_wait 
			draw_actions( 1, true )
		end,
	}
)

-- Kantele琴
-- 添加大字一组
table.insert(actions,
    {
		id          = "KANTELE_C2",
		name 		= "$action_kantele_c2",
		description = "$actiondesc_kantele_c2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_c2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_c2.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_C2
		spawn_probability                 = "0", -- OCARINA_C2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_c2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_CIS2",
		name 		= "$action_kantele_cis2",
		description = "$actiondesc_kantele_cis2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_cis2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_cis2.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_CIS2
		spawn_probability                 = "0", -- OCARINA_CIS2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_cis2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_D2",
		name 		= "$action_kantele_d2",
		description = "$actiondesc_kantele_d2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_d2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_d2.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_D2
		spawn_probability                 = "0", -- OCARINA_D2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_d2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_DIS2",
		name 		= "$action_kantele_dis2",
		description = "$actiondesc_kantele_dis2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_dis2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_dis2.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_DIS2
		spawn_probability                 = "0", -- OCARINA_DIS2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_dis2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_E2",
		name 		= "$action_kantele_e2",
		description = "$actiondesc_kantele_e2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_e2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_e2.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_E2
		spawn_probability                 = "0", -- OCARINA_E2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_e2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_F2",
		name 		= "$action_kantele_f2",
		description = "$actiondesc_kantele_f2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_f2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_f2.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_F2
		spawn_probability                 = "0", -- OCARINA_F2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_f2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_FIS2",
		name 		= "$action_kantele_fis2",
		description = "$actiondesc_kantele_fis2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_fis2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_fis2.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_FIS2
		spawn_probability                 = "0", -- OCARINA_FIS2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_fis2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_G2",
		name 		= "$action_kantele_g2",
		description = "$actiondesc_kantele_g2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_g2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_g2.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_G2
		spawn_probability                 = "0", -- OCARINA_G2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_g2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_GIS2",
		name 		= "$action_kantele_gis2",
		description = "$actiondesc_kantele_gis2",    
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_gis2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_gis2.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_GIS2
		spawn_probability                 = "0", -- OCARINA_GIS2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_gis2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_A2",
		name 		= "$action_kantele_a2",
		description = "$actiondesc_kantele_a2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_a2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_a2.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_A2
		spawn_probability                 = "0", -- OCARINA_A2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_a2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_AIS2",
		name 		= "$action_kantele_ais2",
		description = "$actiondesc_kantele_ais2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_ais2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_ais2.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_AIS2
		spawn_probability                 = "0", -- OCARINA_AIS2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_ais2.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_B2",
		name 		= "$action_kantele_b2",
		description = "$actiondesc_kantele_b2",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/2/kantele_b2.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/2/kantele_b2.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_B2
		spawn_probability                 = "0", -- OCARINA_B2
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/2/kantele_b2.xml")
		end,
    }
)

-- 添加小字一组

table.insert(actions,
    {
		id          = "KANTELE_C3",
		name 		= "$action_kantele_c3",
		description = "$actiondesc_kantele_c3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_c3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_c3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_C3
		spawn_probability                 = "0", -- OCARINA_C3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_c3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_CIS3",
		name 		= "$action_kantele_cis3",
		description = "$actiondesc_kantele_cis3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_cis3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_cis3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_CIS3
		spawn_probability                 = "0", -- OCARINA_CIS3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_cis3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_D3",
		name 		= "$action_kantele_d3",
		description = "$actiondesc_kantele_d3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_d3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_d3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_D3
		spawn_probability                 = "0", -- OCARINA_D3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_d3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_DIS3",
		name 		= "$action_kantele_dis3",
		description = "$actiondesc_kantele_dis3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_dis3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_dis3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_DIS3
		spawn_probability                 = "0", -- OCARINA_DIS3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_dis3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_E3",
		name 		= "$action_kantele_e3",
		description = "$actiondesc_kantele_e3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_e3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_e3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_E3
		spawn_probability                 = "0", -- OCARINA_E3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_e3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_F3",
		name 		= "$action_kantele_f3",
		description = "$actiondesc_kantele_f3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_f3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_f3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_F3
		spawn_probability                 = "0", -- OCARINA_F3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_f3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_FIS3",
		name 		= "$action_kantele_fis3",
		description = "$actiondesc_kantele_fis3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_fis3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_fis3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_FIS3
		spawn_probability                 = "0", -- OCARINA_FIS3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_fis3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_G3",
		name 		= "$action_kantele_g3",
		description = "$actiondesc_kantele_g3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_g3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_g3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_G3
		spawn_probability                 = "0", -- OCARINA_G3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_g3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_GIS3",
		name 		= "$action_kantele_gis3",
		description = "$actiondesc_kantele_gis3",    
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_gis3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_gis3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_GIS3
		spawn_probability                 = "0", -- OCARINA_GIS3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_gis3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_A3",
		name 		= "$action_kantele_a3",
		description = "$actiondesc_kantele_a3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_a3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_a3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_A3
		spawn_probability                 = "0", -- OCARINA_A3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_a3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_AIS3",
		name 		= "$action_kantele_ais3",
		description = "$actiondesc_kantele_ais3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_ais3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_ais3.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_AIS3
		spawn_probability                 = "0", -- OCARINA_AIS3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_ais3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_B3",
		name 		= "$action_kantele_b3",
		description = "$actiondesc_kantele_b3",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/3/kantele_b3.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/3/kantele_b3.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_B3
		spawn_probability                 = "0", -- OCARINA_B3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/3/kantele_b3.xml")
		end,
    }
)


-- 添加小字二组

table.insert(actions,

    {
		id          = "TEST_A",
		name 		= "testA",
		description = "this is a test",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "mods/More_Notes/files/test/test_A.png",
		related_projectiles	= {"mods/More_Notes/files/test/test_A.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10",
		spawn_probability                 = "0",
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("mods/More_Notes/files/test/test_A.xml")
		end,
    }
)
table.insert(actions,
    {
		id          = "KANTELE_C",
		name 		= "$action_kantele_c",
		description = "$actiondesc_kantele_c",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_c.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/4/kantele_c.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_C
		spawn_probability                 = "0", -- OCARINA_A
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/4/kantele_c.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_CIS",
		name 		= "$action_kantele_cis",
		description = "$actiondesc_kantele_cis",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_cis.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/4/kantele_cis.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_CIS
		spawn_probability                 = "0", -- OCARINA_CIS
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/4/kantele_cis.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_D",
		name 		= "$action_kantele_d",
		description = "$actiondesc_kantele_d",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_d.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/kantele_d.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_D
		spawn_probability                 = "0", -- OCARINA_D
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/kantele_d.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_DIS",
		name 		= "$action_kantele_dis",
		description = "$actiondesc_kantele_dis",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_dis.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/kantele_dis.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_D
		spawn_probability                 = "0", -- OCARINA_D
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/kantele_dis.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_E",
		name 		= "$action_kantele_e",
		description = "$actiondesc_kantele_e",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_e.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/kantele_e.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_E
		spawn_probability                 = "0", -- OCARINA_E
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/kantele_e.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_F",
		name 		= "$action_kantele_f",
		description = "$actiondesc_kantele_f",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_f.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/4/kantele_f.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_F
		spawn_probability                 = "0", -- OCARINA_F
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/4/kantele_f.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_FIS",
		name 		= "$action_kantele_fis",
		description = "$actiondesc_kantele_fis",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_fis.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/4/kantele_fis.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_FIS
		spawn_probability                 = "0", -- OCARINA_FIS
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/4/kantele_fis.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_G",
		name 		= "$action_kantele_g",
		description = "$actiondesc_kantele_g",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_g.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/kantele_g.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_GSHARP
		spawn_probability                 = "0", -- OCARINA_GSHARP
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/kantele_g.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_GIS",
		name 		= "$action_kantele_gis",
		description = "$actiondesc_kantele_gis",    
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_gis.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/4/kantele_gis.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_GIS
		spawn_probability                 = "0", -- OCARINA_GIS
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/4/kantele_gis.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_A",
		name 		= "$action_kantele_a",
		description = "$actiondesc_kantele_a",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_a.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/kantele_a.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_A
		spawn_probability                 = "0", -- OCARINA_A
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/kantele_a.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_AIS",
		name 		= "$action_kantele_ais",
		description = "$actiondesc_kantele_ais",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_ais.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/4/kantele_ais.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_AIS
		spawn_probability                 = "0", -- OCARINA_AIS
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/4/kantele_ais.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_B",
		name 		= "$action_kantele_b",
		description = "$actiondesc_kantele_b",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/4/kantele_b.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/4/kantele_b.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_B
		spawn_probability                 = "0", -- OCARINA_B
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/4/kantele_b.xml")
		end,
    }
)


-- 添加小字三组

table.insert(actions,
    {
		id          = "KANTELE_C5",
		name 		= "$action_kantele_c5",
		description = "$actiondesc_kantele_c5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_c5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_c5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_C5
		spawn_probability                 = "0", -- OCARINA_C5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_c5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_CIS5",
		name 		= "$action_kantele_cis5",
		description = "$actiondesc_kantele_cis5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_cis5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_cis5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_CIS5
		spawn_probability                 = "0", -- OCARINA_CIS5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_cis5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_D5",
		name 		= "$action_kantele_d5",
		description = "$actiondesc_kantele_d5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_d5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_d5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_D5
		spawn_probability                 = "0", -- OCARINA_D5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_d5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_DIS5",
		name 		= "$action_kantele_dis5",
		description = "$actiondesc_kantele_dis5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_dis5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_dis5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_DIS5
		spawn_probability                 = "0", -- OCARINA_DIS5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_dis5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_E5",
		name 		= "$action_kantele_e5",
		description = "$actiondesc_kantele_e5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_e5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_e5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_E5
		spawn_probability                 = "0", -- OCARINA_E5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_e5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_F5",
		name 		= "$action_kantele_f5",
		description = "$actiondesc_kantele_f5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_f5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_f5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_F5
		spawn_probability                 = "0", -- OCARINA_F5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_f5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_FIS5",
		name 		= "$action_kantele_fis5",
		description = "$actiondesc_kantele_fis5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_fis5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_fis5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_FIS5
		spawn_probability                 = "0", -- OCARINA_FIS5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_fis5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_G5",
		name 		= "$action_kantele_g5",
		description = "$actiondesc_kantele_g5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_g5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_g5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_G5
		spawn_probability                 = "0", -- OCARINA_G5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_g5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_GIS5",
		name 		= "$action_kantele_gis5",
		description = "$actiondesc_kantele_gis5",    
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_gis5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_gis5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_GIS5
		spawn_probability                 = "0", -- OCARINA_GIS5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_gis5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_A5",
		name 		= "$action_kantele_a5",
		description = "$actiondesc_kantele_a5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_a5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_a5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_A5
		spawn_probability                 = "0", -- OCARINA_A5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_a5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_AIS5",
		name 		= "$action_kantele_ais5",
		description = "$actiondesc_kantele_ais5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_ais5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_ais5.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_AIS5
		spawn_probability                 = "0", -- OCARINA_AIS5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_ais5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "KANTELE_B5",
		name 		= "$action_kantele_b5",
		description = "$actiondesc_kantele_b5",
		spawn_requires_flag = "card_unlocked_kantele",
		sprite 		= "data/ui_gfx/gun_actions/kantele/5/kantele_b5.png",
		related_projectiles	= {"data/entities/projectiles/deck/kantele/5/kantele_b5.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_B5
		spawn_probability                 = "0", -- OCARINA_B5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/kantele/5/kantele_b5.xml")
		end,
    }
)


-- ocarina笛子
-- 添加小字一组
table.insert(actions,
    {
		id          = "OCARINA_C3",
		name 		= "$action_ocarina_c3",
		description = "$actiondesc_ocarina_c3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_c3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_c3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_C3
		spawn_probability                 = "0", -- OCARINA_C3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_c3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_CIS3",
		name 		= "$action_ocarina_cis3",
		description = "$actiondesc_ocarina_cis3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_cis3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_cis3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_CIS3
		spawn_probability                 = "0", -- OCARINA_CIS3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_cis3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_D3",
		name 		= "$action_ocarina_d3",
		description = "$actiondesc_ocarina_d3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_d3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_d3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_D3
		spawn_probability                 = "0", -- OCARINA_D3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_d3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_DIS3",
		name 		= "$action_ocarina_dis3",
		description = "$actiondesc_ocarina_dis3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_dis3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_dis3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_DIS3
		spawn_probability                 = "0", -- OCARINA_DIS3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_dis3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_E3",
		name 		= "$action_ocarina_e3",
		description = "$actiondesc_ocarina_e3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_e3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_e3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_E3
		spawn_probability                 = "0", -- OCARINA_E3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_e3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_F3",
		name 		= "$action_ocarina_f3",
		description = "$actiondesc_ocarina_f3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_f3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_f3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_F3
		spawn_probability                 = "0", -- OCARINA_F3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_f3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_FIS3",
		name 		= "$action_ocarina_fis3",
		description = "$actiondesc_ocarina_fis3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_fis3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_fis3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_FIS3
		spawn_probability                 = "0", -- OCARINA_FIS3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_fis3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_G3",
		name 		= "$action_ocarina_g3",
		description = "$actiondesc_ocarina_g3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_g3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_g3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_G3
		spawn_probability                 = "0", -- OCARINA_G3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_g3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_GIS3",
		name 		= "$action_ocarina_gis3",
		description = "$actiondesc_ocarina_gis3",    
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_gis3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_gis3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_GIS3
		spawn_probability                 = "0", -- OCARINA_GIS3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_gis3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_A3",
		name 		= "$action_ocarina_a3",
		description = "$actiondesc_ocarina_a3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_a3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_a3.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_A3
		spawn_probability                 = "0", -- OCARINA_A3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_a3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_AIS3",
		name 		= "$action_ocarina_ais3",
		description = "$actiondesc_ocarina_ais3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_ais3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_ais3.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_AIS3
		spawn_probability                 = "0", -- OCARINA_AIS3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_ais3.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_B3",
		name 		= "$action_ocarina_b3",
		description = "$actiondesc_ocarina_b3",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/3/ocarina_b3.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/3/ocarina_b3.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_B3
		spawn_probability                 = "0", -- OCARINA_B3
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/3/ocarina_b3.xml")
		end,
    }
)

-- 添加小字二组
table.insert(actions,
    {
		id          = "OCARINA_C",
		name 		= "$action_ocarina_c",
		description = "$actiondesc_ocarina_c",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_c.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_c.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_C
		spawn_probability                 = "0", -- OCARINA_C
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_c.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_CIS",
		name 		= "$action_ocarina_cis",
		description = "$actiondesc_ocarina_cis",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_cis.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_cis.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_CIS
		spawn_probability                 = "0", -- OCARINA_CIS
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_cis.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_D",
		name 		= "$action_ocarina_d",
		description = "$actiondesc_ocarina_d",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_d.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_d.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_D
		spawn_probability                 = "0", -- OCARINA_D
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_d.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_DIS",
		name 		= "$action_ocarina_dis",
		description = "$actiondesc_ocarina_dis",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_dis.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_dis.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_DIS
		spawn_probability                 = "0", -- OCARINA_DIS
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_dis.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_E",
		name 		= "$action_ocarina_e",
		description = "$actiondesc_ocarina_e",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_e.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_e.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_E
		spawn_probability                 = "0", -- OCARINA_E
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_e.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_F",
		name 		= "$action_ocarina_f",
		description = "$actiondesc_ocarina_f",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_f.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_f.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_F
		spawn_probability                 = "0", -- OCARINA_F
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_f.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_FIS",
		name 		= "$action_ocarina_fis",
		description = "$actiondesc_ocarina_fis",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_fis.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_fis.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_FIS
		spawn_probability                 = "0", -- OCARINA_FIS
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_fis.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_G",
		name 		= "$action_ocarina_g",
		description = "$actiondesc_ocarina_g",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_g.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_g.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_G
		spawn_probability                 = "0", -- OCARINA_G
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_g.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_GIS",
		name 		= "$action_ocarina_gis",
		description = "$actiondesc_ocarina_gis",    
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_gis.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_gis.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_GIS
		spawn_probability                 = "0", -- OCARINA_GIS
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_gis.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_A",
		name 		= "$action_ocarina_a",
		description = "$actiondesc_ocarina_a",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_a.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_a.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_A
		spawn_probability                 = "0", -- OCARINA_A
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_a.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_AIS",
		name 		= "$action_ocarina_ais",
		description = "$actiondesc_ocarina_ais",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_ais.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_ais.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_AIS
		spawn_probability                 = "0", -- OCARINA_AIS
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_ais.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_B",
		name 		= "$action_ocarina_b",
		description = "$actiondesc_ocarina_b",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/4/ocarina_b.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/4/ocarina_b.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_B
		spawn_probability                 = "0", -- OCARINA_B
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/4/ocarina_b.xml")
		end,
    }
)

-- 添加小字三组

table.insert(actions,
    {
		id          = "OCARINA_C5",
		name 		= "$action_ocarina_c5",
		description = "$actiondesc_ocarina_c5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_c5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_c5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_C5
		spawn_probability                 = "0", -- OCARINA_C5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_c5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_CIS5",
		name 		= "$action_ocarina_cis5",
		description = "$actiondesc_ocarina_cis5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_cis5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_cis5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_CIS5
		spawn_probability                 = "0", -- OCARINA_CIS5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_cis5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_D5",
		name 		= "$action_ocarina_d5",
		description = "$actiondesc_ocarina_d5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_d5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_d5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_D5
		spawn_probability                 = "0", -- OCARINA_D5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_d5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_DIS5",
		name 		= "$action_ocarina_dis5",
		description = "$actiondesc_ocarina_dis5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_dis5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_dis5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_DIS5
		spawn_probability                 = "0", -- OCARINA_DIS5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_dis5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_E5",
		name 		= "$action_ocarina_e5",
		description = "$actiondesc_ocarina_e5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_e5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_e5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_E5
		spawn_probability                 = "0", -- OCARINA_E5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_e5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_F5",
		name 		= "$action_ocarina_f5",
		description = "$actiondesc_ocarina_f5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_f5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_f5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_F5
		spawn_probability                 = "0", -- OCARINA_F5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_f5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_FIS5",
		name 		= "$action_ocarina_fis5",
		description = "$actiondesc_ocarina_fis5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_fis5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_fis5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_FIS5
		spawn_probability                 = "0", -- OCARINA_FIS5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_fis5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_G5",
		name 		= "$action_ocarina_g5",
		description = "$actiondesc_ocarina_g5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_g5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_g5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_G5
		spawn_probability                 = "0", -- OCARINA_G5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_g5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_GIS5",
		name 		= "$action_ocarina_gis5",
		description = "$actiondesc_ocarina_gis5",    
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_gis5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_gis5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_GIS5
		spawn_probability                 = "0", -- OCARINA_GIS5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_gis5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_A5",
		name 		= "$action_ocarina_a5",
		description = "$actiondesc_ocarina_a5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_a5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_a5.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_A5
		spawn_probability                 = "0", -- OCARINA_A5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_a5.xml")

		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_AIS5",
		name 		= "$action_ocarina_ais5",
		description = "$actiondesc_ocarina_ais5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_ais5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_ais5.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_AIS5
		spawn_probability                 = "0", -- OCARINA_AIS5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_ais5.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_B5",
		name 		= "$action_ocarina_b5",
		description = "$actiondesc_ocarina_b5",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/5/ocarina_b5.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/5/ocarina_b5.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_B5
		spawn_probability                 = "0", -- OCARINA_B5
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/5/ocarina_b5.xml")
		end,
    }
)

-- 添加小字四组

table.insert(actions,
    {
		id          = "OCARINA_C6",
		name 		= "$action_ocarina_c6",
		description = "$actiondesc_ocarina_c6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_c6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_c6.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_C6
		spawn_probability                 = "0", -- OCARINA_C6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_c6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_CIS6",
		name 		= "$action_ocarina_cis6",
		description = "$actiondesc_ocarina_cis6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_cis6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_cis6.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_CIS6
		spawn_probability                 = "0", -- OCARINA_CIS6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_cis6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_D6",
		name 		= "$action_ocarina_d6",
		description = "$actiondesc_ocarina_d6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_d6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_d6.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_D6
		spawn_probability                 = "0", -- OCARINA_D6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_d6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_DIS6",
		name 		= "$action_ocarina_dis6",
		description = "$actiondesc_ocarina_dis6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_dis6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_dis6.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_DIS6
		spawn_probability                 = "0", -- OCARINA_DIS6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_dis6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_E6",
		name 		= "$action_ocarina_e6",
		description = "$actiondesc_ocarina_e6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_e6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_e6.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_E6
		spawn_probability                 = "0", -- OCARINA_E6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_e6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_F6",
		name 		= "$action_ocarina_f6",
		description = "$actiondesc_ocarina_f6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_f6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_f6.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_F6
		spawn_probability                 = "0", -- OCARINA_F6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_f6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_FIS6",
		name 		= "$action_ocarina_fis6",
		description = "$actiondesc_ocarina_fis6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_fis6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_fis6.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_FIS6
		spawn_probability                 = "0", -- OCARINA_FIS6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_fis6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_G6",
		name 		= "$action_ocarina_g6",
		description = "$actiondesc_ocarina_g6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_g6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_g6.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_G6
		spawn_probability                 = "0", -- OCARINA_G6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_g6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_GIS6",
		name 		= "$action_ocarina_gis6",
		description = "$actiondesc_ocarina_gis6",    
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_gis6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_gis6.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_GIS6
		spawn_probability                 = "0", -- OCARINA_GIS6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_gis6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_A6",
		name 		= "$action_ocarina_a6",
		description = "$actiondesc_ocarina_a6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_a6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_a6.xml"},
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "10", -- OCARINA_A6
		spawn_probability                 = "0", -- OCARINA_A6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_a6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_AIS6",
		name 		= "$action_ocarina_ais6",
		description = "$actiondesc_ocarina_ais6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_ais6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_ais6.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_AIS6
		spawn_probability                 = "0", -- OCARINA_AIS6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_ais6.xml")
		end,
    }
)

table.insert(actions,
    {
		id          = "OCARINA_B6",
		name 		= "$action_ocarina_b6",
		description = "$actiondesc_ocarina_b6",
		spawn_requires_flag = "card_unlocked_ocarina",
		sprite 		= "data/ui_gfx/gun_actions/ocarina/6/ocarina_b6.png",
		related_projectiles	= {"data/entities/projectiles/deck/ocarina/6/ocarina_b6.xml"},
		type 		= ACTION_TYPE_OTHER,    
		spawn_level                       = "10", -- OCARINA_B6
		spawn_probability                 = "0", -- OCARINA_B6
		price = 0,
		mana = 0,
		action 		= function()
			add_projectile("data/entities/projectiles/deck/ocarina/6/ocarina_b6.xml")
		end,
    }
)