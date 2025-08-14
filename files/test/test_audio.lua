dofile_once("data/scripts/lib/utilities.lua")




function Test_audio()

    -- 获取当前正在更新的实体ID（通常是kantele乐器实体）
    local entity_id = GetUpdatedEntityID()

    -- 获取该实体的世界坐标位置（x,y坐标）
    local x, y = EntityGetTransform( entity_id )
    GamePlaySound("mods/More_Notes/files/audio/notes/kantele/bank_notes.bank", "bank_notes/HA_XUE_DA_MAO_XIAN", x, y )

end
