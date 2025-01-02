local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()

local window = library:AddWindow("Nebula", {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(300, 250), 
	can_resize = true,
})

local Script = window:AddTab("Script Editor")

local Console = Script:AddConsole({
    ["y"] = 100,
    ["source"] = "Lua",
})

Console:Set("print('Hello World')")

Script:AddButton("Execute", function()
    loadstring(Console:Get())()
end)

Script:AddButton("Clear", function()
    Console:Set("")
end)

Script:AddButton("Execute clipboard", function()
    loadstring(getclipboard())()
end)

Script:Show()
