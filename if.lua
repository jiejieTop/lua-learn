#!/usr/local/bin/lua

-- X = nil
-- type(X)==nil 结果为 false 的原因是因为 type(type(X))==string。

if type(nil) == nil then
    print("type(nil) == nil")
else
    print("type(nil) != nil")
end

if type(nil) == "nil" then
    print("type(nil) == \"nil\"")
else
    print("type(nil) != \"nil\"")
end

--[[
    boolean 类型只有两个可选值：true（真） 和 false（假）
    Lua 把 false 和 nil 看作是 false，其他的都为 true，数字 0 也是 true
--]]

print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false")
end

if 0 then
    print("数字 0 是 true")
else
    print("数字 0 为 false")
end

