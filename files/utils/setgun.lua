dofile_once("data/scripts/gun/procedural/gun_action_utils.lua") 

function CreateWand(x, y)

    x = x - 15
    y = y - 5

    local wand_id = EntityLoad("data/entities/items/wand_level_10.xml", x, y)

    -- 清理默认的Lua组件（避免冲突）
    local comp = EntityGetComponent(wand_id,"LuaComponent")
    if comp then
        EntityRemoveComponent(wand_id,comp[1])
    end
    
    -- 添加自定义物品组件，设置法杖基本属性
    EntityAddComponent2(wand_id, "ItemComponent", {
        _tags = "wand,enabled_in_inventory",  -- 标签：法杖类型，可在背包中使用
        item_name = "My Custom Wand"          -- 自定义法杖名称
    })

        
    -- 移除法杖自带的默认法术
    local actions = EntityGetAllChildren(wand_id)
    if actions then
        for i,v in ipairs(actions)do 
            EntityKill(v)  -- 销毁所有子实体（法术）
        end  
    end
    
    Setgundata(wand_id)
end


-- 设置法杖的详细属性
-- @param wand_id: 要配置的法杖实体ID
function Setgundata(wand_id)
    local ability_comp = EntityGetFirstComponent(wand_id,"AbilityComponent")
    
    if ability_comp then
        -- 基础参数配置（单位：秒）
        local fire_rate_wait  = 0.08   -- 施法间隔
        local reload_time = 0.08       -- 法杖充能时间
        
        -- 法杖容量设置：可同时携带的法术数量
        ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", "30")
        
        -- 法力回复系统
        ComponentSetValue( ability_comp, "mana_charge_speed", "10000")  -- 法力回复速度
        ComponentSetValue( ability_comp, "mana_max", "10000")            -- 最大法力值
        
        -- 施法性能优化
        -- 注意：游戏内部使用帧数，需要乘以60转换
        ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", tostring(fire_rate_wait*60))
        ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", tostring(reload_time*60))
        
        -- 精度设置：无散射，确保法术直线发射
        ComponentObjectSetValue( ability_comp, "gunaction_config", "spread_degrees", "0")

        ComponentObjectSetValue( ability_comp, "gun_config", "actions_per_round", "1")
    end
end
