function DrawMousePosition(gui, screen_h)
    local sx, sy = InputGetMousePosOnScreen()
    GuiText(gui, 5, screen_h*43/45, "鼠标位置: " .. tostring(sx) .. ", " .. tostring(sy))
end
