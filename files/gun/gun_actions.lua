table.insert(actions,
{
    id                      =           "TEST",
    name                    =           "TEST",
    description             =           "TEST",
    sprite                  =           "data/ui_gfx/gun_actions/kantele_a.png",
    related_projectiles     =           {"data/entities/projectiles/deck/kantele/test.xml"},
    type                    =           ACTION_TYPE_OTHER,
    spawn_level             =           "10",
    spawn_probability       =           "0",
    price                   =           1,
    mana                    =           1,
    actions                 =           function ()
        
        add_projectile("data/entities/projectiles/deck/kantele/test.xml")
        c.fire_rate_wait = c.fire_rate_wait + 15

    end,
}
)
