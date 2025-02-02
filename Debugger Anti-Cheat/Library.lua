local HttpService = cloneref(game:GetService("HttpService")) :: HttpService
local Repr = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Debugger%20Anti-Cheat/repr.lua"))()

local ReplayAttack = {
	MetaMethodsCaptured = {
		["__namecall"] = true,
		["__index"] = true,
		["__newindex"] = true,
	},
	Details = true,
	Recording = false,
	CurrentSession = nil,
	Filters = {
		FilteringEnabled = true,
		FilterInHook = true,
		LogNilCallers = true,
		FindInCallerName = { "target_script_name" },
		FindInArguments = {},
		FindInTraceback = {},
		FindInFunctionSource = { "target_script_name" },
	},
}

function ReplayAttack:SaveSession(Session, FileName)
	local File = ""

	File = File .. "Session ID: " .. Session.ID .. "\n"
	File = File .. "Session Name: " .. Session.Name .. "\n"
	File = File .. "Session Start: " .. Session.Start .. "\n"
	File = File .. "Session End: " .. Session.End .. "\n"

	for _, Event in next, Session.Events do

		if not self.MetaMethodsCaptured[Event.Metamethod] then
			continue
		end

		local ShouldContinue = not self.Filters.FilteringEnabled

		if not ShouldContinue then
			if self.Filters.LogNilCallers then
				if not Event.Caller then
					ShouldContinue = true
				end
			end
		end

		if not ShouldContinue then
			if self.Filters.FindInCallerName then
				for _, Filter in next, self.Filters.FindInCallerName do
					if string.find(Event.Caller.Name, Filter) or Event.Caller.Name == Filter then
						ShouldContinue = true
						break
					end
				end
			end
		end

		if not ShouldContinue then
			if self.Filters.FindInArguments then
				for _, Filter in next, self.Filters.FindInArguments do
					for _, Arg in next, Event.Arguments do
						if type(Arg) == "string" then
							if string.find(Arg, Filter) then
								ShouldContinue = true
								break
							end
						else 
							if Arg == Filter then
								ShouldContinue = true
								break
							end
						end
					end
				end
			end
		end

		if not ShouldContinue then
			if self.Filters.FindInTraceback then
				for _, Filter in next, self.Filters.FindInTraceback do
					if string.find(Event.Traceback, Filter) then
						ShouldContinue = true
						break
					end
				end
			end
		end

		if not ShouldContinue then
			if self.Filters.FindInFunctionSource then
				for _, Filter in next, self.Filters.FindInFunctionSource do
					if string.find(Event.CallingFunctionSource, Filter) then
						ShouldContinue = true
						break
					end
				end
			end
		end

		if not ShouldContinue then
			continue
		end

		File = File .. "##################################################\n"

		File = File .. "\tEvent: " .. Event.Metamethod .. "\n"
		File = File .. "\tTime: " .. Event.Time .. "\n"

		if Event.Metamethod == "__namecall" then
			File = File .. "\tArguments: " .. Repr(Event.Arguments) .. "\n"
			File = File .. "\tMethod: " .. Event.Method .. "\n"
			File = File .. "\tSelf: " .. Repr(Event.Self) .. "\n"
		elseif Event.Metamethod == "__index" then
			File = File .. "\tTable: " .. Repr(Event.Table) .. "\n"
			File = File .. "\tKey: " .. Repr(Event.Key) .. "\n"
			File = File .. "\tCaller: " .. Repr(Event.Caller) .. "\n"
		elseif Event.Metamethod == "__newindex" then
			File = File .. "\tTable: " .. Repr(Event.Table) .. "\n"
			File = File .. "\tKey: " .. Repr(Event.Key) .. "\n"
			File = File .. "\tValue: " .. Repr(Event.Value) .. "\n"
			File = File .. "\tCaller: " .. Repr(Event.Caller) .. "\n"
		end

		if self.Details then
			File = File .. "\tTraceback: " .. Event.Traceback .. "\n"
		end
	end

	File = File .. "##################################################\n"

	writefile(FileName .. ".txt", File)
end

function ReplayAttack:CreateSession(SessionName: string)
	local Session = {
		Name = SessionName,
		Events = {},
		ID = HttpService:GenerateGUID(false),
		Start = os.clock(),
		OldMethodCache = {},
	}

	function Session.GetTime()
		return os.clock() - Session.Start
	end

	function Session:Close()
		local RawMetatable = getrawmetatable(game)
		hookfunction(RawMetatable.__namecall, self.OldMethodCache["__namecall"])
		hookfunction(RawMetatable.__index, self.OldMethodCache["__index"])
		hookfunction(RawMetatable.__newindex, self.OldMethodCache["__newindex"])
		self.End = os.clock()
	end

	if self.CurrentSession then
		warn("A session is already active, ending it.")
		self.CurrentSession:Close()
	end

	local RawMt = getrawmetatable(game)

	local OldNamecall, OldIndex, OldNewindex

	OldNamecall = hookfunction(RawMt.__namecall, newcclosure(function(...)
		if not checkcaller() then
			local Args = { ... }
			local SelfObj = table.remove(Args, 1)
			local Method = getnamecallmethod()
			local Caller = getcallingscript()
			local Traceback = debug.traceback()
			local CallingFunction = debug.info(2,"f")
			local CallingFunctionSource = debug.info(CallingFunction, 's')

			if ReplayAttack.Filters.FilterInHook then
				local ShouldContinue = not self.Filters.FilteringEnabled
				if not ShouldContinue then
					if self.Filters.LogNilCallers then
						if not Caller then
							ShouldContinue = true
						end
					end
				end

				if not ShouldContinue then
					if self.Filters.FindInCallerName then
						for _, Filter in next, self.Filters.FindInCallerName do
							if string.find(OldIndex(Caller, 'Name'), Filter) or OldIndex(Caller, 'Name') == Filter then
								ShouldContinue = true
								break
							end
						end
					end
				end

				if ShouldContinue then
					table.insert(Session.Events, {
						Metamethod = "__namecall",
						Time = Session.GetTime(),
						Arguments = Args,
						Method = Method,
						Self = SelfObj,
						Caller = Caller,
						Traceback = Traceback,
						CallingFunction = CallingFunction,
						CallingFunctionSource = CallingFunctionSource,
					})
				end
			else
				table.insert(Session.Events, {
					Metamethod = "__namecall",
					Time = Session.GetTime(),
					Arguments = Args,
					Method = Method,
					Self = SelfObj,
					Caller = Caller,
					Traceback = Traceback,
					CallingFunction = CallingFunction,
					CallingFunctionSource = CallingFunctionSource,
				})
			end
		end

		return OldNamecall(...)
	end))

	OldIndex = hookfunction(RawMt.__index, newcclosure(function(T, K)
		if not checkcaller() then
			local Caller = getcallingscript()
			local Traceback = debug.traceback()
			local CallingFunction = debug.info(2,"f")
			local CallingFunctionSource = debug.info(CallingFunction, 's')

			if ReplayAttack.Filters.FilterInHook then
				local ShouldContinue = not self.Filters.FilteringEnabled
				if not ShouldContinue then
					if self.Filters.LogNilCallers then
						if not Caller then
							ShouldContinue = true
						end
					end
				end

				if not ShouldContinue then
					if self.Filters.FindInCallerName then
						for _, Filter in next, self.Filters.FindInCallerName do
							if string.find(OldIndex(Caller, 'Name'), Filter) or OldIndex(Caller, 'Name') == Filter then
								ShouldContinue = true
								break
							end
						end
					end
				end

				if ShouldContinue then
					table.insert(Session.Events, {
						Metamethod = "__index",
						Time = Session.GetTime(),
						Arguments = {},
						Method = nil,
						Table = T,
						Key = K,
						Caller = Caller,
						Traceback = Traceback,
						CallingFunction = CallingFunction,
						CallingFunctionSource = CallingFunctionSource,
					})
				end
			else
				table.insert(Session.Events, {
					Metamethod = "__index",
					Time = Session.GetTime(),
					Arguments = {},
					Method = nil,
					Table = T,
					Key = K,
					Caller = Caller,
					Traceback = Traceback,
					CallingFunction = CallingFunction,
					CallingFunctionSource = CallingFunctionSource,
				})
			end
		end

		return OldIndex(T, K)
	end))

	OldNewindex = hookfunction(RawMt.__newindex, newcclosure(function(T, K, V)
		if not checkcaller() then
			local Caller = getcallingscript()
			local Traceback = debug.traceback()
			local CallingFunction = debug.info(2,"f")
			local CallingFunctionSource = debug.info(CallingFunction, 's')

			if ReplayAttack.Filters.FilterInHook then
				local ShouldContinue = not self.Filters.FilteringEnabled
				if not ShouldContinue then
					if self.Filters.LogNilCallers then
						if not Caller then
							ShouldContinue = true
						end
					end
				end

				if not ShouldContinue then
					if self.Filters.FindInCallerName then
						for _, Filter in next, self.Filters.FindInCallerName do
							if string.find(OldIndex(Caller, 'Name'), Filter) or OldIndex(Caller, 'Name') == Filter then
								ShouldContinue = true
								break
							end
						end
					end
				end

				if ShouldContinue then
					table.insert(Session.Events, {
						Metamethod = "__newindex",
						Time = Session.GetTime(),
						Arguments = {},
						Method = nil,
						Table = T,
						Key = K,
						Value = V,
						Caller = Caller,
						Traceback = Traceback,
						CallingFunction = CallingFunction,
						CallingFunctionSource = CallingFunctionSource,
					})
				end
			else
				table.insert(Session.Events, {
					Metamethod = "__newindex",
					Time = Session.GetTime(),
					Arguments = {},
					Method = nil,
					Table = T,
					Key = K,
					Value = V,
					Caller = Caller,
					Traceback = Traceback,
					CallingFunction = CallingFunction,
					CallingFunctionSource = CallingFunctionSource,
				})
			end
		end

		return OldNewindex(T, K, V)
	end))

	Session.OldMethodCache["__namecall"] = OldNamecall
	Session.OldMethodCache["__index"] = OldIndex
	Session.OldMethodCache["__newindex"] = OldNewindex

	self.CurrentSession = Session
	return Session	
end

return ReplayAttack
