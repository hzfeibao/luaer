#!/usr/local/bin/lua

function maximum(a)
    local mi = 1
    local m = a[mi]
    for i,v in ipairs(a) do
	if v > m then
	    mi = i
	    m = v
	end
    end
    return mi, m
end

--print(maximum({8,10,23,12,5}))

function unpack(t, i)
    i = i or 1
    if t[i] then
	return t[i], unpack(t, i+1)
    end
end

printResult = ''

function print(...)
    for i, v in ipairs(arg) do
	printResult = printResult .. tostring(v) .. '\n'
    end
    printResult = printResult .. '\n'
end

--print(printResult)

function list_iter(t)
    local i = 0
    --local n = table.getn(i)
    local n = table.maxn(t)
    return function()
	i = i+1
	if i <= n then return t[i] end
    end
end

t = {10,20,30}
for e in list_iter(t) do
    print(e)
end

