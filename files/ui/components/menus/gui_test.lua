

function GuiTest(gui, screen_w, screen_h)

    local screen_w, screen_h = GuiGetScreenDimensions(gui)
    local box_w, box_h = 100, 100              -- 可视区域大小

    local box_x = screen_w / 2 - box_w / 2
    local box_y = screen_h / 2 - box_h / 2

    -- 3. 开始滚动容器（自动带滚轮/手柄支持）
    GuiBeginScrollContainer(gui, 10000000000001, box_x, box_y, box_w, box_h, true)

    -- 4. ！！！滚动区域内的坐标系原点此时被重置到容器左上角
    --     下面所有坐标都是相对于容器的左上角(0,0)
    local inner_x = 5     -- 左边空一点
    local inner_y = 5     -- 上边空一点
    local line_h = 20     -- 每行高度

    -- 5. 放内容（这里示范 50 行文本）
    for i = 1, 50 do
        GuiText(gui, inner_x, inner_y, "Line " .. i)
        inner_y = inner_y + line_h
    end

    -- 6. 结束滚动容器
    GuiEndScrollContainer(gui)

    
end
