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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
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
			c.fire_rate_wait = c.fire_rate_wait + 15
		end,
    }
)