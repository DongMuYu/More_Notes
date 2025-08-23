
-- 安全加载menu_data
local menu_data = nil
local success, err = pcall(function()
    menu_data = dofile_once("mods/More_Notes/files/ui/menu_data.lua")
end)

if not success then
    GamePrintError("加载menu_data.lua失败: " .. err)
    return
end

dofile_once("mods/More_Notes/files/utils/add_note.lua")

local scrollHelpers = dofile_once("mods/More_Notes/files/ui/components/menus/scroll_window_helpers.lua")
local panelHelpers = dofile_once("mods/More_Notes/files/ui/components/menus/edit_panel_helpers.lua")

-- 从menu_data中获取各个菜单表，并进行判空处理
local scroll_menus = menu_data and menu_data.scroll_menus or {}
local panel_menus = menu_data and menu_data.panel_menus or {}
local popup_active_menus = menu_data and menu_data.popup_active_menus or {}
local adjust_active_menus = menu_data and menu_data.adjust_active_menus or {}

-- 查找滚动菜单在活动列表中的索引
local function FindScrollIndex(menu_name)
    for i, menu in ipairs(scroll_menus) do
        if menu.name == menu_name then
            return i
        end
    end
    return nil
end

-- 查找编辑面板在活动列表中的索引
local function FindPanelIndex(panel_name)
    for i, panel in ipairs(panel_menus) do
        if panel.name == panel_name then
            return i
        end
    end
    return nil
end


-- 查找弹窗在活动列表中的索引
local function FindPopupIndex(popup_name)
    for i, popup in ipairs(popup_active_menus) do
        if popup.name == popup_name then
            return i
        end
    end
    return nil
end

-- 查找调节面板在活动列表中的索引
local function FindAdjustIndex(adjust_name)
    for i, adjust in ipairs(adjust_active_menus) do
        if adjust.name == adjust_name then
            return i
        end
    end
    return nil
end

-- 添加活动菜单并设置为激活状态
function AddActiveScroll(menu_name)
    local index = FindScrollIndex(menu_name)
    if index then
        scroll_menus[index].is_active = true
    end
end

-- 添加活动编辑面板并设置为激活状态
function AddActivePanel(panel_name)
    local index = FindPanelIndex(panel_name)
    if index then
        panel_menus[index].is_active = true
    end
end

-- 添加活动弹窗并设置为激活状态
function AddActivePopup(popup_name)
    local index = FindPopupIndex(popup_name)
    if index then
        popup_active_menus[index].is_active = true
    end
end

-- 添加活动调节面板并设置为激活状态
function AddActiveAdjust(adjust_name)
    local index = FindAdjustIndex(adjust_name)
    if index then
        adjust_active_menus[index].is_active = true
    end
end

-- 从活动列表中移除页面（将其设置为非激活状态）
function RemoveActiveScroll(menu_name)
    local index = FindScrollIndex(menu_name)
    if index then
        scroll_menus[index].is_active = false
    end
end

-- 从活动列表中移除编辑面板（将其设置为非激活状态）
function RemoveActivePanel(panel_name)
    local index = FindPanelIndex(panel_name)
    if index then
        panel_menus[index].is_active = false
    end
end

-- 从活动列表中移除弹窗（将其设置为非激活状态）
function RemoveActivePopup(popup_name)
    local index = FindPopupIndex(popup_name)
    if index then
        popup_active_menus[index].is_active = false
    end
end

-- 从活动列表中移除调节面板（将其设置为非激活状态）
function RemoveActiveAdjust(adjust_name)
    local index = FindAdjustIndex(adjust_name)
    if index then
        adjust_active_menus[index].is_active = false
    end
end

-- 检查页面是否在活动列表中且处于激活状态
function IsScrollActive(menu_name)
    local index = FindScrollIndex(menu_name)
    if index then
        return scroll_menus[index].is_active
    end
    return false
end

-- 检查编辑面板是否在活动列表中且处于激活状态
function IsPanelActive(panel_name)
    local index = FindPanelIndex(panel_name)
    if index then
        return panel_menus[index].is_active
    end
    return false
end

-- 检查弹窗是否在活动列表中且处于激活状态
function IsPopupActive(popup_name)
    local index = FindPopupIndex(popup_name)
    if index then
        return popup_active_menus[index].is_active
    end
    return false
end

-- 检查调节面板是否在活动列表中且处于激活状态
function IsAdjustActive(adjust_name)
    local index = FindAdjustIndex(adjust_name)
    if index then
        return adjust_active_menus[index].is_active
    end
    return false
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


-- 显示鼠标悬浮按钮上时触发的提示弹窗
-- menu_name 弹窗名称
-- hovered 鼠标是否悬浮在按钮上
-- if_click_bool 是否点击按钮

function ShowPopupMenu(gui)

    -- 检查弹窗数据
    if not popup_active_menus or #popup_active_menus == 0 then return end

    -- 遍历所有弹窗
    for i, popup_menu in ipairs(popup_active_menus) do
        -- 只渲染处于激活状态的弹窗
        if not popup_menu.is_active then goto continue end

        -- 提示弹窗
        if popup_menu.type == "prompt" then
            local menu_x, menu_y = popup_menu.menu_x(), popup_menu.menu_y()
            
            GuiZSet(gui, 1)
            GuiImageNinePiece(gui, 10000 + i, menu_x, menu_y, 38, 20)
            
            GuiZSet(gui, 0)
            if not IsScrollActive("notes_menu") then
                GuiText(gui, menu_x + 3, menu_y + 2, popup_menu.text[1])
            else
                GuiText(gui, menu_x + 3, menu_y + 2, popup_menu.text[2])
            end
        end

        -- 提示并确认弹窗
        if popup_menu.type == "prompt_confirm" then
            popup_menu.action(popup_menu, {gui = gui, id = 10025 + i})
        end

        ::continue::
    end
end



-- 主函数：渲染滚动容器
function RenderScrollContainer(gui, player_entity, lists, param_1, param_2)
    
    -- 检查滚动窗口数据
    if not scroll_menus or #scroll_menus == 0 then
        return param_1, param_2
    end
    
    -- 遍历所有滚动窗口
    for i, scroll_menu in ipairs(scroll_menus) do
        -- 跳过非激活窗口
        if not scroll_menu.is_active then goto continue end
        
        -- 渲染滚动窗口
        local container_id = 100 + i
        param_1, param_2 = scrollHelpers.renderScrollWindow(gui, scroll_menu, player_entity, lists, container_id, param_1, param_2)
        
        ::continue::
    end
    
    return param_1, param_2
end

-- 主函数：渲染调节面板
function RenderAdjustPanels(gui, player_entity)
    -- 检查调节面板数据
    if not adjust_active_menus or #adjust_active_menus == 0 then return end
    
    -- 遍历所有调节面板
    for adjust_index, adjust_menu in ipairs(adjust_active_menus) do
        -- 跳过非激活面板
        if not adjust_menu.is_active then goto continue end
        
        -- 创建容器ID
        local container_id = 450 + adjust_index
        if container_id > 550 then
            GamePrint("警告: container_id超过550，不应该分配更多的容器! 当前container_id: " .. tostring(container_id))
            goto continue
        end
        
        if adjust_menu.type == "adjust_func" then
            -- GamePrint("fire_rate_wait 开始渲染调节面板")
            adjust_menu.action(adjust_menu, {gui = gui, id = container_id, player_entity = player_entity})
        end
        
        ::continue::
    end
end

-- 主函数：渲染编辑面板
function RenderEditWandsMenu(gui, player_entity, lists, params)
    -- 检查面板数据
    if not panel_menus or #panel_menus == 0 then return end
    
    -- 遍历所有编辑面板
    for panel_index, panel_menu in ipairs(panel_menus) do
        -- 跳过非激活面板
        if not panel_menu.is_active then goto continue end
        
        -- 创建容器ID
        local container_id = 250 + panel_index
        if container_id > 350 then
            GamePrint("警告: container_id超过350，不应该分配更多的容器! 当前container_id: " .. tostring(container_id))
            goto continue
        end
        
        -- 渲染面板
        panelHelpers.renderPanel(gui, player_entity, panel_menu, container_id, lists, params, popup_active_menus[FindPopupIndex("button_adjust_confirm_popup")])
        
        ::continue::
    end
end