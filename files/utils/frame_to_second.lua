-- 符合游戏中的时间转换(帧->秒)
-- 游戏中时间单位为帧，而在菜单中显示为秒，所以需要进行转换 
-- 游戏中时间单位为帧，而在菜单中显示为秒，所以需要进行转换 
function CustomRound(value)
    -- 调试信息：记录原始输入值
    -- GamePrint("[CustomRound] 原始输入值: " .. tostring(value) .. " 类型: " .. type(value))
    
    -- 安全机制1：空值检查
    if value == nil then
        GamePrint("[CustomRound] 警告: 接收到nil值，返回0")
        return 0
    end
    
    -- 安全机制2：类型转换
    local num_value
    if type(value) == "number" then
        num_value = value
    elseif type(value) == "string" then
        -- 字符串转数字
        num_value = tonumber(value)
        if num_value == nil then
            GamePrint("[CustomRound] 警告: 字符串无法转换为数字，原始值: " .. tostring(value))
            return 0
        end
    else
        GamePrint("[CustomRound] 警告: 不支持的类型: " .. type(value) .. "，返回0")
        return 0
    end
    
    -- 执行转换计算
    local result = num_value / 60
    
    -- 截断到0.01位数
    result = math.floor(result * 100 + 0.5) / 100
    
    -- 调试信息：输出转换结果
    -- GamePrint("[CustomRound] 转换完成: " .. tostring(num_value) .. "帧 -> " .. tostring(result) .. "秒")
    
    return result
end