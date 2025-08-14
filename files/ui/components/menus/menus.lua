dofile_once("data/scripts/debug/keycodes.lua")
dofile_once("mods/More_Notes/files/utils/add_projectiles.lua")

-- 窗口活动状态
local active_menu = nil

-- 处理按钮是否点击
local if_click_main_menu = false

function GuiGetMenus(gui, screen_w, screen_h, player_entity)
    
    -- GamePrint("Start rendering menus")

    -- 菜单按钮
    -- GamePrint("try to render menu button!")
    local click_main_menu = GuiImageButton(gui, 10001, screen_w/45 + 5, screen_h/8, "", "mods/More_Notes/files/ui/ui_gfx/menus/menu.png")
    -- local TEST = GuiButton(gui, 100, screen_w/2, screen_h/2, "TEST")

    -- local click_menu = GuiButton(gui, 1, screen_w/50, screen_h/14, "菜单")
    local _, _, hovered_menu = GuiGetPreviousWidgetInfo(gui)

    if hovered_menu then
        GuiZSet(gui, 100009)
        GuiImageNinePiece(gui, 10002, screen_w/45 + 45, screen_h/8 + 8, 40, 25)

        GuiZSet(gui, 100008)
        if if_click_main_menu then

            GuiText(gui, screen_w/45 + 48, screen_h/8 + 10, "隐藏菜单")
        else
            GuiText(gui, screen_w/45 + 48, screen_h/8 + 10, "显示菜单")
        end
    end

    -- 检查当前活动窗口是否为主窗口，确保当活动窗口值为主窗口时主窗口存在
    if active_menu == 'main' then
        if_click_main_menu = true
    end

    local clicked_note = nil

    if if_click_main_menu and active_menu == 'main' then

        -- 打开菜单
        -- 设置菜单背景
        GuiZSet(gui, 100)
        GuiImageNinePiece(gui, 1001, screen_w/45 + 5, screen_h/8 + 35, 80, 280)

        
        GuiZSet(gui, 1)

        -- GamePrint("Start rendering Buttons")

        -- local kantele_C = GuiImageButton(gui, 10003, screen_w/45 + 10, screen_h/8 + 35, "", "mods/More_Notes/files/ui/ui_gfx/notes/kantele_C.png")
        local kantele_C = GuiImageButton(gui, 90001, screen_w/45 + 10, screen_h/8 + 40, "", "data/ui_gfx/gun_actions/kantele_c.png")

        if kantele_C then clicked_note = "C" end

        local kantele_Cis = GuiImageButton(gui, 90002, screen_w/45 + 10, screen_h/8 + 60, "", "data/ui_gfx/gun_actions/kantele_cis.png")  
        if kantele_Cis then clicked_note = "C#" end

        local kantele_D = GuiImageButton(gui, 90003, screen_w/45 + 10, screen_h/8 + 80, "", "data/ui_gfx/gun_actions/kantele_d.png")        
        if kantele_D then clicked_note = "D" end

        local kantele_Dis = GuiImageButton(gui, 90004, screen_w/45 + 10, screen_h/8 + 100, "", "data/ui_gfx/gun_actions/kantele_dis.png")
        if kantele_Dis then clicked_note = "D#" end

        local kantele_E = GuiImageButton(gui, 90005, screen_w/45 + 10, screen_h/8 + 120, "", "data/ui_gfx/gun_actions/kantele_e.png")
        if kantele_E then clicked_note = "E" end

        local kantele_F = GuiImageButton(gui, 90006, screen_w/45 + 10, screen_h/8 + 140, "", "data/ui_gfx/gun_actions/kantele_f.png")
        if kantele_F then clicked_note = "F" end

        local kantele_Fis = GuiImageButton(gui, 90007, screen_w/45 + 10, screen_h/8 + 160, "", "data/ui_gfx/gun_actions/kantele_fis.png")
        if kantele_Fis then clicked_note = "F#" end

        local kantele_G = GuiImageButton(gui, 90008, screen_w/45 + 10, screen_h/8 + 180, "", "data/ui_gfx/gun_actions/kantele_g.png")
        if kantele_G then clicked_note = "G" end

        local kantele_Gis = GuiImageButton(gui, 90009, screen_w/45 + 10, screen_h/8 + 200, "", "data/ui_gfx/gun_actions/kantele_gis.png")
        if kantele_Gis then clicked_note = "G#" end

        local kantele_A = GuiImageButton(gui, 90010, screen_w/45 + 10, screen_h/8 + 220, "", "data/ui_gfx/gun_actions/kantele_a.png")
        if kantele_A then clicked_note = "A" end

        local kantele_Ais = GuiImageButton(gui, 90011, screen_w/45 + 10, screen_h/8 + 240, "", "data/ui_gfx/gun_actions/kantele_ais.png")
        if kantele_Ais then clicked_note = "A#" end

        local kantele_B = GuiImageButton(gui, 90012, screen_w/45 + 10, screen_h/8 + 260, "", "data/ui_gfx/gun_actions/kantele_b.png")
        if kantele_B then clicked_note = "B" end

        local test = GuiButton(gui, 990000, screen_w/45 + 10, screen_h/8 + 280, "test")
        if test then clicked_note = "TEST" end

    end

        -- 切换菜单状态
    if click_main_menu then
        if_click_main_menu = not if_click_main_menu
        if active_menu == 'main' then
            active_menu = nil
        else
            active_menu = 'main'
        end
    end

    Add_Projectiles(player_entity, clicked_note)
    -- GamePrint("Finish menus rendering")
end