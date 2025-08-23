dofile_once("data/scripts/debug/keycodes.lua")

dofile_once("mods/More_Notes/files/utils/add_note.lua")
dofile_once("mods/More_Notes/files/ui/windows_active_events.lua")
dofile_once("mods/More_Notes/files/utils/mouse_position.lua")

--定义功能法术信息表
local func_spell = {
    -- 从 3001 开始
    {id = 3001, name = "FIRE_RATE_WAIT", image = "data/ui_gfx/gun_actions/slow_but_steady.png", label = "FIRE_RATE_WAIT", if_active = false, type = "func", action = function(e_id, gui, player_entity, param)

        if IsAdjustActive("fire_rate_wait") then
            -- GamePrint("FIRE_RATE_WAIT has been removed")
            RemoveActiveAdjust("fire_rate_wait")  
        else
            -- GamePrint("FIRE_RATE_WAIT")
            AddActiveAdjust("fire_rate_wait") 
        end

        -- Add_Note(player_entity, param)

    end},
}

-- 定义音符信息表
local kantele_notes = {
    -- 从 2001 开始

    -- 2号版本
    {id = 2001, note = "kantele_C2",  image = "2/kantele_C2.png",   label = "KANTELE_C2", octave = 2, instrument = "kantele"},
    {id = 2002, note = "kantele_Cis2", image = "2/kantele_Cis2.png", label = "KANTELE_CIS2", octave = 2, instrument = "kantele"},
    {id = 2003, note = "kantele_D2",  image = "2/kantele_D2.png",   label = "KANTELE_D2", octave = 2, instrument = "kantele"},
    {id = 2004, note = "kantele_Dis2", image = "2/kantele_Dis2.png", label = "KANTELE_DIS2", octave = 2, instrument = "kantele"},
    {id = 2005, note = "kantele_E2",  image = "2/kantele_E2.png",   label = "KANTELE_E2", octave = 2, instrument = "kantele"},
    {id = 2006, note = "kantele_F2",  image = "2/kantele_F2.png",   label = "KANTELE_F2", octave = 2, instrument = "kantele"},
    {id = 2007, note = "kantele_Fis2", image = "2/kantele_Fis2.png", label = "KANTELE_FIS2", octave = 2, instrument = "kantele"},
    {id = 2008, note = "kantele_G2",  image = "2/kantele_G2.png",   label = "KANTELE_G2", octave = 2, instrument = "kantele"},
    {id = 2009, note = "kantele_Gis2", image = "2/kantele_Gis2.png", label = "KANTELE_GIS2", octave = 2, instrument = "kantele"},
    {id = 2010, note = "kantele_A2",  image = "2/kantele_A2.png",   label = "KANTELE_A2", octave = 2, instrument = "kantele"},
    {id = 2011, note = "kantele_Ais2", image = "2/kantele_Ais2.png", label = "KANTELE_AIS2", octave = 2, instrument = "kantele"},
    {id = 2012, note = "kantele_B2",  image = "2/kantele_B2.png",   label = "KANTELE_B2", octave = 2, instrument = "kantele"},

    -- 3号版本
    {id = 2013, note = "kantele_C3",  image = "3/kantele_C3.png",   label = "KANTELE_C3", octave = 3, instrument = "kantele"},
    {id = 2014, note = "kantele_Cis3", image = "3/kantele_Cis3.png", label = "KANTELE_CIS3", octave = 3, instrument = "kantele"},
    {id = 2015, note = "kantele_D3",  image = "3/kantele_D3.png",   label = "KANTELE_D3", octave = 3, instrument = "kantele"},
    {id = 2016, note = "kantele_Dis3", image = "3/kantele_Dis3.png", label = "KANTELE_DIS3", octave = 3, instrument = "kantele"},
    {id = 2017, note = "kantele_E3",  image = "3/kantele_E3.png",   label = "KANTELE_E3", octave = 3, instrument = "kantele"},
    {id = 2018, note = "kantele_F3",  image = "3/kantele_F3.png",   label = "KANTELE_F3", octave = 3, instrument = "kantele"},
    {id = 2019, note = "kantele_Fis3", image = "3/kantele_Fis3.png", label = "KANTELE_FIS3", octave = 3, instrument = "kantele"},
    {id = 2020, note = "kantele_G3",  image = "3/kantele_G3.png",   label = "KANTELE_G3", octave = 3, instrument = "kantele"},
    {id = 2021, note = "kantele_Gis3", image = "3/kantele_Gis3.png", label = "KANTELE_GIS3", octave = 3, instrument = "kantele"},
    {id = 2022, note = "kantele_A3",  image = "3/kantele_A3.png",   label = "KANTELE_A3", octave = 3, instrument = "kantele"},
    {id = 2023, note = "kantele_Ais3", image = "3/kantele_Ais3.png", label = "KANTELE_AIS3", octave = 3, instrument = "kantele"},
    {id = 2024, note = "kantele_B3",  image = "3/kantele_B3.png",   label = "KANTELE_B3", octave = 3, instrument = "kantele"},

    -- 4号版本
    {id = 2025, note = "kantele_C",  image = "4/kantele_C.png",   label = "KANTELE_C", octave = 4, instrument = "kantele"},
    {id = 2026, note = "kantele_Cis", image = "4/kantele_Cis.png", label = "KANTELE_CIS", octave = 4, instrument = "kantele"},
    {id = 2027, note = "kantele_D",  image = "4/kantele_D.png",   label = "KANTELE_D", octave = 4, instrument = "kantele"},
    {id = 2028, note = "kantele_Dis", image = "4/kantele_Dis.png", label = "KANTELE_DIS", octave = 4, instrument = "kantele"},
    {id = 2029, note = "kantele_E",  image = "4/kantele_E.png",   label = "KANTELE_E", octave = 4, instrument = "kantele"},
    {id = 2030, note = "kantele_F",  image = "4/kantele_F.png",   label = "KANTELE_F", octave = 4, instrument = "kantele"},
    {id = 2031, note = "kantele_Fis", image = "4/kantele_Fis.png", label = "KANTELE_FIS", octave = 4, instrument = "kantele"},
    {id = 2032, note = "kantele_G",  image = "4/kantele_G.png",   label = "KANTELE_G", octave = 4, instrument = "kantele"},
    {id = 2033, note = "kantele_Gis", image = "4/kantele_Gis.png", label = "KANTELE_GIS", octave = 4, instrument = "kantele"},
    {id = 2034, note = "kantele_A",  image = "4/kantele_A.png",   label = "KANTELE_A", octave = 4, instrument = "kantele"},
    {id = 2035, note = "kantele_Ais", image = "4/kantele_Ais.png", label = "KANTELE_AIS", octave = 4, instrument = "kantele"},
    {id = 2036, note = "kantele_B",  image = "4/kantele_B.png",   label = "KANTELE_B", octave = 4, instrument = "kantele"},
    
    -- 5号版本
    {id = 2037, note = "kantele_C5",  image = "5/kantele_C5.png",   label = "KANTELE_C5", octave = 5, instrument = "kantele"},
    {id = 2038, note = "kantele_Cis5", image = "5/kantele_Cis5.png", label = "KANTELE_CIS5", octave = 5, instrument = "kantele"},
    {id = 2039, note = "kantele_D5",  image = "5/kantele_D5.png",   label = "KANTELE_D5", octave = 5, instrument = "kantele"},
    {id = 2040, note = "kantele_Dis5", image = "5/kantele_Dis5.png", label = "KANTELE_DIS5", octave = 5, instrument = "kantele"},
    {id = 2041, note = "kantele_E5",  image = "5/kantele_E5.png",   label = "KANTELE_E5", octave = 5, instrument = "kantele"},
    {id = 2042, note = "kantele_F5",  image = "5/kantele_F5.png",   label = "KANTELE_F5", octave = 5, instrument = "kantele"},
    {id = 2043, note = "kantele_Fis5", image = "5/kantele_Fis5.png", label = "KANTELE_FIS5", octave = 5, instrument = "kantele"},
    {id = 2044, note = "kantele_G5",  image = "5/kantele_G5.png",   label = "KANTELE_G5", octave = 5, instrument = "kantele"},
    {id = 2045, note = "kantele_Gis5", image = "5/kantele_Gis5.png", label = "KANTELE_GIS5", octave = 5, instrument = "kantele"},
    {id = 2046, note = "kantele_A5",  image = "5/kantele_A5.png",   label = "KANTELE_A5", octave = 5, instrument = "kantele"},
    {id = 2047, note = "kantele_Ais5", image = "5/kantele_Ais5.png", label = "KANTELE_AIS5", octave = 5, instrument = "kantele"},
    {id = 2048, note = "kantele_B5",  image = "5/kantele_B5.png",   label = "KANTELE_B5", octave = 5, instrument = "kantele"},
}

-- 定义OCARINA音符信息表
local ocarina_notes = {
    -- 小字1组
    {id = 2049, note = "ocarina_C3",  image = "3/ocarina_C3.png",   label = "OCARINA_C3", octave = 3, instrument = "ocarina"},
    {id = 2050, note = "ocarina_Cis3", image = "3/ocarina_Cis3.png", label = "OCARINA_CIS3", octave = 3, instrument = "ocarina"},
    {id = 2051, note = "ocarina_D3",  image = "3/ocarina_D3.png",   label = "OCARINA_D3", octave = 3, instrument = "ocarina"},
    {id = 2052, note = "ocarina_Dis3", image = "3/ocarina_Dis3.png", label = "OCARINA_DIS3", octave = 3, instrument = "ocarina"},
    {id = 2053, note = "ocarina_E3",  image = "3/ocarina_E3.png",   label = "OCARINA_E3", octave = 3, instrument = "ocarina"},
    {id = 2054, note = "ocarina_F3",  image = "3/ocarina_F3.png",   label = "OCARINA_F3", octave = 3, instrument = "ocarina"},
    {id = 2055, note = "ocarina_Fis3", image = "3/ocarina_Fis3.png", label = "OCARINA_FIS3", octave = 3, instrument = "ocarina"},
    {id = 2056, note = "ocarina_G3",  image = "3/ocarina_G3.png",   label = "OCARINA_G3", octave = 3, instrument = "ocarina"},
    {id = 2057, note = "ocarina_Gis3", image = "3/ocarina_Gis3.png", label = "OCARINA_GIS3", octave = 3, instrument = "ocarina"},
    {id = 2058, note = "ocarina_A3",  image = "3/ocarina_A3.png",   label = "OCARINA_A3", octave = 3, instrument = "ocarina"},
    {id = 2059, note = "ocarina_Ais3", image = "3/ocarina_Ais3.png", label = "OCARINA_AIS3", octave = 3, instrument = "ocarina"},
    {id = 2060, note = "ocarina_B3",  image = "3/ocarina_B3.png",   label = "OCARINA_B3", octave = 3, instrument = "ocarina"},

    -- 小字2组
    {id = 2061, note = "ocarina_C4",  image = "4/ocarina_C.png",   label = "OCARINA_C4", octave = 4, instrument = "ocarina"},
    {id = 2062, note = "ocarina_Cis4", image = "4/ocarina_Cis.png", label = "OCARINA_CIS4", octave = 4, instrument = "ocarina"},
    {id = 2063, note = "ocarina_D4",  image = "4/ocarina_D.png",   label = "OCARINA_D4", octave = 4, instrument = "ocarina"},
    {id = 2064, note = "ocarina_Dis4", image = "4/ocarina_Dis.png", label = "OCARINA_DIS4", octave = 4, instrument = "ocarina"},
    {id = 2065, note = "ocarina_E4",  image = "4/ocarina_E.png",   label = "OCARINA_E4", octave = 4, instrument = "ocarina"},
    {id = 2066, note = "ocarina_F4",  image = "4/ocarina_F.png",   label = "OCARINA_F4", octave = 4, instrument = "ocarina"},
    {id = 2067, note = "ocarina_Fis4", image = "4/ocarina_Fis.png", label = "OCARINA_FIS4", octave = 4, instrument = "ocarina"},
    {id = 2068, note = "ocarina_G4",  image = "4/ocarina_G.png",   label = "OCARINA_G4", octave = 4, instrument = "ocarina"},
    {id = 2069, note = "ocarina_Gis4", image = "4/ocarina_Gis.png", label = "OCARINA_GIS4", octave = 4, instrument = "ocarina"},
    {id = 2070, note = "ocarina_A4",  image = "4/ocarina_A.png",   label = "OCARINA_A4", octave = 4, instrument = "ocarina"},
    {id = 2071, note = "ocarina_Ais4", image = "4/ocarina_Ais.png", label = "OCARINA_AIS4", octave = 4, instrument = "ocarina"},
    {id = 2072, note = "ocarina_B4",  image = "4/ocarina_B.png",   label = "OCARINA_B4", octave = 4, instrument = "ocarina"},

    -- 小字3组
    {id = 2073, note = "ocarina_C5",  image = "5/ocarina_C5.png",   label = "OCARINA_C5", octave = 5, instrument = "ocarina"},
    {id = 2074, note = "ocarina_Cis5", image = "5/ocarina_Cis5.png", label = "OCARINA_CIS5", octave = 5, instrument = "ocarina"},
    {id = 2075, note = "ocarina_D5",  image = "5/ocarina_D5.png",   label = "OCARINA_D5", octave = 5, instrument = "ocarina"},
    {id = 2076, note = "ocarina_Dis5", image = "5/ocarina_Dis5.png", label = "OCARINA_DIS5", octave = 5, instrument = "ocarina"},
    {id = 2077, note = "ocarina_E5",  image = "5/ocarina_E5.png",   label = "OCARINA_E5", octave = 5, instrument = "ocarina"},
    {id = 2078, note = "ocarina_F5",  image = "5/ocarina_F5.png",   label = "OCARINA_F5", octave = 5, instrument = "ocarina"},
    {id = 2079, note = "ocarina_Fis5", image = "5/ocarina_Fis5.png", label = "OCARINA_FIS5", octave = 5, instrument = "ocarina"},
    {id = 2080, note = "ocarina_G5",  image = "5/ocarina_G5.png",   label = "OCARINA_G5", octave = 5, instrument = "ocarina"},
    {id = 2081, note = "ocarina_Gis5", image = "5/ocarina_Gis5.png", label = "OCARINA_GIS5", octave = 5, instrument = "ocarina"},
    {id = 2082, note = "ocarina_A5",  image = "5/ocarina_A5.png",   label = "OCARINA_A5", octave = 5, instrument = "ocarina"},
    {id = 2083, note = "ocarina_Ais5", image = "5/ocarina_Ais5.png", label = "OCARINA_AIS5", octave = 5, instrument = "ocarina"},
    {id = 2084, note = "ocarina_B5",  image = "5/ocarina_B5.png",   label = "OCARINA_B5", octave = 5, instrument = "ocarina"},

    -- 小字4组
    {id = 2085, note = "ocarina_C6",  image = "6/ocarina_C6.png",   label = "OCARINA_C6", octave = 6, instrument = "ocarina"},
    {id = 2086, note = "ocarina_Cis6", image = "6/ocarina_Cis6.png", label = "OCARINA_CIS6", octave = 6, instrument = "ocarina"},
    {id = 2087, note = "ocarina_D6",  image = "6/ocarina_D6.png",   label = "OCARINA_D6", octave = 6, instrument = "ocarina"},
    {id = 2088, note = "ocarina_Dis6", image = "6/ocarina_Dis6.png", label = "OCARINA_DIS6", octave = 6, instrument = "ocarina"},
    {id = 2089, note = "ocarina_E6",  image = "6/ocarina_E6.png",   label = "OCARINA_E6", octave = 6, instrument = "ocarina"},
    {id = 2090, note = "ocarina_F6",  image = "6/ocarina_F6.png",   label = "OCARINA_F6", octave = 6, instrument = "ocarina"},
    {id = 2091, note = "ocarina_Fis6", image = "6/ocarina_Fis6.png", label = "OCARINA_FIS6", octave = 6, instrument = "ocarina"},
    {id = 2092, note = "ocarina_G6",  image = "6/ocarina_G6.png",   label = "OCARINA_G6", octave = 6, instrument = "ocarina"},
    {id = 2093, note = "ocarina_Gis6", image = "6/ocarina_Gis6.png", label = "OCARINA_GIS6", octave = 6, instrument = "ocarina"},
    {id = 2094, note = "ocarina_A6",  image = "6/ocarina_A6.png",   label = "OCARINA_A6", octave = 6, instrument = "ocarina"},
    {id = 2095, note = "ocarina_Ais6", image = "6/ocarina_Ais6.png", label = "OCARINA_AIS6", octave = 6, instrument = "ocarina"},
    {id = 2096, note = "ocarina_B6",  image = "6/ocarina_B6.png",   label = "OCARINA_B6", octave = 6, instrument = "ocarina"},
}
local lists = {kantele_notes, ocarina_notes, func_spell}

function GuiGetNotesMenu(gui, screen_w, screen_h, player_entity)
    
    -- 菜单按钮
    GuiZSet(gui, 10)
    local click_main_menu = GuiImageButton(gui, 1001, screen_w/45 + 5, screen_h/8, "", "mods/More_Notes/files/ui/ui_gfx/menus/menu.png")
    
    -- 检查鼠标是否悬浮在菜单按钮上
    local _, _, hovered_menu = GuiGetPreviousWidgetInfo(gui)
    if hovered_menu then 
        AddActivePopup("show_menu_status(notes_menu)") 
    else 
        RemoveActivePopup("show_menu_status(notes_menu)") 
    end

    -- 切换菜单状态
    if click_main_menu then
        if not IsScrollActive("notes_menu") then
            AddActiveScroll("notes_menu")
        else
            RemoveActiveScroll("notes_menu")
        end
    end

    -- 显示鼠标位置
    -- DrawMousePosition(gui, screen_h)

    -- 检查是否激活获取音符的菜单
    RenderScrollContainer(gui, player_entity, lists)

    -- GamePrint("Finish menus rendering")
end