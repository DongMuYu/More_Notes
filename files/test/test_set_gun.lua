dofile_once("data/scripts/gun/procedural/gun_action_utils.lua") 

local fire_rate_frames
local reload_frames



function TestSetGun(player_entity)

    local x, y = EntityGetTransform(player_entity)
    
    -- 初始的fire_rate_frames，避免使用未初始化的值
    local initial_fire_rate_frames = fire_rate_frames or 0
    
    -- 循环100次，每100个x增长格子生成一个法杖，fire_rate_frames增加0.01
    for i = 1, 1000 do
        local current_x = x + (i - 1) * 10
        local wand_id = EntityLoad("data/entities/items/kantele.xml", current_x, y)

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
            for _, v in ipairs(actions) do 
                EntityKill(v)  -- 销毁所有子实体（法术）
            end  
        end

        local ability_comp = EntityGetFirstComponent(wand_id,"AbilityComponent")
        
        if ability_comp then
            -- 更新当前的fire_rate_frames
            local current_fire_rate_frames = initial_fire_rate_frames + (i - 1) * 0.01
            
            GamePrint("fire_rate_frames: " .. tostring(current_fire_rate_frames))
            GamePrint("reload_frames: " .. tostring(reload_frames))
            
            -- 法杖容量设置：可同时携带的法术数量
            ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", "0")
            
            -- 法力回复系统
            ComponentSetValue( ability_comp, "mana_charge_speed", "0")  -- 法力回复速度
            ComponentSetValue( ability_comp, "mana_max", "0")            -- 最大法力值
            
            -- 施法性能优化
            -- 注意：游戏内部使用帧数，需要乘以60转换
            ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", tostring(current_fire_rate_frames))
            ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", "0")
            

            ComponentObjectSetValue( ability_comp, "gun_config", "actions_per_round", "0")
        end
    end
end