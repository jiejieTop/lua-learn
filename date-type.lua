#!/usr/local/bin/lua

local x = 10
print(type("Hello world"))          -- string
print(type(10.4*3))                 -- number
print(type(print))                  -- function
print(type(type))                   -- function
print(type(true))                   -- boolean
print(type(nil))                    -- nil
print(type(type(x)))                -- string

-- 单行注释
--[[
    多行注释
    多行注释
--]]

print("--------------------------------")

local tab = { key1 = "val1", key2 = "val2", "val3" }

for k, v in pairs(tab) do
    print(k .. " = " .. v)
end

print("--------------------------------")

tab.key1 = nil
for k, v in pairs(tab) do
    print(k .. " = " .. v)
end

print("--------------------------------")
local a = {}
a["key"] = "value"
local key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end

for i = 1, 10 do
    a[i] = i
end

a["key"] = "val"
print(a["key"])
print(a["none"])
print(a[1])

print("--------------------------------")

-- 可以用 2 个方括号 "[[]]" 来表示"一块"字符串
local html = [[
<html>
<head></head>
<body>
    <a href="https://github.com/jiejieTop">github</a>
</body>
</html>
]]
print(html)

-- 在对一个数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字
print("2" + 6)
print("2" + "6")
print("2 + 6")
print("-2e2" * "6")
