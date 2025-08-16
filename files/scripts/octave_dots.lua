-- -- octave_dots.lua
-- -- 统一的八度点标记处理脚本
-- -- 根据实体信息匹配不同的八度标记逻辑

-- dofile_once("data/scripts/lib/utilities.lua")

-- GamePrint("Correction triggered!")

-- -- 获取当前实体ID
-- local entity_id = GetUpdatedEntityID()
-- local name = nil
-- local value = nil

-- local test_file = "mods/More_Notes/files/audio/notes/kantele/kantele_more_notes.bank"
-- local test_event_root = "kantele_two_lined_octave/kantele_A5"

-- -- 八度标记类型定义
-- local OCTAVE_TYPES = {
--     ottava_alta = {
--         name = "ottava_alta",
--         display_name = "Ottava Alta",
--         description = "Play the notes one octave higher"
--     },
--     ottava_bassa = {
--         name = "ottava_bassa", 
--         display_name = "Ottava Bassa",
--         description = "Play the notes one octave lower"
--     },
--     quindicesima_alta = {
--         name = "quindicesima_alta",
--         display_name = "Quindicesima Alta",
--         description = "Play the notes two octaves higher"
--     },
--     quindicesima_bassa = {
--         name = "quindicesima_bassa",
--         display_name = "Quindicesima Bassa", 
--         description = "Play the notes two octaves lower"
--     }
-- }

-- -- 从实体获取八度标记类型或音符信息
-- -- 获取VariableStorageComponent中的标记类型或kantele_note
-- local comps = EntityGetComponent(entity_id, "VariableStorageComponent")

-- -- 调试：列出所有组件
-- -- for _,comp in pairs(EntityGetAllComponents(entity_id)) do
-- --      GamePrint(comp)
-- -- end

-- if ( comps ~= nil ) then
--     for i, comp in ipairs( comps ) do

--         name = ComponentGetValue2(comp, "name")
--         value = ComponentGetValue2(comp, "value_string")

--         GamePrint("OCTAVE VariableStorageComponent: " .. name)
--         GamePrint("OCTAVE VariableStorageComponent: " .. value)

--         local is = EntityGetComponent(entity_id, "AudioComponent")
--         if ( name == "kantele_note" ) then
--             if ( is ~= nil ) then
--                 for i, comp in ipairs( is ) do

--                     -- local file = ComponentGetValue2(comp, "file")
--                     -- local event_root = ComponentGetValue2(comp, "event_root")

--                     -- GamePrint("OCTAVE AudioComponent: " .. file)
--                     -- GamePrint("OCTAVE AudioComponent: " .. event_root)

--                     EntityRemoveComponent(entity_id, "AudioComponent")
--                     EntityAddComponent2(entity_id, "AudioComponent", {
--                         file = test_file,                    -- 新的音频bank文件路径
--                         event_root = test_event_root,        -- 新的事件根路径
--                         set_latest_event_position = "1"     -- 设置最新事件位置，确保音频正确播放
--                     })
                        
--                 end
--             end
--         end
--     end
-- end


-- GamePrint("Correction finished!")
