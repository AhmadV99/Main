local Thread = nil
local t1 = {}
local t2 = {}

t1.Type = "Task"

function t1.Spawn(_, p2, ...) -- line: 22
	-- upvalues: t2 (copy), Thread (ref)
	return task.spawn(table.remove(t2) or task.spawn(Thread), p2, ...)
end
function t1.Defer(_, p4, ...) -- line: 26
	-- upvalues: t2 (copy), Thread (ref)
	return task.defer(table.remove(t2) or task.spawn(Thread), p4, ...)
end
function t1.Delay(_, p6, p7, ...) -- line: 30
	-- upvalues: t2 (copy), Thread (ref)
	return task.delay(p6, table.remove(t2) or task.spawn(Thread), p7, ...)
end

local function Call(p8: ((...any) -> ...any), ...) -- line: 36
	-- upvalues: t2 (copy)
	p8(...)
	table.insert(t2, coroutine.running())
end

function Thread() -- line: 41
	-- upvalues: Call (ref)
	while true do
		Call(coroutine.yield())
	end
end

return t1
