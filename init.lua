ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/More_Notes/files/gun/gun_actions.lua")
ModRegisterAudioEventMappings("mods/More_Notes/files/audio/notes/kantele/GUIDs.txt")

dofile_once("mods/More_Notes/files/ui/main_ui.lua")
dofile_once("mods/More_Notes/files/utils/setgun.lua")
dofile_once("data/scripts/perks/perk.lua")

local player_entity = nil
-- local if_get_item = false

function OnPlayerSpawned(entity)
    -- 获取玩家实体ID
    player_entity = entity

    -- 获取玩家实体的位置
    local x, y = EntityGetTransform( player_entity )

    -- CreateItemActionEntity("TEST_A", x, y)

    -- perk_spawn(x, y, "EDIT_WANDS_EVERYWHERE")

    -- CreateWand(x, y)

    -- CreateItemActionEntity("OTTAVA_ALTA", x, y)

    -- GamePrint("OnPlayerSpawned")
end


function OnWorldPostUpdate()

    -- 检查玩家实体是否加载完成
    if player_entity == nil then
        -- GamePrint("玩家未加载")
        return
    end

    -- 调用渲染GUI函数
    RenderGUI(player_entity)

    -- if if_get_item == false then

    --     GamePrint("Player ID:" .. tostring(player_entity))
        
    --     local x, y = EntityGetTransform( player_entity )
    --     GamePrint( tostring(x) .. ", " .. tostring(y))

    --     if_get_item = true
    -- end

    -- GamePrint("Finish World Post Update")

end

function OnWorldInitialized()

    -- GamePrint("The World Initialized")

end
