-- 滚动窗口辅助函数
-- 文件: scroll_window_helpers.lua

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

-- 辅助函数：获取滚动窗口配置
local function getScrollWindowConfig(scroll_menu)
    local menu_x = safeGetValue(scroll_menu, "menu_x")
    local menu_y = safeGetValue(scroll_menu, "menu_y")
    local menu_width = safeGetValue(scroll_menu, "menu_width")
    local menu_height = safeGetValue(scroll_menu, "menu_height")
    
    if not menu_x or not menu_y or not menu_width or not menu_height then
        GamePrint("错误: 菜单位置或大小数据无效 - " .. tostring(scroll_menu.name))
        return nil
    end
    
    return {
        x = menu_x,
        y = menu_y,
        width = menu_width,
        height = menu_height
    }
end

-- 辅助函数：获取元素配置
local function getElementConfig(scroll_menu, element_type, element_key)
    local inner_data = safeGetNestedProperty(scroll_menu, "scroll_window", "inner", element_key)
    local file_path = element_type == "instrument" and 
                     safeGetNestedProperty(scroll_menu, "file_path", element_key) or nil
    
    if not inner_data then
        GamePrint("错误: " .. element_type .. "配置不完整 - " .. tostring(element_key))
        return nil
    end
    
    return {
        inner_data = inner_data,
        file_path = file_path,
        x = inner_data.x,
        y = inner_data.y,
        line_height = scroll_menu.scroll_window.line_h
    }
end

-- 辅助函数：处理悬浮状态
local function handleHoverState(element_id, is_hovered, hover_callback, ...)
    local id_str = tostring(element_id)
    local menu_data = dofile_once("mods/More_Notes/files/ui/menu_data.lua")
    local button_hover_states = menu_data and menu_data.button_hover_states or {}
    
    if is_hovered and not button_hover_states[id_str] then
        -- 鼠标刚进入
        if hover_callback then
            hover_callback(...)
        end
        button_hover_states[id_str] = true
    elseif not is_hovered and button_hover_states[id_str] then
        -- 鼠标刚离开
        button_hover_states[id_str] = false
    end
end

-- 辅助函数：处理乐器音符
local function handleInstrumentNote(gui, scroll_menu, player_entity, e_id, e_index, config, container_id, param_1, param_2)
    local image_path = config.file_path .. e_id.image
    local left_clicked, right_clicked = GuiImageButton(gui, e_id.id, 
        config.x, config.y + config.line_height * (e_index - 1), "", image_path)
    
    local _, _, is_hovered = GuiGetPreviousWidgetInfo(gui)
    
    -- 处理悬浮状态
    local menu_data = dofile_once("mods/More_Notes/files/ui/menu_data.lua")
    local octave_prefix = menu_data and menu_data.octave_prefix or nil
    
    -- GamePrint("octave_prefix: " .. tostring(octave_prefix))
    handleHoverState(e_id.id, is_hovered, scroll_menu.hover_funcs[e_id.instrument], e_id, octave_prefix)
    -- if e_id.instrument ~= "ocarina" then
    --     GamePrint("instrument: " .. tostring(e_id.instrument))
    -- end
    
    -- 处理点击事件
    if left_clicked then
        param_1 = e_id.label
        -- GamePrint("左键点击: " .. tostring(param_1))
        if scroll_menu.instruments_button_action.left_func then
            scroll_menu.instruments_button_action.left_func(e_id, player_entity, param_1)
        end
    end
    
    if right_clicked then
        param_2 = e_id.label
        -- GamePrint("右键点击: " .. tostring(param_2))
        -- GamePrint("octave_prefix: " .. tostring(octave_prefix))
        if scroll_menu.instruments_button_action.right_func then
            scroll_menu.instruments_button_action.right_func(e_id, octave_prefix)
        end
    end
    
    return param_1, param_2
end

-- 辅助函数：处理功能法术
local function handleFunctionalSpell(gui, scroll_menu, player_entity, e_id, e_index, config, container_id, param_1, param_2)
    local left_clicked, right_clicked = GuiImageButton(gui, e_id.id, 
        config.x, config.y + config.line_height * (e_index - 1), "", e_id.image)
    
    local _, _, is_hovered = GuiGetPreviousWidgetInfo(gui)
    
    -- 处理悬浮状态（仅标记，无音效）
    handleHoverState(e_id.id, is_hovered)
    
    -- 处理点击事件
    if left_clicked then
        param_1 = e_id.label
        -- GamePrint("左键点击: " .. tostring(param_1))
        if scroll_menu.func_button_action.left_func then
            scroll_menu.func_button_action.left_func(e_id, gui, player_entity, param_1)
        end
    end
    
    if right_clicked then
        param_2 = e_id.label
        -- GamePrint("右键点击: " .. tostring(param_2))
        if scroll_menu.func_button_action.right_func then
            scroll_menu.func_button_action.right_func(e_id, param_2)
        end
    end
    
    return param_1, param_2
end

-- 辅助函数：渲染单个滚动窗口
local function renderScrollWindow(gui, scroll_menu, player_entity, lists, container_id, param_1, param_2)
    -- 获取窗口配置
    local config = getScrollWindowConfig(scroll_menu)
    if not config then return param_1, param_2 end
    
    -- 检查容器ID限制
    if container_id > 200 then
        GamePrint("警告: container_id超过200，不应该分配更多的容器! 当前container_id: " .. tostring(container_id))
    end
    
    -- 开始滚动容器
    GuiZSet(gui, 100)
    GuiBeginScrollContainer(gui, container_id, config.x, config.y, config.width, config.height, true, 2, 2)
    
    -- 初始化变量
    local current_x, current_y = 0, 0
    local misc_id_base = 1234560 + ((container_id - 100) * 1000)
    local misc_id = misc_id_base
    
    -- 渲染所有列表
    for _, list in ipairs(lists or {}) do
        for element_index, element in ipairs(list or {}) do
            local element_config = nil
            
            -- 根据元素类型获取配置
            if element.instrument then
                element_config = getElementConfig(scroll_menu, "instrument", element.instrument)
                if element_config then
                    param_1, param_2 = handleInstrumentNote(gui, scroll_menu, player_entity, element, element_index, 
                        element_config, container_id, param_1, param_2)
                end
            else
                element_config = getElementConfig(scroll_menu, "spell", element.type)
                if element_config then
                    param_1, param_2 = handleFunctionalSpell(gui, scroll_menu, player_entity, element, element_index, 
                        element_config, container_id, param_1, param_2)
                end
            end
            
            if element_config then
                current_x = element_config.x
                current_y = element_config.y + element_config.line_height * (element_index - 1)
            end
        end
        
        -- 添加占位元素扩展滚动区域
        misc_id = misc_id + 1
        GuiImageButton(gui, misc_id, current_x, current_y + 30, "", "")
    end
    
    GuiEndScrollContainer(gui)
    return param_1, param_2
end

-- 导出函数
return {
    renderScrollWindow = renderScrollWindow
}