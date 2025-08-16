dofile_once("data/scripts/debug/keycodes.lua")
dofile_once("mods/More_Notes/files/utils/add_note.lua")

-- 窗口活动状态
local active_menu = nil

-- 处理按钮是否点击
local if_click_main_menu = false

-- 菜单初始化状态
local if_init_menu = false

-- 每个音符的悬浮状态表
local note_hover_states = {} 

-- local if_drag_menu = false

-- 菜单位置
local menu_x = 0
local menu_y = 0

-- -- 记录鼠标位置
-- local Pos_x = 0
-- local Pos_y = 0

-- 定义音符信息表
local kantele_notes = {
    -- 2号版本，ID以90001开头
    {id = 90001, note = "KANTELE_C2",  image = "2/kantele_c2.png",   label = "kantele_C2", octave = 2, instrument = "kantele"},
    {id = 90002, note = "KANTELE_C#2", image = "2/kantele_cis2.png", label = "kantele_Cis2", octave = 2, instrument = "kantele"},
    {id = 90003, note = "KANTELE_D2",  image = "2/kantele_d2.png",   label = "kantele_D2", octave = 2, instrument = "kantele"},
    {id = 90004, note = "KANTELE_D#2", image = "2/kantele_dis2.png", label = "kantele_Dis2", octave = 2, instrument = "kantele"},
    {id = 90005, note = "KANTELE_E2",  image = "2/kantele_e2.png",   label = "kantele_E2", octave = 2, instrument = "kantele"},
    {id = 90006, note = "KANTELE_F2",  image = "2/kantele_f2.png",   label = "kantele_F2", octave = 2, instrument = "kantele"},
    {id = 90007, note = "KANTELE_F#2", image = "2/kantele_fis2.png", label = "kantele_Fis2", octave = 2, instrument = "kantele"},
    {id = 90008, note = "KANTELE_G2",  image = "2/kantele_g2.png",   label = "kantele_G2", octave = 2, instrument = "kantele"},
    {id = 90009, note = "KANTELE_G#2", image = "2/kantele_gis2.png", label = "kantele_Gis2", octave = 2, instrument = "kantele"},
    {id = 90010, note = "KANTELE_A2",  image = "2/kantele_a2.png",   label = "kantele_A2", octave = 2, instrument = "kantele"},
    {id = 90011, note = "KANTELE_A#2", image = "2/kantele_ais2.png", label = "kantele_Ais2", octave = 2, instrument = "kantele"},
    {id = 90012, note = "KANTELE_B2",  image = "2/kantele_b2.png",   label = "kantele_B2", octave = 2, instrument = "kantele"},

    -- 3号版本，ID以8开头
    {id = 80001, note = "KANTELE_C3",  image = "3/kantele_c3.png",   label = "kantele_C3", octave = 3, instrument = "kantele"},
    {id = 80002, note = "KANTELE_C#3", image = "3/kantele_cis3.png", label = "kantele_Cis3", octave = 3, instrument = "kantele"},
    {id = 80003, note = "KANTELE_D3",  image = "3/kantele_d3.png",   label = "kantele_D3", octave = 3, instrument = "kantele"},
    {id = 80004, note = "KANTELE_D#3", image = "3/kantele_dis3.png", label = "kantele_Dis3", octave = 3, instrument = "kantele"},
    {id = 80005, note = "KANTELE_E3",  image = "3/kantele_e3.png",   label = "kantele_E3", octave = 3, instrument = "kantele"},
    {id = 80006, note = "KANTELE_F3",  image = "3/kantele_f3.png",   label = "kantele_F3", octave = 3, instrument = "kantele"},
    {id = 80007, note = "KANTELE_F#3", image = "3/kantele_fis3.png", label = "kantele_Fis3", octave = 3, instrument = "kantele"},
    {id = 80008, note = "KANTELE_G3",  image = "3/kantele_g3.png",   label = "kantele_G3", octave = 3, instrument = "kantele"},
    {id = 80009, note = "KANTELE_G#3", image = "3/kantele_gis3.png", label = "kantele_Gis3", octave = 3, instrument = "kantele"},
    {id = 80010, note = "KANTELE_A3",  image = "3/kantele_a3.png",   label = "kantele_A3", octave = 3, instrument = "kantele"},
    {id = 80011, note = "KANTELE_A#3", image = "3/kantele_ais3.png", label = "kantele_Ais3", octave = 3, instrument = "kantele"},
    {id = 80012, note = "KANTELE_B3",  image = "3/kantele_b3.png",   label = "kantele_B3", octave = 3, instrument = "kantele"},

    -- 4号版本，ID以7开头
    {id = 70001, note = "KANTELE_C4",  image = "4/kantele_c.png",   label = "kantele_C", octave = 4, instrument = "kantele"},
    {id = 70002, note = "KANTELE_C#4", image = "4/kantele_cis.png", label = "kantele_Cis", octave = 4, instrument = "kantele"},
    {id = 70003, note = "KANTELE_D4",  image = "4/kantele_d.png",   label = "kantele_D", octave = 4, instrument = "kantele"},
    {id = 70004, note = "KANTELE_D#4", image = "4/kantele_dis.png", label = "kantele_Dis", octave = 4, instrument = "kantele"},
    {id = 70005, note = "KANTELE_E4",  image = "4/kantele_e.png",   label = "kantele_E", octave = 4, instrument = "kantele"},
    {id = 70006, note = "KANTELE_F4",  image = "4/kantele_f.png",   label = "kantele_F", octave = 4, instrument = "kantele"},
    {id = 70007, note = "KANTELE_F#4", image = "4/kantele_fis.png", label = "kantele_Fis", octave = 4, instrument = "kantele"},
    {id = 70008, note = "KANTELE_G4",  image = "4/kantele_g.png",   label = "kantele_G", octave = 4, instrument = "kantele"},
    {id = 70009, note = "KANTELE_G#4", image = "4/kantele_gis.png", label = "kantele_Gis", octave = 4, instrument = "kantele"},
    {id = 70010, note = "KANTELE_A4",  image = "4/kantele_a.png",   label = "kantele_A", octave = 4, instrument = "kantele"},
    {id = 70011, note = "KANTELE_A#4", image = "4/kantele_ais.png", label = "kantele_Ais", octave = 4, instrument = "kantele"},
    {id = 70012, note = "KANTELE_B4",  image = "4/kantele_b.png",   label = "kantele_B", octave = 4, instrument = "kantele"},
    
    -- 5号版本，ID以6开头
    {id = 60001, note = "KANTELE_C5",  image = "5/kantele_c5.png",   label = "kantele_C5", octave = 5, instrument = "kantele"},
    {id = 60002, note = "KANTELE_C#5", image = "5/kantele_cis5.png", label = "kantele_Cis5", octave = 5, instrument = "kantele"},
    {id = 60003, note = "KANTELE_D5",  image = "5/kantele_d5.png",   label = "kantele_D5", octave = 5, instrument = "kantele"},
    {id = 60004, note = "KANTELE_D#5", image = "5/kantele_dis5.png", label = "kantele_Dis5", octave = 5, instrument = "kantele"},
    {id = 60005, note = "KANTELE_E5",  image = "5/kantele_e5.png",   label = "kantele_E5", octave = 5, instrument = "kantele"},
    {id = 60006, note = "KANTELE_F5",  image = "5/kantele_f5.png",   label = "kantele_F5", octave = 5, instrument = "kantele"},
    {id = 60007, note = "KANTELE_F#5", image = "5/kantele_fis5.png", label = "kantele_Fis5", octave = 5, instrument = "kantele"},
    {id = 60008, note = "KANTELE_G5",  image = "5/kantele_g5.png",   label = "kantele_G5", octave = 5, instrument = "kantele"},
    {id = 60009, note = "KANTELE_G#5", image = "5/kantele_gis5.png", label = "kantele_Gis5", octave = 5, instrument = "kantele"},
    {id = 60010, note = "KANTELE_A5",  image = "5/kantele_a5.png",   label = "kantele_A5", octave = 5, instrument = "kantele"},
    {id = 60011, note = "KANTELE_A#5", image = "5/kantele_ais5.png", label = "kantele_Ais5", octave = 5, instrument = "kantele"},
    {id = 60012, note = "KANTELE_B5",  image = "5/kantele_b5.png",   label = "kantele_B5", octave = 5, instrument = "kantele"},
}
function GuiGetMenus(gui, screen_w, screen_h, player_entity)

    -- DEBUG_MARK(100, 200, "标记点", 1, 0, 0)
    
    -- GamePrint("Start rendering menus")
    -- if not if_init_menu then
    --     -- 设置菜单页面的初始位置
    --     menu_x = screen_w/45 + 5
    --     menu_y = screen_h/8 + 35
    --     if_init_menu = true

    -- end
    
    -- 菜单按钮
    -- GamePrint("try to render menu button!")
    local click_main_menu = GuiImageButton(gui, 10001, screen_w/45 + 5, screen_h/8, "", "mods/More_Notes/files/ui/ui_gfx/menus/menu.png")
    -- local TEST = GuiButton(gui, 100, screen_w/2, screen_h/2, "TEST")

    -- local click_menu = GuiButton(gui, 1, screen_w/50, screen_h/14, "菜单")
    local _, _, hovered_menu = GuiGetPreviousWidgetInfo(gui)

    local sx, sy = InputGetMousePosOnScreen()

    -- 玩家位置
    local px, py = EntityGetTransform(player_entity)

    GuiText(gui, 5, screen_h*43/45, "鼠标位置: " .. tostring(sx) .. ", " .. tostring(sy))
    -- GuiText(gui, 5, screen_h*43/45 - 20, "菜单位置: " .. tostring(menu_x) .. ", " .. tostring(menu_y))
    
    -- -- 记录鼠标按下时的偏移量
    -- if InputIsMouseButtonJustDown(1) and not if_drag_menu then
    --     GamePrint("尝试拖动菜单")
    --     if sx > menu_x and sx < menu_x + 80 and sy > menu_y and sy < menu_y + 250 then
    --         Pos_x = sx
    --         Pos_y = sy
    --         if_drag_menu = true
    --     end
    -- end

    -- -- 拖动菜单
    -- if if_drag_menu then
    --     menu_x = menu_x + (sx - Pos_x)
    --     menu_y = menu_y + (sy - Pos_y)
    -- end

    -- if not InputIsMouseButtonJustDown(1) then
    --     if_drag_menu = false
    -- end

    if hovered_menu then
        GuiZSet(gui, 100009)
        GuiImageNinePiece(gui, 10002, screen_w/45 + 45, screen_h/8 + 8, 38, 20)

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

        -- GuiImageNinePiece(gui, 1001, screen_w/45 + 5, screen_h/8 + 35, 80, 250)

        menu_x = screen_w/45 + 5
        menu_y = screen_h/8 + 35
        GuiBeginScrollContainer(gui, 1001, menu_x, menu_y, 80, 250, true, 2, 2) 
        -- GuiBeginScrollContainer(gui, 1001, screen_w/45 + 5, screen_h/8 + 35, 80, 250, true, 2, 2)
        -- GuiBeginScrollContainer( gui:对象, id:整数, x:数值, y:数值, width:数值, height:数值, scrollbar_gamepad_focusable:布尔 = true, margin_x:数值 = 2, margin_y:数值 = 2 )

        
        -- GamePrint("菜单位置:" .. tostring(menu_x) .. ", " .. tostring(menu_y))

        local inner_x = 5     -- 左边空一点
        local inner_y = 5     -- 上边空一点
        local line_h = 20     -- 每行高度

        -- GuiZSet(gui, 1)
        -- GamePrint("Start rendering Buttons")

        -- 使用循环创建按钮
        for _, note_info in ipairs(kantele_notes) do
            local button = GuiImageButton(gui, note_info.id, inner_x, inner_y, "", "data/ui_gfx/gun_actions/kantele/" .. note_info.image)
            local _, _, hovered_button = GuiGetPreviousWidgetInfo(gui)

            local note_id = tostring(note_info.id)
            
            -- 检测悬浮状态变化（边缘触发）
            if hovered_button and not note_hover_states[note_id] then
                -- 鼠标刚进入这个音符按钮
                local octave_prefix = ""
                if note_info.octave == 2 then
                    octave_prefix = "kantele_great_octave"
                elseif note_info.octave == 3 then
                    octave_prefix = "kantele_small_octave"
                elseif note_info.octave == 4 then
                    octave_prefix = "kantele_one_lined_octave"
                elseif note_info.octave == 5 then
                    octave_prefix = "kantele_two_lined_octave"
                end
                GamePlaySound("mods/More_Notes/files/audio/notes/kantele/kantele_more_notes.bank", 
                            octave_prefix .. "/" .. note_info.label .. "/create", px, py)

                -- GamePrint("event_root: " .. "kantele_great_octave/" .. note_info.label)
                note_hover_states[note_id] = true
            elseif not hovered_button and note_hover_states[note_id] then
                -- 鼠标刚离开这个音符按钮
                note_hover_states[note_id] = false
            end

            inner_y = inner_y + line_h
        end

        -- 添加一个不可见的占位元素来扩展滚动区域，确保最后一个音符完整显示
        GuiImageButton(gui, 999999, inner_x, inner_y, "", "")
        
        -- local test = GuiButton(gui, 990000, screen_w/45 + 10, screen_h/8 + 280, "test")
        -- if test then clicked_note = "TEST" end
        GuiEndScrollContainer(gui)
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

    Add_Note(player_entity, clicked_note)
    -- GamePrint("Finish menus rendering")
end