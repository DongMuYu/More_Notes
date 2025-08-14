local notes_list = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"}

-- 音符到法术名称的对照表
local note_to_spell = {
    ["C"] = "kantele_C",
    ["C#"] = "kantele_Cis",
    ["D"] = "kantele_D",
    ["D#"] = "kantele_Dis",
    ["E"] = "kantele_E",
    ["F"] = "kantele_F",
    ["F#"] = "kantele_Fis",
    ["G"] = "kantele_G",
    ["G#"] = "kantele_Gis",
    ["A"] = "kantele_A",
    ["A#"] = "kantele_Ais",
    ["B"] = "kantele_B",
    ["TEST"] = "TEST"
}

-- 在玩家位置生成一个法术的函数
function Add_Projectiles(player_entity, note_name)

    -- GamePrint("Add_Projectiles" .. note_name)
    if note_name == nil then return false end

    -- 根据音符名称获取对应的法术名称
    local spell_name = note_to_spell[note_name]

    -- GamePrint("Add_Projectiles" .. spell_name)

    if not spell_name then
        GamePrint("未知的音符: " .. note_name)
        return false
    end

    local x, y = EntityGetTransform( player_entity )
    
    -- 创建音符法术实体
    local entity_id = CreateItemActionEntity( spell_name, x, y )

    if entity_id then
        GamePrint("生成了音符法术: " .. spell_name)
        return true
    else
        GamePrint("生成音符法术失败: " .. spell_name)
        return false
    end
end
