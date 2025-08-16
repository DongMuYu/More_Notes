dofile_once("mods/More_Notes/files/ui/components/menus/menus.lua")
dofile_once("mods/More_Notes/files/ui/components/menus/gui_test.lua")

-- 创建UI基础对象
local gui = GuiCreate()

-- 主渲染函数
function RenderGUI(player_entity)

    -- 获取屏幕尺寸
    local screen_w, screen_h = GuiGetScreenDimensions(gui)

    -- 确保GUI上下文存在（防止意外销毁）
    if not gui then gui = GuiCreate() end

    -- 开始新的一帧GUI渲染
    GuiStartFrame(gui)

    GuiGetMenus(gui, screen_w, screen_h, player_entity)
    -- GamePrint("Finish UI rendering")

    -- GuiTest(gui, screen_w, screen_h)

end
