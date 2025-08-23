dofile_once("data/scripts/gun/procedural/gun_action_utils.lua") 

local instrument_list = {
    ["kantele"] = "data/entities/items/kantele.xml"
}

function SetGun(x, y, instrument, config)

    x = x - 5
    y = y - 5

    local wand_id = EntityLoad(instrument_list[instrument], x, y)

    -- 清理默认的Lua组件（避免冲突）
    local comp = EntityGetComponent(wand_id, "LuaComponent")
    if comp then
        EntityRemoveComponent(wand_id, comp[1])
    end
    
    -- 添加自定义物品组件，设置法杖基本属性
    EntityAddComponent2(wand_id, "ItemComponent", {
        _tags = "wand, enabled_in_inventory",  -- 标签：法杖类型，可在背包中使用
        item_name = "My Custom Wand"          -- 自定义法杖名称
    })

    -- 移除法杖自带的默认法术
    local actions = EntityGetAllChildren(wand_id)
    if actions then
        for i,v in ipairs(actions)do 
            EntityKill(v)  -- 销毁所有子实体（法术）
        end  
    end

    local ability_comp = EntityGetFirstComponent(wand_id,"AbilityComponent")
    
    if ability_comp then
        -- 基础参数配置（单位：秒）
        -- local fire_rate_wait  = 0.03   -- 施法间隔
        -- local reload_time = 0.03       -- 法杖充能时间


        -- config = {
        --     mana_charge_speed = 100,
        --     mana_max = 100,
        --     reload_time = 0.3,
        --     fire_rate_wait = 0.3,
        --     deck_capacity = 26,
        --     actions_per_round = 1,

        -- }

        GamePrint("fire_rate_frames: " .. tostring(fire_rate_frames))
        GamePrint("reload_frames: " .. tostring(reload_frames))
        
        -- 法杖容量设置：可同时携带的法术数量
        ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", tostring(config.deck_capacity))
        
        -- 法力回复系统
        ComponentSetValue( ability_comp, "mana_charge_speed", tostring(config.mana_charge_speed))  -- 法力回复速度
        ComponentSetValue( ability_comp, "mana_max", tostring(config.mana_max))            -- 最大法力值
        
        -- 施法性能优化
        -- 注意：游戏内部使用帧数，需要乘以60转换
        ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", tostring(config.fire_rate_wait))
        ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", tostring(config.reload_time))
        -- ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", tostring(fire_rate_wait*60))
        -- ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", tostring(reload_time*60))

        -- 打印五个值
        -- GamePrint("deck_capacity: " .. tostring(config.deck_capacity))
        -- GamePrint("mana_charge_speed: " .. tostring(config.mana_charge_speed))
        -- GamePrint("mana_max: " .. tostring(config.mana_max))
        GamePrint("F: fire_rate_wait: " .. tostring(config.fire_rate_wait))
        GamePrint("F: reload_time: " .. tostring(config.reload_time))

        
        -- -- 精度设置：无散射，确保法术直线发射
        -- ComponentObjectSetValue( ability_comp, "gunaction_config", "spread_degrees", "0")

        ComponentObjectSetValue( ability_comp, "gun_config", "actions_per_round", tostring(config.actions_per_round))
    end
end
