local Task = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Data%20Game/Grow%20A%20Garden%202/Module/Task.lua"))()
local t1 = {}
local t2 = {}

local function Constructor() -- line: 36
	-- upvalues: t1 (copy)
	local self = setmetatable({}, t1)

	self.Previous = self
	self.Next = self

	return self
end

t1.__index = t1
t1.Type = "Signal"

function t1.Connect(p1, p2) -- line: 48
	-- upvalues: t2 (copy)
	local self = setmetatable({}, t2)

	self.Previous = p1.Previous
	self.Next = p1
	self.Once = false
	self.Function = p2
	p1.Previous.Next = self
	p1.Previous = self

	return self
end
function t1.Once(p3, p4) -- line: 59
	-- upvalues: t2 (copy)
	local self = setmetatable({}, t2)

	self.Previous = p3.Previous
	self.Next = p3
	self.Once = true
	self.Function = p4
	p3.Previous.Next = self
	p3.Previous = self

	return self
end
function t1.Wait(p5) -- line: 70
	-- upvalues: t2 (copy)
	local self = setmetatable({}, t2)

	self.Previous = p5.Previous
	self.Next = p5
	self.Once = true
	self.Thread = coroutine.running()
	p5.Previous.Next = self
	p5.Previous = self

	return coroutine.yield()
end
function t1.Fire(p6, ...) -- line: 81
	-- upvalues: Task (copy)
	local Next = p6.Next

	while Next.Type == "Connection" do
		if Next.Function then
			Task:Defer(Next.Function, ...)
		else
			task.defer(Next.Thread, ...)
		end

		if Next.Once then
			Next.Previous.Next = Next.Next
			Next.Next.Previous = Next.Previous
		end

		Next = Next.Next
	end
end

t2.__index = t2
t2.Type = "Connection"

function t2.Disconnect(p7) -- line: 95
	p7.Previous.Next = p7.Next
	p7.Next.Previous = p7.Previous
end

return Constructor
