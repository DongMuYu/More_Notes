-- 加载Noita的实用工具库，提供各种游戏开发辅助函数
-- utilities.lua包含了许多常用的游戏开发工具函数，如实体操作、坐标计算等
dofile_once("data/scripts/lib/utilities.lua")

-- 获取当前正在更新的实体ID（通常是kantele乐器实体）
local entity_id = GetUpdatedEntityID()

-- 获取该实体的世界坐标位置（x,y坐标）
local x, y = EntityGetTransform( entity_id )

-- 在实体周围24像素范围内查找带有"player_unit"标签的实体（即玩家）
-- 这样可以确保只有玩家靠近并弹奏kantele时才触发功能
local players = EntityGetInRadiusWithTag( x, y, 24, "player_unit" )

-- 原版代码这里是处理乐谱效果的，我这里注释掉了
-- 因为该mod是增加更多音符，用于演奏曲目的，所以这里不需要处理乐谱效果，避免演奏到特殊乐谱触发效果
-- 但这里还是保留了一些基本的东西，以后可能会用？总之留着


