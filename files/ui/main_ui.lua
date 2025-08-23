-- dofile_once("mods/More_Notes/files/ui/components/menus/gui_test.lua")

dofile_once("mods/More_Notes/files/ui/components/menus/notes_menu.lua")
dofile_once("mods/More_Notes/files/ui/components/menus/edit_wands_menu.lua")

dofile_once("mods/More_Notes/files/ui/windows_active_events.lua")

-- 创建UI基础对象
local gui = GuiCreate()

-- 主渲染函数
function RenderGUI(player_entity)

    -- 确保GUI上下文存在（防止意外销毁）
    if not gui then gui = GuiCreate() end

    -- 获取屏幕尺寸
    screen_w, screen_h = GuiGetScreenDimensions(gui)

    -- 开始新的一帧GUI渲染
    GuiStartFrame(gui)

    GuiGetNotesMenu(gui, screen_w, screen_h, player_entity)

    GuiEditWandsMenu(gui, screen_w, screen_h, player_entity)

    -- 显示所有激活的鼠标悬浮按钮时的提示弹窗
    ShowPopupMenu(gui)

    -- 检查是否激活参数调节菜单
    RenderAdjustPanels(gui, player_entity)

    -- GuiTest(gui, screen_w, screen_h)
    -- GamePrint("Finish UI rendering")
end

-- 报错修复表
-- 在列表中使用全局变量的时候，应该使用函数来获取全局变量
-- 例如：
-- local screen_w, screen_h = function() return GuiGetScreenDimensions(gui) end

-- 窗口分配ID号
-- 101  ~  200 为滚动容器窗口
-- {notes_menu音符菜单:101}

-- 201  ~  300 为参数调节窗口
-- {func_fire_rate_wait参数调节窗口:201}

-- 251  ~  350 为编辑面板窗口
-- {edit_wands_menu编辑面板窗口:251——350}

-- 351  ~  450 为编辑面板窗口中显示的图片
-- {edit_wands_menu编辑面板窗口上的图片:351~450}

-- 451  ~  550 为功能法术调节面板窗口 （预留50个id的窗口空间）
-- {func参数调节窗口:451~500}
-- {func参数调节窗口生成延迟按钮:551~550}
-- {func参数调节窗口上的图片:551~650}
-- {func参数调节窗口上的按钮:651~750 751~850 851~950} 
   
-- 按钮分配ID号
-- 1001  ~  1500 为滚轮容器菜单按钮
-- {notes_menu菜单按钮:1001}

-- 1501  ~  2000 为编辑面板按钮
-- {edit_wands_menu编辑面板按钮:1501}
-- {edit_wands_menu编辑面板上的按钮:1551~1800}
-- {edit_wands_menu编辑面板上的滑条:1851~1900}
-- {edit_wands_menu编辑面板上的调控模式按钮:1951}
-- {edit_wands_menu编辑面板上的创建法术按钮:1952}

-- 2001  ~  3000 为弹窗按钮
-- {notes获取按钮:2001~2096}

-- 音符按钮ID分配
-- 2001  ~  3001 为音符按钮

-- 功能法术按钮ID分配
-- 3001  ~  4001 为功能法术按钮

-- 弹窗ID分配
-- 10001  ~  10025 为提示弹窗
-- {notes_menu菜单提示弹窗:10001~10025}

-- 10026  ~  10050 为提示和确认弹窗
-- {edit_wands_menu编辑面板上提示和确认（最值超越）弹窗:10026~10050}
-- {edit_wands_menu编辑面板上提示和确认（最值超越）弹窗上的按钮:10051~10052}

-- 10201  ~  10300 为输入弹窗

-- 其他ID分配
-- 123 456 1 ~ 123 456 9 为占位符
-- 999888 1 ~ 9 为测试按钮
