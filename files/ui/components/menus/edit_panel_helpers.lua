-- 编辑面板辅助函数
-- 文件: edit_panel_helpers.lua
dofile_once("mods/More_Notes/files/utils/setgun.lua")
dofile_once("mods/More_Notes/files/utils/frame_to_second.lua")

-- 安全获取函数或值
local function safeGetValue(obj, key)
    if obj == nil or obj[key] == nil then
        return nil
    end
    local value = obj[key]
    if type(value) == "function" then
        return value()
    end
    return value
end

-- 安全获取嵌套属性
local function safeGetNestedProperty(obj, ...)
    local current = obj
    for i = 1, select('#', ...) do
        local key = select(i, ...)
        if current == nil or current[key] == nil then
            return nil
        end
        current = current[key]
    end
    return current
end

-- 辅助函数：安全获取数值
local function safeGetNumber(value, default)
    if value == nil then return default or 0 end
    if type(value) ~= "number" then
        return tonumber(value) or (default or 0)
    end
    return value
end

-- 辅助函数：初始化按钮状态
local function initializeButtonStates(button_states, param_name)
    if not button_states[param_name] then
        button_states[param_name] = {
            coarse_increase = false,
            coarse_decrease = false,
            fine_adjustment_increase = false,
            fine_adjustment_decrease = false,
            precision_adjustment_increase = false,
            precision_adjustment_decrease = false,
        }
    end
    return button_states[param_name]
end

-- 辅助函数：应用参数限制
local function applyParameterLimits(ability, param_name, value)
    -- 限制 deck_capacity 最小为 1
    if param_name == "deck_capacity" and value <= 0 then
        return 1
    end
    
    -- 限制 actions_per_round 最小为 1
    if param_name == "actions_per_round" and value <= 0 then
        return 1
    end
    
    -- 限制法力值类参数最小为 0
    if (param_name == "mana_max" or param_name == "mana_charge_speed") and value <= 0 then
        return 1
    end
    
    return value
end

-- 辅助函数：更新滑块边界 （当滑块的边界被超越且按下弹窗的确认时，更新边界）
local function updateSliderBounds(slider_lists, param_name, value)
    if slider_lists.slider_max_list[param_name].bool and slider_lists.slider_max_list[param_name].value < value then
        slider_lists.slider_max_list[param_name].value = value
    end
    if slider_lists.slider_min_list[param_name].bool and slider_lists.slider_min_list[param_name].value > value then
        slider_lists.slider_min_list[param_name].value = value
    end
end

-- 辅助函数：渲染参数信息
local function renderParameterInfo(gui, panel_menu, param_info, param_value, button_y_offset)
    local param_name = param_info.key
    local param_display_name = param_info.display
    
    -- 计算当前时间参数转换值
    local param_value_second = CustomRound(param_value)
    
    -- 显示参数名称
    local param_text_x = panel_menu.wand_param_display_position.param_name.x()
    local param_text_y = panel_menu.wand_param_display_position.param_name.y()
    GuiText(gui, param_text_x, param_text_y + button_y_offset, param_display_name)
    
    -- 显示参数值
    local mark_f = (param_name == "fire_rate_wait" or param_name == "reload_time") and "f" or ""
    local param_value_x = panel_menu.wand_param_display_position.param_value.x()
    local param_value_y = panel_menu.wand_param_display_position.param_value.y()
    
    if param_name == "fire_rate_wait" or param_name == "reload_time" then
        GuiText(gui, param_value_x, param_value_y + button_y_offset, 
               "  : " .. param_value_second .. "秒 (" .. param_value .. "帧)")
    else
        GuiText(gui, param_value_x, param_value_y + button_y_offset, "  : " .. param_value)
    end
    
    return mark_f
end

-- 辅助函数：处理按钮模式
local function handleButtonMode(gui, panel_menu, param_name, mark_f, button_y_offset, button_x_spacing, _i)
    local button_x = panel_menu.wand_param_display_position.buttons.x()
    local button_y = panel_menu.wand_param_display_position.buttons.y()
    
    -- 获取按钮状态
    local states = initializeButtonStates(panel_menu.button_states, param_name)
    
    -- 渲染按钮
    local is_coarse_inc, is_coarse_dec = GuiButton(gui, 1550 + _i, 
        button_x + button_x_spacing * 0, button_y + button_y_offset, "[100" .. mark_f .. "]")
    
    local is_fine_inc, is_fine_dec = GuiButton(gui, 1650 + _i, 
        button_x + button_x_spacing * 1, button_y + button_y_offset, "[10" .. mark_f .. "]")
    
    local is_precise_inc, is_precise_dec = GuiButton(gui, 1750 + _i, 
        button_x + button_x_spacing * 2, button_y + button_y_offset, "[1" .. mark_f .. "]")
    
    -- 更新按钮状态
    if is_coarse_inc then states.coarse_increase = true end
    if is_coarse_dec then states.coarse_decrease = true end
    if is_fine_inc then states.fine_adjustment_increase = true end
    if is_fine_dec then states.fine_adjustment_decrease = true end
    if is_precise_inc then states.precision_adjustment_increase = true end
    if is_precise_dec then states.precision_adjustment_decrease = true end
    
    return states
end

-- 辅助函数：应用按钮调整
local function applyButtonAdjustments(ability, param_name, states)
    if not states then return ability[param_name] end
    
    local new_value = ability[param_name]
    
    if states.coarse_increase then new_value = new_value + 100 end
    if states.coarse_decrease then new_value = new_value - 100 end
    if states.fine_adjustment_increase then new_value = new_value + 10 end
    if states.fine_adjustment_decrease then new_value = new_value - 10 end
    if states.precision_adjustment_increase then new_value = new_value + 1 end
    if states.precision_adjustment_decrease then new_value = new_value - 1 end
    
    -- 应用限制
    new_value = applyParameterLimits(ability, param_name, new_value)
    
    -- 重置状态
    states.coarse_increase = false
    states.coarse_decrease = false
    states.fine_adjustment_increase = false
    states.fine_adjustment_decrease = false
    states.precision_adjustment_increase = false
    states.precision_adjustment_decrease = false
    
    return new_value
end

-- 辅助函数：处理滑块模式
local function handleSliderMode(gui, panel_menu, param_name, param_value, button_y_offset, button_x_spacing, _i)
    local slider_x = panel_menu.wand_param_display_position.sliders.x()
    local slider_y = panel_menu.wand_param_display_position.sliders.y()
    
    local slider_min = panel_menu.slider_min_list[param_name].value
    local slider_max = panel_menu.slider_max_list[param_name].value
    
    return GuiSlider(gui, 1851 + _i, slider_x + button_x_spacing * 0, 
                    slider_y + button_y_offset, "", param_value, slider_min, slider_max, 
                    param_value, 1, " ", 115)
end

-- 辅助函数：检查参数是否超出边界
local function checkBoundaryLimits(param_value, param_name, param_display_name, slider_min_list, slider_max_list, panel_menu, popup_active_menus)

    -- 检查是否按下了取消按钮
    if popup_active_menus.is_cancel then
        -- 初始化布尔值
        popup_active_menus.is_cancel = false

        -- 强制转换模式
        panel_menu.fine_control_mode = false
    end

    -- 检查是否超出最大值且未启用自动扩展
    if param_value > slider_max_list[param_name].value and not slider_max_list[param_name].bool then
        popup_active_menus.is_active = true
        popup_active_menus.is_max_limit = true
        popup_active_menus.param_value = param_value
        popup_active_menus.param_name = param_name
        popup_active_menus.param_display_name = param_display_name
        popup_active_menus.slider_max_list = slider_max_list
        
    end
    
    -- 检查是否低于最小值且未启用自动扩展
    if param_value < slider_min_list[param_name].value and not slider_min_list[param_name].bool then
        popup_active_menus.is_active = true
        popup_active_menus.is_min_limit = true
        popup_active_menus.param_value = param_value
        popup_active_menus.param_name = param_name
        popup_active_menus.param_display_name = param_display_name
        popup_active_menus.slider_min_list = slider_min_list

    end
end

-- 辅助函数：渲染单个面板
-- 修改renderPanel函数，在参数处理部分添加边界检查
local function renderPanel(gui, player_entity, panel_menu, container_id, lists, params, popup_active_menus)
    -- 获取面板尺寸
    local menu_x = safeGetValue(panel_menu, "panel_x")
    local menu_y = safeGetValue(panel_menu, "panel_y")
    local menu_width = safeGetValue(panel_menu, "panel_width_1")
    local menu_height = safeGetValue(panel_menu, "panel_height")

    -- 获取玩家位置
    local player_x, player_y = EntityGetTransform(player_entity)
    
    -- 验证面板数据
    if not menu_x or not menu_y or not menu_width or not menu_height then
        GamePrint("错误: 菜单位置或大小数据无效 - " .. tostring(panel_menu.name))
        return
    end
    
    -- 渲染面板背景
    GuiZSet(gui, 100)
    GuiImageNinePiece(gui, container_id, menu_x, menu_y, menu_width, menu_height)
    
    -- 如果没有数据则返回
    if not lists or #lists == 0 then return end
    if not params or #params == 0 then return end
    
    -- 查找匹配的列表
    local target_list = nil
    for _, current_list in ipairs(lists) do
        if current_list and type(current_list) == "table" then
            local list_name = safeGetValue(current_list, "name")
            if list_name then
                for _, param in ipairs(params) do
                    if param and list_name == param then
                        target_list = current_list
                        break
                    end
                end
                if target_list then break end
            end
        end
    end
    
    if not target_list then return end

    
    -- 渲染列表图像
    GuiZSet(gui, 90)
    local image_x = safeGetValue(target_list, "image_x") or 123
    local image_y = safeGetValue(target_list, "image_y") or 123
    local image = safeGetValue(target_list, "image") or ""
    local alpha = safeGetValue(target_list, "alpha") or 123
    local scale = safeGetValue(target_list, "scale") or 123
    local scale_y = safeGetValue(target_list, "scale_y") or 123
    local rotation = safeGetValue(target_list, "rotation") or 123
    
    GuiImage(gui, container_id + 100, image_x, image_y, image, alpha, scale, scale_y, rotation)
    
    -- 渲染参数
    local button_y_offset = panel_menu.button_y_offset()
    local button_y_spacing = panel_menu.button_y_spacing()
    local button_x_offset = panel_menu.button_x_offset()
    local button_x_spacing = panel_menu.button_x_spacing()
    
    -- 遍历参数
    for param_index, param_info in ipairs(panel_menu.wand_param_order) do
        local param_name = param_info.key
        local param_display_name = param_info.display
        
        -- 安全获取参数值
        local param_value = safeGetNumber(target_list.ability[param_name], 0)
        target_list[param_name .. "_second"] = CustomRound(param_value)
        
        -- 渲染参数信息
        local mark_f = renderParameterInfo(gui, panel_menu, param_info, param_value, button_y_offset)
        
        -- 根据模式处理
        if panel_menu.fine_control_mode then
            -- 按钮模式
            local states = handleButtonMode(gui, panel_menu, param_name, mark_f, 
                                         button_y_offset, button_x_spacing, param_index)
            param_value = applyButtonAdjustments(target_list.ability, param_name, states)

            -- 更新边界参数
            updateSliderBounds(panel_menu, param_name, param_value)
        else
            -- 滑块模式
            param_value = handleSliderMode(gui, panel_menu, param_name, param_value, 
                                         button_y_offset, button_x_spacing, param_index)
        end
        
        -- 检查边界限制（如超出限制则弹窗提示）
        -- 如果超出边界，且按下了取消按钮（强制转换模式来回归值）
        -- 如果超出边界，且按下了确认按钮（将限制值更新为最新值，但是这里没有直接顺便转换模式）
        checkBoundaryLimits( param_value, param_name, param_display_name, panel_menu.slider_min_list, panel_menu.slider_max_list, panel_menu, popup_active_menus)

        -- 最终取整
        target_list.ability[param_name] = math.floor(param_value + 0.5)
        
        -- 更新偏移
        button_y_offset = button_y_offset + button_y_spacing

    end

    -- 调控模式切换按钮
    local control_mode_btn = GuiButton(gui, 1951, screen_w/45 + 170, screen_h/8 + 170, "调控模式: " .. (panel_menu.fine_control_mode and "滑动模式" or "按钮模式"))

    -- 创建法杖按钮
    local edit_wand = GuiButton(gui, 1952, screen_w/45 + 122, screen_h/8 + 170, "创建法杖")

    -- 法杖类型选择按钮
    -- local wand_type_btn = GuiButton(gui, 1953, screen_w/45 + 122, screen_h/8 + 200, "法杖类型: " .. panel_menu.current_wand_type)

    if control_mode_btn then panel_menu.fine_control_mode = not panel_menu.fine_control_mode end
    if edit_wand then SetGun(player_x, player_y, panel_menu.current_wand_type, target_list.ability) end

end

-- 导出函数
return {
    renderPanel = renderPanel
}