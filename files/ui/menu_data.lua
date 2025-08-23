-- 初始化八度前缀
local octave_prefix = "1234" -- (用于右键触发函数，音频播放的前缀识别)

-- 初始化全局延迟系数
global_fire_rate_coefficient = 123456

-- 各个按钮的悬浮状态表
local button_hover_states = {}

-- 活动窗口列表

-- 存储当前活动的所有滚动页面
local scroll_menus = {
    {   name = "notes_menu", is_active = false, if_init = false, if_drag = false,

        -- 窗口位置
        menu_x = function() return screen_w/45 + 5 end,
        menu_y = function() return screen_h/8 + 35 end,

        -- 窗口大小
        menu_width = function() return 80 end,
        menu_height = function() return 250 end,

        -- 滚动窗口各个参数
        scroll_window = 
        {   line_h = 20,

            -- 按钮位置
            inner = { kantele = {x = 5, y = 5}, ocarina = {x = 25, y = 5}, func = {x = 45, y = 5} },
        },

        -- 文件地址表
        file_path = {
            kantele = "data/ui_gfx/gun_actions/kantele/",
            ocarina = "data/ui_gfx/gun_actions/ocarina/",
        },

        instruments_button_action = {
            -- 左键触发函数
            left_func = function(e_id, player_entity, param)
                -- GamePrint("左键触发函数")
                dofile_once("mods/More_Notes/files/utils/add_note.lua")
                Add_Note(player_entity, param)

            end,

            -- 右键触发函数
            right_func = function(e_id, _octave_prefix)
                -- GamePrint("右键触发函数")

                -- 播放音符音效
                if e_id.instrument == "kantele" then
                    -- GamePrint("kantele")

                    -- 鼠标刚进入这个音符按钮
                    _octave_prefix = ""

                    if e_id.octave == 2 then
                        _octave_prefix = "kantele_great_octave"
                    elseif e_id.octave == 3 then
                        _octave_prefix = "kantele_small_octave"
                    elseif e_id.octave == 4 then
                        _octave_prefix = "kantele_one_lined_octave"
                    elseif e_id.octave == 5 then
                        _octave_prefix = "kantele_two_lined_octave"
                    end

                    GamePlaySound("mods/More_Notes/files/audio/notes/kantele/kantele_test_more_notes.bank", _octave_prefix .. "/" .. e_id.note .. "/create", screen_w/2, screen_h/2)
                    -- GamePrint(_octave_prefix .. "/" .. e_id.note .. "/create")

                elseif e_id.instrument == "ocarina" then
                    -- GamePrint("ocarina")

                    -- 鼠标刚进入这个音符按钮
                    _octave_prefix = ""

                    if e_id.octave == 2 then
                        _octave_prefix = "ocarina_great_octave"
                    elseif e_id.octave == 3 then
                        _octave_prefix = "ocarina_small_octave"
                    elseif e_id.octave == 4 then
                        _octave_prefix = "ocarina_one_lined_octave"
                    elseif e_id.octave == 5 then
                        _octave_prefix = "ocarina_two_lined_octave"
                    elseif e_id.octave == 6 then
                        _octave_prefix = "ocarina_three_lined_octave"
                    end

                    GamePlaySound("mods/More_Notes/files/audio/notes/ocarina/ocarina_test_more_notes.bank", _octave_prefix .. "/" .. e_id.note .. "/create", screen_w/2, screen_h/2)
                    -- GamePrint(_octave_prefix .. "/" .. e_id.note .. "/create")
                end
            end,
        },

        func_button_action = {
            -- 左键触发函数
            left_func = function(e_id, gui, player_entity, param)
                -- GamePrint("左键触发函数")
                        
                -- AddActiveAdjust("fire_rate_wait")
                e_id.action(e_id, gui, player_entity, param)

            end,

            -- 右键触发函数
            right_func = function(e_id, param)
                -- GamePrint("右键触发函数")
            end,
        },



        -- 自定义悬浮按钮触发函数
        hover_funcs = {
            kantele = function(e_id, _octave_prefix)

                local px, py = screen_w/2, screen_h/2

                -- 鼠标刚进入这个音符按钮
                _octave_prefix = ""

                if e_id.octave == 2 then
                    _octave_prefix = "kantele_great_octave"
                elseif e_id.octave == 3 then
                    _octave_prefix = "kantele_small_octave"
                elseif e_id.octave == 4 then
                    _octave_prefix = "kantele_one_lined_octave"
                elseif e_id.octave == 5 then
                    _octave_prefix = "kantele_two_lined_octave"
                end

                -- GamePrint("kantele " .. e_id.label .. " (播放音乐)")
                GamePlaySound("mods/More_Notes/files/audio/notes/kantele/kantele_test_more_notes.bank", _octave_prefix .. "/" .. e_id.note .. "/create", px, py)

                return _octave_prefix
            end,
            ocarina = function(e_id, _octave_prefix)

                local px, py = screen_w/2, screen_h/2

                -- 鼠标刚进入这个音符按钮
                _octave_prefix = ""

                if e_id.octave == 2 then
                    _octave_prefix = "ocarina_great_octave"
                elseif e_id.octave == 3 then
                    _octave_prefix = "ocarina_small_octave"
                elseif e_id.octave == 4 then
                    _octave_prefix = "ocarina_one_lined_octave"
                elseif e_id.octave == 5 then
                    _octave_prefix = "ocarina_two_lined_octave"
                elseif e_id.octave == 6 then
                    _octave_prefix = "ocarina_three_lined_octave"
                end

                -- GamePrint("ocarina " .. e_id.label .. " (播放音乐)")
                GamePlaySound("mods/More_Notes/files/audio/notes/ocarina/ocarina_test_more_notes.bank", _octave_prefix .. "/" .. e_id.note .. "/create", px, py)
                -- GamePrint(_octave_prefix .. "/" .. e_id.note .. "/create")

            end,
        }


    },
}


-- 当前活动的面板类窗口列表
-- 存储当前活动的所有面板类窗口页面名称
local panel_menus = {
    {
        name = "edit_wands_menu",
        is_active = false,
        if_init = false,
        if_drag = false,
        if_edit_wands_menu_width = false,

        -- 当前的法杖类型 （默认是 Kantele）
        current_wand_type = "kantele",

        panel_x = function() return screen_w/45 + 101 end,
        panel_y = function() return screen_h/8 + 35 end,

        -- 窗口大小
        panel_width_1 = function() return 333 end,
        panel_width_2 = function() return 270 end,

        panel_height = function() return 150 end,

        -- 参数调节按钮
        button_y_offset = function() return 0 end,
        button_y_spacing = function() return 18 end,

        button_x_offset = function() return 0 end,
        button_x_spacing = function() return 25 end,

        -- 按钮状态
        button_states = {},

        -- 调控按钮模式
        fine_control_mode = true,

        -- 定义参数顺序和显示名称
        wand_param_order = {
            {key = "actions_per_round", display = "法术数/施放"},
            {key = "fire_rate_wait", display = "施放延迟"},
            {key = "reload_time", display = "充能时间"},
            {key = "mana_max", display = "法力最大值"},
            {key = "mana_charge_speed", display = "法力充能速度"},
            {key = "deck_capacity", display = "容量"}
        },

        -- 设定显示参数的位置信息
        wand_param_display_position = {
            param_name = { x = function() return screen_w/45 + 180 end, y = function() return screen_h/8 + 50 end},
            param_value = { x = function() return screen_w/45 + 230 end, y = function() return screen_h/8 + 50 end},
            buttons = { x = function() return screen_w/45 + 300 end, y = function() return screen_h/8 + 50 end},
            sliders = { x = function() return screen_w/45 + 300 end, y = function() return screen_h/8 + 50 end},
        },

        -- 设置滑块最大值设定列表
        slider_max_list = {
            mana_charge_speed = {value = 5000, bool = false},
            mana_max = {value = 5000, bool = false},
            reload_time = {value = 240, bool = false},
            fire_rate_wait = {value = 240, bool = false},
            deck_capacity = {value = 100, bool = false},
            actions_per_round = {value = 26, bool = false},
        },

        -- 设置滑块最小值设定列表
        slider_min_list = {
            mana_charge_speed = {value = 1, bool = false},
            mana_max = {value = 1, bool = false},
            reload_time = {value = -21, bool = false},
            fire_rate_wait = {value = -21, bool = false},
            deck_capacity = {value = 1, bool = false},
            actions_per_round = {value = 1, bool = false},
        },
    }
}

-- 弹窗活动列表
local popup_active_menus = {

    -- 功能法术调节弹窗
    {
        name = "show_menu_status(notes_menu)",

        is_active = false,
        if_init = false,
        type = "prompt",

        text = {"显示菜单", "隐藏菜单"},

        menu_x = function() return screen_w/45 + 45 end,
        menu_y = function() return screen_h/8 + 8 end,

        -- test_x = function() return screen_w end,
        -- test_y = function() return screen_h end,
    },

    {
        name = "show_menu_status(edit_wands_menu)",

        is_active = false,
        if_init = false,
        type = "prompt",

        text = {"显示菜单", "隐藏菜单"},

        menu_x = function() return screen_w/45 + 85 end,
        menu_y = function() return screen_h/8 + 8 end,
    },

    -- 按钮调节超出最值时的确认弹窗
    {
        name = "button_adjust_confirm_popup",
        is_active = false,
        if_init = false,
        type = "prompt_confirm",

        -- 这两个布尔值用来判断用哪个文字（上限或者下限）
        is_max_limit = false,
        is_min_limit = false,
        max_limit_text = "上限",
        min_limit_text = "下限",
        text = {"是", "否"},
        param_value = 0,
        param_name = "",
        param_display_name = "",

        -- 标记确定按钮，暂时没有用
        -- 标记按下了取消按钮的布尔值，方便在调整参数时判断是否需要将当前值回归到滑块的限制值
        is_confirm = false,
        is_cancel = false,


        slider_max_list = {},
        slider_min_list = {},

        menu_x = function() return screen_w/2 - 70 end,
        menu_y = function() return screen_h/2 - 15 end,
        menu_width = function() return 170 end,
        menu_height = function() return 50 end,

        menu_spacing_y = function() return 12 end,

        action = function(self, additional_params)

            local gui = additional_params.gui
            local id = additional_params.id
            local slider_max_list = self.slider_max_list
            local slider_min_list = self.slider_min_list

            GuiZSet(gui, 9)

            GuiImageNinePiece(gui, id, self.menu_x(), self.menu_y(), self.menu_width(), self.menu_height())
                
            GuiZSet(gui, 8)
            GuiText(gui, self.menu_x() + 25, self.menu_y(), "当前设定值")
                
            -- 渲染文字为青色
            GuiColorSetForNextWidget(gui, 0, 1, 1, 1)
            GuiText(gui, self.menu_x() + 75, self.menu_y(), "[ " .. self.param_display_name .. " : " .. self.param_value .." ]")
                
            local limit_text = self.max_limit_text
            if self.is_min_limit then
                limit_text = self.min_limit_text
            end
            GuiText(gui, self.menu_x() + 25, self.menu_y() + self.menu_spacing_y(), "已超出滑块的" .. limit_text .. ",")
            GuiText(gui, self.menu_x() + 25, self.menu_y() + self.menu_spacing_y() * 2, "是否需要将当前值调整为" .. limit_text .. "?")


            GuiZSet(gui, 7)
            local _clicked_ = GuiButton(gui, 10051, self.menu_x() + 30, self.menu_y() + 35, "是")
            local _clicked_no_ = GuiButton(gui, 10052, self.menu_x() + 120, self.menu_y() + 35, "否")


            if _clicked_ then 
                self.is_active = false

                -- 标记该值超出范围，不需要再次提醒，直到下一次调整
                if self.is_max_limit then
                    slider_max_list[self.param_name].bool = true
                elseif self.is_min_limit then
                    slider_min_list[self.param_name].bool = true
                end

                -- 重置参数
                self.param_value = 0
                self.param_name = ""
                self.param_display_name = ""
                self.is_max_limit = false
                self.is_min_limit = false

            end
            if _clicked_no_ then 
                self.is_active = false

                -- 标记该值未超出范围，需要再次提醒，且将当前值回归到滑块的上限值
                self.is_cancel = true
                
                -- 重置参数
                self.param_value = 0
                self.param_name = ""
                self.param_display_name = ""
                self.is_max_limit = false
                self.is_min_limit = false

            end 
        end,
    },
    

}

-- 调节面板活动列表
local adjust_active_menus = {
    {
        name = "fire_rate_wait",
        is_active = false,
        if_init = false,

        menu_x = function() return screen_w/45 + 101 end,
        menu_y = function() return screen_h/8 + 35 end,

        menu_width = function() return 120 end,
        menu_height =  function() return 55 end,

        -- 按钮
        button_x_spacing = function() return 25 end,
        button_y_offset = function() return 30 end,

        -- 图片
        image = "data/ui_gfx/gun_actions/slow_but_steady.png",
        alpha = 1,
        scale = 1.5,
        scale_y = 0,
        rotation = 0,

        type = "adjust_func",

        -- 延迟
        delay = 0,

        action = function(self, additional_params)
            -- GamePrint("fire_rate_wait 开始渲染面板")

            local gui = additional_params.gui
            local id = additional_params.id
            local player_entity = additional_params.player_entity

            GuiZSet(gui, 9)

            -- id: 451 ~ 550
            GuiImageNinePiece(gui, id, self.menu_x(), self.menu_y(), self.menu_width(), self.menu_height())

            -- 渲染文字
            GuiZSet(gui, 8)
            GuiImage(gui, id + 100, self.menu_x(), self.menu_y() + 5, self.image, self.alpha, self.scale, self.scale_y, self.rotation)
            local is_clicked = GuiButton(gui, id + 50, self.menu_x() + 5, self.menu_y() + 33, "[生成]")

            dofile_once("mods/More_Notes/files/utils/frame_to_second.lua")
            
            -- 延迟 （用于显示秒数）
            local delay_in_seconds = CustomRound(self.delay)  -- 用于显示的秒数
            -- GamePrint("当前延迟: " .. tostring(self.delay) .. "帧 (" .. tostring(delay_in_seconds) .. "秒)")
            
            GuiText(gui, self.menu_x() + 45, self.menu_y() + 12, "施放延迟:  " .. tostring(delay_in_seconds) .. "秒")

            -- 渲染按钮
            local is_coarse_inc, is_coarse_dec = GuiButton(gui, id + 200, 
                self.menu_x() + 43 + self.button_x_spacing() * 0, self.menu_y() + 32, "[100f]")
            
            local is_fine_inc, is_fine_dec = GuiButton(gui, id + 300, 
                self.menu_x() + 43 + self.button_x_spacing() * 1, self.menu_y() + 32, "[10f] ")
            
            local is_precise_inc, is_precise_dec = GuiButton(gui, id + 400, 
                self.menu_x() + 43 + self.button_x_spacing() * 2, self.menu_y() + 32, "[1f]  ")
        
            -- 按钮功能实现
            if is_coarse_inc then
                self.delay = self.delay + 100  -- 粗调增加100帧
            elseif is_coarse_dec then
                self.delay = math.max(0, self.delay - 100)  -- 粗调减少100帧，最小为0
            elseif is_fine_inc then
                self.delay = self.delay + 10   -- 微调增加10帧
            elseif is_fine_dec then
                self.delay = math.max(0, self.delay - 10)  -- 微调减少10帧，最小为0
            elseif is_precise_inc then
                self.delay = self.delay + 1    -- 精确调整增加1帧
            elseif is_precise_dec then
                self.delay = math.max(0, self.delay - 1)   -- 精确调整减少1帧，最小为0
            end
            
            -- 确保延迟值为非负数
            self.delay = math.max(0, self.delay)
            
            -- GamePrint("当前全局系数: " .. tostring(global_fire_rate_coefficient))

            -- 生成延迟
            if is_clicked then
                -- 设置全局延迟系数
                global_fire_rate_coefficient = self.delay

                -- GamePrint("设置全局延迟系数: " .. tostring(global_fire_rate_coefficient) .. "帧")
                
                -- 生成法术
                dofile_once("mods/More_Notes/files/utils/add_note.lua")
                Add_Note(player_entity, "FIRE_RATE_WAIT")

            end
                    
        end,

    },
}

return {
    scroll_menus = scroll_menus,
    panel_menus = panel_menus,
    popup_active_menus = popup_active_menus,
    adjust_active_menus = adjust_active_menus,
    button_hover_states = button_hover_states,
    octave_prefix = octave_prefix,

}
