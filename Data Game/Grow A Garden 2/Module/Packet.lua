local Signal = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Data%20Game/Grow%20A%20Garden%202/Module/Signal.lua"))()
local Task = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Data%20Game/Grow%20A%20Garden%202/Module/Task.lua"))()
local Types = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Data%20Game/Grow%20A%20Garden%202/Module/Types.lua"))()
local t1 = {
	UseBuffers = true,
	DebugOutgoing = false,
	DebugOutgoingInterval = 5,
	DebugOutgoingTop = 10
}
local ParametersToFunctions = nil
local TableToFunctions = nil
local ReadParameters = nil
local WriteParameters = nil
local Timeout = nil
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Reads = Types.Reads
local Writes = Types.Writes
local Import = Types.Import
local Export = Types.Export
local Truncate = Types.Truncate
local Ended = Types.Ended
local NumberU8 = Reads.NumberU8
local NumberU8_2 = Writes.NumberU8
local NumberU16 = Reads.NumberU16
local NumberU16_2 = Writes.NumberU16
local t2 = {}
local t3 = {}
local t23 = nil
local t24 = nil
local t33 = nil
local RemoteEvent = nil
local u28 = nil
local t4 = {
	BufferLength = 128,
	BufferOffset = 0,
	InstancesOffset = 0,
	Buffer = buffer.create(128),
	Instances = {}
}
local u30 = nil
local n1 = 0
local u32 = nil

local function getReporter() -- line: 60
	-- upvalues: RunService (copy), u32 (ref)
	if RunService:IsServer() ~= true then
		return nil
	end

	if u32 then
		return u32
	end

	return nil
end
local function getFrameByteCap() -- line: 72
	-- upvalues: RunService (copy), u32 (ref)
	local v53

	if RunService:IsServer() ~= true then
		v53 = nil
	else
		v53 = if not u32 then nil else u32
	end

	if v53 then
		return (v53.GetFrameByteCap())
	end

	return 64000
end
local function packetShouldBlock(s1: string) -- line: 76
	-- upvalues: RunService (copy), u32 (ref)
	local v57

	if RunService:IsServer() ~= true then
		v57 = nil
	else
		v57 = if not u32 then nil else u32
	end

	if v57 then
		return (v57.ShouldBlock(s1))
	end

	return true
end
local function reportAbuse(p1, s2: string, p2: ((...any) -> ...any)?) -- line: 80
	-- upvalues: RunService (copy), u32 (ref)
	local v63

	if RunService:IsServer() ~= true then
		v63 = nil
	else
		v63 = if not u32 then nil else u32
	end

	if v63 then
		v63.Report(p1, "Packet", s2, p2)
	end
end
local function debugOutgoingIncrement(s3: string) -- line: 87
	-- upvalues: t1 (copy), RunService (copy), u30 (ref), n1 (ref)
	if t1.DebugOutgoing ~= true or RunService:IsServer() ~= true then
		return
	end

	local v67 = u30

	if v67 == nil then
		v67 = {}
		u30 = v67
		n1 = os.clock()
	end

	v67[s3] = (v67[s3] or 0) + 1

	local elapsed = os.clock()

	if (t1.DebugOutgoingInterval or 5) > elapsed - n1 then
		return
	end

	n1 = elapsed

	local t5 = {}

	for v70, v71 in v67 do
		t5[#t5 + 1] = {
			v70,
			v71
		}
	end

	table.sort(t5, function(p3, p4) -- line: 112
		return p3[2] > p4[2]
	end)

	local t6 = {}

	for i = 1, math.min(t1.DebugOutgoingTop or 10, #t5) do
		local v74 = t5[i]

		t6[#t6 + 1] = v74[1] .. "=" .. tostring(v74[2])
	end

	table.clear(v67)
end
local function Constructor(_, s4: string, ...) -- line: 128
	-- upvalues: t3 (copy), t2 (copy), RunService (copy), u28 (ref), Signal (copy), RemoteEvent (ref), ParametersToFunctions (ref)
	local v77 = t3[s4]

	if v77 then
		return v77
	end

	local self = setmetatable({}, t2)

	self.Name = s4

	if RunService:IsServer() then
		self.Id = u28
		self.OnServerEvent = Signal()
		RemoteEvent:SetAttribute(s4, u28)
		t3[u28] = self
		u28 += 1
	else
		self.Id = RemoteEvent:GetAttribute(s4)
		self.OnClientEvent = Signal()

		if self.Id then
			t3[self.Id] = self
		end
	end

	local v79, v80 = ParametersToFunctions(table.pack(...))

	self.Reads = v79
	self.Writes = v80
	t3[self.Name] = self

	return self
end

t2.__index = t2
t2.Type = "Packet"

function t2.Response(p6, ...) -- line: 154
	-- upvalues: ParametersToFunctions (ref)
	p6.ResponseTimeout = p6.ResponseTimeout or 10

	local v82, v83 = ParametersToFunctions(table.pack(...))

	p6.ResponseReads = v82
	p6.ResponseWrites = v83

	return p6
end
function t2.Fire(p7, ...) -- line: 160
	-- upvalues: t1 (copy), RunService (copy), t33 (ref), Import (copy), t4 (ref), NumberU16_2 (copy), NumberU8_2 (copy), Task (copy), Timeout (ref), WriteParameters (ref), Export (copy), RemoteEvent (ref)
	if t1.UseBuffers then
		if p7.ResponseReads then
			if RunService:IsServer() then
				error("You must use FireClient(player)", 2)
			end

			local v85 = nil

			for _ = 1, 128 do
				v85 = t33[t33.Index]

				if not v85 then
					break
				end

				t33.Index = (t33.Index + 1) % 128
			end

			if v85 then
				error("Cannot have more than 128 yielded threads", 2)
			end

			Import(t4)
			NumberU16_2(p7.Id)
			NumberU8_2(t33.Index)
			t33[t33.Index] = {
				Yielded = coroutine.running(),
				Timeout = Task:Delay(p7.ResponseTimeout, Timeout, t33, t33.Index, p7.ResponseTimeoutValue)
			}
			t33.Index = (t33.Index + 1) % 128
			WriteParameters(p7.Writes, { ... })
			t4 = Export()

			return coroutine.yield()
		end

		Import(t4)
		NumberU16_2(p7.Id)
		WriteParameters(p7.Writes, { ... })
		t4 = Export()

		return
	end

	if p7.ResponseReads then
		if RunService:IsServer() then
			error("You must use FireClient(player)", 2)
		end

		local v87 = nil

		for _ = 1, 128 do
			v87 = t33[t33.Index]

			if not v87 then
				break
			end

			t33.Index = (t33.Index + 1) % 128
		end

		if v87 then
			error("Cannot have more than 128 yielded threads", 2)
		end

		t33[t33.Index] = {
			Yielded = coroutine.running(),
			Timeout = Task:Delay(p7.ResponseTimeout, Timeout, t33, t33.Index, p7.ResponseTimeoutValue)
		}
		RemoteEvent:FireServer(p7.Id, t33.Index, ...)
		t33.Index = (t33.Index + 1) % 128

		return coroutine.yield()
	end

	RemoteEvent:FireServer(p7.Id, ...)
end
function t2.FireClient(p8, p9, ...) -- line: 206
	-- upvalues: t1 (copy), debugOutgoingIncrement (copy), t24 (ref), Import (copy), t23 (ref), NumberU16_2 (copy), NumberU8_2 (copy), Task (copy), Timeout (ref), WriteParameters (ref), Export (copy), RemoteEvent (ref)
	if p9.Parent == nil then
		return
	end

	if t1.UseBuffers then
		if p8.ResponseReads then
			debugOutgoingIncrement(p8.Name)

			local v91 = t24[p9]

			if v91 == nil then
				v91 = {
					Index = 0
				}
				t24[p9] = v91
			end

			local v92 = nil

			for _ = 1, 128 do
				v92 = v91[v91.Index]

				if not v92 then
					break
				end

				v91.Index = (v91.Index + 1) % 128
			end

			if v92 then
				error("Cannot have more than 128 yielded threads", 2)

				return
			end

			Import(t23[p9] or {
				BufferLength = 128,
				BufferOffset = 0,
				InstancesOffset = 0,
				Buffer = buffer.create(128),
				Instances = {}
			})
			NumberU16_2(p8.Id)
			NumberU8_2(v91.Index)
			v91[v91.Index] = {
				Yielded = coroutine.running(),
				Timeout = Task:Delay(p8.ResponseTimeout, Timeout, v91, v91.Index, p8.ResponseTimeoutValue)
			}
			v91.Index = (v91.Index + 1) % 128
			WriteParameters(p8.Writes, { ... })
			t23[p9] = Export()

			return coroutine.yield()
		end

		debugOutgoingIncrement(p8.Name)
		Import(t23[p9] or {
			BufferLength = 128,
			BufferOffset = 0,
			InstancesOffset = 0,
			Buffer = buffer.create(128),
			Instances = {}
		})
		NumberU16_2(p8.Id)
		WriteParameters(p8.Writes, { ... })
		t23[p9] = Export()

		return
	end

	if p8.ResponseReads then
		debugOutgoingIncrement(p8.Name)

		local v94 = t24[p9]

		if v94 == nil then
			v94 = {
				Index = 0
			}
			t24[p9] = v94
		end

		local v95 = nil

		for _ = 1, 128 do
			v95 = v94[v94.Index]

			if not v95 then
				break
			end

			v94.Index = (v94.Index + 1) % 128
		end

		if v95 then
			error("Cannot have more than 128 yielded threads", 2)

			return
		end

		v94[v94.Index] = {
			Yielded = coroutine.running(),
			Timeout = Task:Delay(p8.ResponseTimeout, Timeout, v94, v94.Index, p8.ResponseTimeoutValue)
		}
		RemoteEvent:FireClient(p9, p8.Id, v94.Index, ...)
		v94.Index = (v94.Index + 1) % 128

		return coroutine.yield()
	end

	debugOutgoingIncrement(p8.Name)
	RemoteEvent:FireClient(p9, p8.Id, ...)
end
function t2.FireAllClients(p10, ...) -- line: 256
	-- upvalues: RunService (copy), t1 (copy), debugOutgoingIncrement (copy), Import (copy), t4 (ref), NumberU16_2 (copy), WriteParameters (ref), Export (copy), RemoteEvent (ref)
	if not RunService:IsServer() then
		error("FireAllClients can only be called from the server", 2)
	end

	if p10.ResponseReads then
		error("Cannot use FireAllClients with packets that expect a response", 2)
	end

	if t1.UseBuffers then
		debugOutgoingIncrement(p10.Name)
		Import(t4)
		NumberU16_2(p10.Id)
		WriteParameters(p10.Writes, { ... })
		t4 = Export()

		return
	end

	debugOutgoingIncrement(p10.Name)
	RemoteEvent:FireAllClients(p10.Id, ...)
end
function t2.Serialize(p11, ...) -- line: 271
	-- upvalues: Import (copy), WriteParameters (ref), Truncate (copy)
	Import({
		BufferLength = 128,
		BufferOffset = 0,
		InstancesOffset = 0,
		Buffer = buffer.create(128),
		Instances = {}
	})
	WriteParameters(p11.Writes, { ... })

	return Truncate()
end
function t2.Deserialize(p12, p13, p14) -- line: 277
	-- upvalues: Import (copy), ReadParameters (ref)
	Import({
		BufferOffset = 0,
		InstancesOffset = 0,
		Buffer = p13,
		BufferLength = buffer.len(p13),
		Instances = p14 or {}
	})

	return ReadParameters(p12.Reads)
end
function ParametersToFunctions(t7: {[any]: any}) -- line: 284
	-- upvalues: TableToFunctions (ref), Reads (copy), Writes (copy)
	local t8 = table.create(#t7)
	local t9 = table.create(#t7)

	for i, v in ipairs(t7) do
		if type(v) == "table" then
			local v107, v108 = TableToFunctions(v)

			t8[i] = v107
			t9[i] = v108
		else
			local v109 = Reads[v]
			local v110 = Writes[v]

			t8[i] = v109
			t9[i] = v110
		end
	end

	return t8, t9
end
function TableToFunctions(t10: {[any]: any}) -- line: 296
	-- upvalues: TableToFunctions (ref), Reads (copy), Writes (copy), NumberU16 (copy), NumberU16_2 (copy)
	if #t10 == 1 then
		local v112 = t10[1]
		local u115, u116

		if type(v112) == "table" then
			local v113, v114 = TableToFunctions(v112)

			u115 = v113
			u116 = v114
		else
			u115 = Reads[v112]
			u116 = Writes[v112]
		end

		return function() -- line: 305
			-- upvalues: NumberU16 (copy), u115 (ref)
			local v225 = NumberU16()
			local t11 = table.create(v225)

			for i = 1, v225 do
				t11[i] = u115()
			end

			return t11
		end, function(t12: {[any]: any}) -- line: 311
			-- upvalues: NumberU16_2 (copy), u116 (ref)
			NumberU16_2(#t12)

			for _, v230 in t12 do
				u116(v230)
			end
		end
	end

	local t13 = {}

	for v118, _ in t10 do
		table.insert(t13, v118)
	end

	table.sort(t13)

	local t14 = table.create(#t13)
	local t15 = table.create(#t13)

	for v122, v123 in t13 do
		local v124 = t10[v123]

		if type(v124) == "table" then
			local v125, v126 = TableToFunctions(v124)

			t14[v122] = v125
			t15[v122] = v126
		else
			local v127 = Reads[v124]
			local v128 = Writes[v124]

			t14[v122] = v127
			t15[v122] = v128
		end
	end

	return function() -- line: 327
		-- upvalues: t14 (copy), t13 (copy)
		local t16 = {}

		for v232, v233 in t14 do
			t16[t13[v232]] = v233()
		end

		return t16
	end, function(t17: {[any]: any}) -- line: 332
		-- upvalues: t15 (copy), t13 (copy)
		for v235, v236 in t15 do
			v236(t17[t13[v235]])
		end
	end
end
function ReadParameters(t18: {[any]: any}) -- line: 339
	local t19 = table.create(#t18)

	for v131, v132 in t18 do
		t19[v131] = v132()
	end

	return table.unpack(t19)
end
function WriteParameters(t20: {[any]: any}, t21: {[any]: any}) -- line: 345
	for v135, v136 in t20 do
		v136(t21[v135])
	end
end
function Timeout(t22: {[any]: any}, n2: number, p15) -- line: 349
	local v140 = t22[n2]

	if not v140 then
		return
	end

	pcall(task.defer, v140.Yielded, p15)
	t22[n2] = nil
end

if RunService:IsServer() then
	t23 = {}
	t24 = {}
	u28 = 0
	RemoteEvent = Instance.new("RemoteEvent", game:GetService("ReplicatedStorage").SharedModules.Packet)

	local t25 = {}
	local thread = task.spawn(function() -- line: 375
		-- upvalues: t4 (ref), RemoteEvent (ref), t23 (ref), t25 (copy)
		while true do
			coroutine.yield()

			if t4.BufferOffset > 0 then
				local buf = buffer.create(t4.BufferOffset)

				buffer.copy(buf, 0, t4.Buffer, 0, t4.BufferOffset)

				if t4.InstancesOffset == 0 then
					RemoteEvent:FireAllClients(buf)
				else
					RemoteEvent:FireAllClients(buf, t4.Instances)
					t4.InstancesOffset = 0
					table.clear(t4.Instances)
				end

				t4.BufferOffset = 0
			end

			for v142, v143 in t23 do
				local buf = buffer.create(v143.BufferOffset)

				buffer.copy(buf, 0, v143.Buffer, 0, v143.BufferOffset)

				if v143.InstancesOffset == 0 then
					RemoteEvent:FireClient(v142, buf)
				else
					RemoteEvent:FireClient(v142, buf, v143.Instances)
				end
			end

			table.clear(t23)
			table.clear(t25)
		end
	end)

	local function v41(t26: {[any]: any}, p16, n3: number, ...) -- line: 404
		-- upvalues: RunService (copy), Import (copy), t23 (ref), NumberU16_2 (copy), NumberU8_2 (copy), WriteParameters (ref), Export (copy)
		if t26.OnServerInvoke == nil then
			if not RunService:IsStudio() then
			end

			return
		end

		local t27 = { t26.OnServerInvoke(p16, ...) }

		if p16.Parent == nil then
			return
		end

		Import(t23[p16] or {
			BufferLength = 128,
			BufferOffset = 0,
			InstancesOffset = 0,
			Buffer = buffer.create(128),
			Instances = {}
		})
		NumberU16_2(t26.Id)
		NumberU8_2(n3 + 128)
		WriteParameters(t26.ResponseWrites, t27)
		t23[p16] = Export()
	end
	local function v42(p17, p18: buffer, t28: {[any]: any}?) -- line: 415
		-- upvalues: t25 (copy), RunService (copy), u32 (ref), Import (copy), Ended (copy), NumberU16 (copy), t3 (copy), NumberU8 (copy), Task (copy), v41 (copy), ReadParameters (ref), t24 (ref)
		local v152 = (t25[p17] or 0) + math.max(buffer.len(p18), 800)
		local v153

		if RunService:IsServer() ~= true then
			v153 = nil
		else
			v153 = if not u32 then nil else u32
		end

		if v152 > (not v153 and 64000 or v153.GetFrameByteCap()) then
			local v156

			if RunService:IsServer() ~= true then
				v156 = nil
			else
				v156 = if not u32 then nil else u32
			end

			if v156 then
				v156.Report(p17, "Packet", "oversize", function() -- line: 418
					-- upvalues: v152 (copy), p18 (copy), u32 (ref), t28 (copy)
					return {
						Bytes = v152,
						BufferLen = buffer.len(p18),
						BufferHex = u32.BufferHexPrefix(p18),
						InstanceCount = not t28 and 0 or #t28
					}
				end)
			end

			local v159

			if RunService:IsServer() ~= true then
				v159 = nil
			else
				v159 = if not u32 then nil else u32
			end

			if not v159 or v159.ShouldBlock("oversize") then
				return
			end
		end

		t25[p17] = v152
		Import({
			BufferOffset = 0,
			InstancesOffset = 0,
			Buffer = p18,
			BufferLength = buffer.len(p18),
			Instances = t28 or {}
		})

		while Ended() == false do
			local v162 = NumberU16()
			local v163 = t3[v162]

			if not v163 then
				local v164

				if RunService:IsServer() ~= true then
					v164 = nil
				else
					v164 = if not u32 then nil else u32
				end

				if not v164 then
					return
				end

				v164.Report(p17, "Packet", "unknown_packet", function() -- line: 436
					-- upvalues: v162 (copy), p18 (copy), u32 (ref), t28 (copy)
					return {
						PacketId = v162,
						BufferLen = buffer.len(p18),
						BufferHex = u32.BufferHexPrefix(p18),
						InstanceCount = not t28 and 0 or #t28
					}
				end)

				return
			end

			if v163.ResponseReads then
				local v167 = NumberU8()

				if v167 < 128 then
					Task:Defer(v41, v163, p17, v167, ReadParameters(v163.Reads))
				else
					local v168 = v167 - 128
					local v169 = t24[p17][v168]

					if v169 then
						task.cancel(v169.Timeout)
						task.defer(v169.Yielded, ReadParameters(v163.ResponseReads))
						t24[p17][v168] = nil
					elseif not RunService:IsStudio() then
						ReadParameters(v163.ResponseReads)
					end
				end
			else
				v163.OnServerEvent:Fire(p17, ReadParameters(v163.Reads))
			end
		end
	end
	local function v43(t29: {[any]: any}, p19, n4: number, ...) -- line: 468
		-- upvalues: RunService (copy), RemoteEvent (ref)
		if t29.OnServerInvoke == nil then
			if not RunService:IsStudio() then
			end

			return
		end

		local t30 = { t29.OnServerInvoke(p19, ...) }

		if p19.Parent == nil then
			return
		end

		RemoteEvent:FireClient(p19, t29.Id, n4 + 128, table.unpack(t30))
	end
	local function v44(p20, n5: number, ...) -- line: 475
		-- upvalues: t3 (copy), u32 (ref), RunService (copy), Task (copy), v43 (copy)
		local v176 = t3[n5]

		if not v176 then
			local v177 = table.pack(...)
			local v178

			if RunService:IsServer() ~= true then
				v178 = nil
			else
				v178 = if not u32 then nil else u32
			end

			if v178 then
				v178.Report(p20, "Packet", "unknown_packet", function() -- line: 479
					-- upvalues: u32 (ref), n5 (copy), v177 (copy)
					return {
						Unbuffered = true,
						PacketId = u32.SafePreview(n5),
						Args = u32.PreviewPacked(v177)
					}
				end)
			end

			return
		end

		if v176.ResponseReads then
			local t31 = { ... }
			local v182 = table.remove(t31, 1)

			if type(v182) ~= "number" or v182 < 0 or v182 >= 128 or v182 % 1 ~= 0 then
				local v183

				if RunService:IsServer() ~= true then
					v183 = nil
				else
					v183 = if not u32 then nil else u32
				end

				if v183 then
					v183.Report(p20, "Packet", "bad_id_type", function() -- line: 492
						-- upvalues: u32 (ref), n5 (copy), v182 (copy)
						return {
							Unbuffered = true,
							PacketId = u32.SafePreview(n5),
							ThreadIndexType = typeof(v182),
							ThreadIndexPreview = u32.SafePreview(v182)
						}
					end)
				end

				return
			end

			Task:Defer(v43, v176, p20, v182, table.unpack(t31))

			return
		end

		v176.OnServerEvent:Fire(p20, ...)
	end

	RemoteEvent.OnServerEvent:Connect(function(player, p21, ...) -- line: 508
		-- upvalues: v42 (copy), t1 (copy), u32 (ref), RunService (copy), v44 (copy)
		local ok, u190

		if typeof(p21) == "buffer" then
			local result

			ok, result = pcall(v42, player, p21, ...)
			u190 = result
		else
			if t1.UseBuffers then
				local v191 = table.pack(...)
				local v192

				if RunService:IsServer() ~= true then
					v192 = nil
				else
					v192 = if not u32 then nil else u32
				end

				if v192 then
					v192.Report(player, "Packet", "unbuffered", function() -- line: 514
						-- upvalues: p21 (copy), u32 (ref), v191 (copy)
						return {
							Arg1Type = typeof(p21),
							Arg1Preview = u32.SafePreview(p21),
							Args = u32.PreviewPacked(v191)
						}
					end)
				end

				return
			end

			local result

			ok, result = pcall(v44, player, p21, ...)
			u190 = result
		end

		if not ok then
			warn(`[Packet] Server event handler errored for { player.Name }: { u190 }`)

			local v196

			if RunService:IsServer() ~= true then
				v196 = nil
			else
				v196 = if not u32 then nil else u32
			end

			if v196 then
				v196.Report(player, "Packet", "handler_error", function() -- line: 527
					-- upvalues: u32 (ref), u190 (ref), p21 (copy)
					local t32 = {
						Error = u32.SanitizeString((tostring(u190))),
						Arg1Type = typeof(p21)
					}

					if typeof(p21) == "buffer" then
						t32.BufferLen = buffer.len(p21)
						t32.BufferHex = u32.BufferHexPrefix(p21)

						return t32
					end

					t32.Arg1Preview = u32.SafePreview(p21)

					return t32
				end)
			end
		end
	end)
	Players.PlayerRemoving:Connect(function(player) -- line: 543
		-- upvalues: t23 (ref), t24 (ref), t25 (copy)
		t23[player] = nil
		t24[player] = nil
		t25[player] = nil
	end)

	if t1.UseBuffers then
		RunService.Heartbeat:Connect(function(_) -- line: 550
			-- upvalues: thread (copy)
			task.defer(thread)
		end)
	end
else
	t33 = {
		Index = 0
	}
	RemoteEvent = game:GetService("ReplicatedStorage").SharedModules.Packet:WaitForChild("RemoteEvent")

	local n6 = 0
	local thread = task.spawn(function() -- line: 557
		-- upvalues: t4 (ref), RemoteEvent (ref)
		while true do
			coroutine.yield()

			if t4.BufferOffset > 0 then
				local buf = buffer.create(t4.BufferOffset)

				buffer.copy(buf, 0, t4.Buffer, 0, t4.BufferOffset)

				if t4.InstancesOffset == 0 then
					RemoteEvent:FireServer(buf)
				else
					RemoteEvent:FireServer(buf, t4.Instances)
					t4.InstancesOffset = 0
					table.clear(t4.Instances)
				end

				t4.BufferOffset = 0
			end
		end
	end)

	local function v47(t34: {[any]: any}, n7: number, ...) -- line: 575
		-- upvalues: Import (copy), t4 (ref), NumberU16_2 (copy), NumberU8_2 (copy), WriteParameters (ref), Export (copy)
		if t34.OnClientInvoke == nil then
			return
		end

		local t35 = { t34.OnClientInvoke(...) }

		Import(t4)
		NumberU16_2(t34.Id)
		NumberU8_2(n7 + 128)
		WriteParameters(t34.ResponseWrites, t35)
		t4 = Export()
	end
	local function v48(t36: {[any]: any}, n8: number, ...) -- line: 585
		-- upvalues: RemoteEvent (ref)
		if t36.OnClientInvoke == nil then
			return
		end

		local t37 = { t36.OnClientInvoke(...) }

		RemoteEvent:FireServer(t36.Id, n8 + 128, table.unpack(t37))
	end
	local function v49(n9: number, ...) -- line: 591
		-- upvalues: t3 (copy), Task (copy), v48 (copy), t33 (ref)
		local v209 = t3[n9]

		if not v209 then
			return
		end

		if v209.ResponseReads then
			local t38 = { ... }
			local v211 = table.remove(t38, 1)

			if v211 < 128 then
				Task:Defer(v48, v209, v211, table.unpack(t38))

				return
			end

			local v212 = v211 - 128
			local v213 = t33[v212]

			if v213 then
				task.cancel(v213.Timeout)
				pcall(task.defer, v213.Yielded, table.unpack(t38))
				t33[v212] = nil

				return
			end
		else
			v209.OnClientEvent:Fire(...)
		end
	end

	RemoteEvent.OnClientEvent:Connect(function(p23, ...) -- line: 618
		-- upvalues: Import (copy), Ended (copy), t3 (copy), NumberU16 (copy), NumberU8 (copy), Task (copy), v47 (copy), ReadParameters (ref), t33 (ref), v49 (copy)
		if typeof(p23) == "buffer" then
			local v215 = select(1, ...)

			Import({
				BufferOffset = 0,
				InstancesOffset = 0,
				Buffer = p23,
				BufferLength = buffer.len(p23),
				Instances = v215 or {}
			})

			while Ended() == false do
				local v216 = t3[NumberU16()]

				if not v216 then
					return
				end

				if v216.ResponseReads then
					local v217 = NumberU8()

					if v217 < 128 then
						Task:Defer(v47, v216, v217, ReadParameters(v216.Reads))
					else
						local v218 = v217 - 128
						local v219 = t33[v218]

						if v219 then
							task.cancel(v219.Timeout)
							pcall(task.defer, v219.Yielded, ReadParameters(v216.ResponseReads))
							t33[v218] = nil
						else
							ReadParameters(v216.ResponseReads)
						end
					end
				else
					v216.OnClientEvent:Fire(ReadParameters(v216.Reads))
				end
			end
		else
			v49(p23, ...)
		end
	end)
	RemoteEvent.AttributeChanged:Connect(function(attribute) -- line: 660
		-- upvalues: t3 (copy), RemoteEvent (ref)
		local v221 = t3[attribute]

		if v221 then
			if v221.Id then
				t3[v221.Id] = nil
			end

			v221.Id = RemoteEvent:GetAttribute(attribute)

			if v221.Id then
				t3[v221.Id] = v221
			end
		end
	end)

	if t1.UseBuffers then
		RunService.Heartbeat:Connect(function(dt) -- line: 670
			-- upvalues: n6 (ref), thread (copy)
			n6 += dt

			if n6 > 0.016666666666666666 then
				n6 %= 0.016666666666666666
				task.defer(thread)
			end
		end)
	end
end

local v50 = setmetatable(Types.Types, {
	__call = Constructor
})

v50.Settings = t1

return v50
