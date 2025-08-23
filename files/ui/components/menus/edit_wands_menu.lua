dofile_once("data/scripts/debug/keycodes.lua")
dofile_once("mods/More_Notes/files/utils/edit_wands.lua")
dofile_once("mods/More_Notes/files/ui/windows_active_events.lua")

-- 各种法杖的参数
local wands_params = {
    {

        -- 基础参数
        name = "kantele",
        image = "data/items_gfx/kantele.png",
        alpha = 1,
        scale = 6,
        scale_y = 0,
        rotation = -1.57,
        image_x = function() return screen_w/45 + 110 end,
        image_y = function() return screen_h/8 + 140 end,
        ability = {

            mana_charge_speed = 1000,
            mana_max = 1000,
            reload_time = 0.00,
            fire_rate_wait = 0.00,
            deck_capacity = 26,
            actions_per_round = 1,

            -- -- 单位为秒
            -- reload_time_second = 0,
            -- fire_rate_wait_second = 0,
        }
    },
    {
        name = "ocarina",
        alpha = 1,
        scale = 1,
        scale_y = 0,
        rotation = -1.57,
        ability = {
            mana_charge_speed = 1000,
            mana_max = 1000,
            reload_time = 0.00,
            fire_rate_wait = 0.00,
            deck_capacity = 26,
            actions_per_round = 1,
        }
    }
}

local images = {"kantele"}

function GuiEditWandsMenu(gui, screen_w, screen_h, player_entity)
    
    GuiZSet(gui, 10)
    local click_edit_menu = GuiImageButton(gui, 1501, screen_w/45 + 45, screen_h/8 + 1, "", "mods/More_Notes/files/ui/ui_gfx/menus/editor.png")

    -- 检查鼠标是否悬浮在菜单按钮上
    local _, _, hovered_menu = GuiGetPreviousWidgetInfo(gui)
    if hovered_menu then 
        AddActivePopup("show_menu_status(edit_wands_menu)") 
    else 
        RemoveActivePopup("show_menu_status(edit_wands_menu)") 
    end


    if click_edit_menu then 
        if not IsPanelActive("edit_wands_menu") then
            AddActivePanel("edit_wands_menu")
        else
            RemoveActivePanel("edit_wands_menu")
        end
    end

    RenderEditWandsMenu(gui, player_entity, wands_params, images)
end


