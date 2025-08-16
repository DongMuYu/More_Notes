-- 在玩家位置生成一个法术的函数
function Add_Note(player_entity, note_name)

    -- GamePrint("Add_Note" .. note_name)
    if note_name == nil then return false end

    -- 根据音符名称获取对应的法术名称
    -- GamePrint("Add_Note" .. note_name)
    if not note_name then
        GamePrint("未知的音符: " .. note_name)
        return false
    end

    local x, y = EntityGetTransform( player_entity )
    
    -- 创建音符法术实体
    local entity_id = CreateItemActionEntity( note_name, x, y )

    if entity_id then
        GamePrint("生成了音符法术: " .. note_name)
        return true
    else
        GamePrint("生成音符法术失败: " .. note_name)
        return false
    end
end
