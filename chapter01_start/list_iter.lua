#!/usr/local/bin/lua

t = {10,20,30,40,50}


function list_iter (t)
    local i = 0
    local n = table.maxn(t)
    return function ()
	i = i + 1
	if i <= n then return t[i] end
    end
end

for e in list_iter(t) do
    print(e)
end
