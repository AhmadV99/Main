repeat wait() until game:IsLoaded()

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()

local window = library:AddWindow("Nebula", {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(270, 270), 
	can_resize = true,
})

local Script = window:AddTab("Script Editor")

local Console = Script:AddConsole({
    ["y"] = 100,
    ["source"] = "Lua",
})

Console:Set("print('Hello World')")

Script:AddButton("Execute", function()
    dtc.schedule(Console:Get())
end)

Script:AddButton("Clear", function()
    Console:Set("")
end)

Script:AddButton("Execute clipboard", function()
    dtc.schedule(getclipboard())
end)

Script:Show()
