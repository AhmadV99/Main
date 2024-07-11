loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.lua"))()

local Window = Library:MakeWindow({
    Title = "Speed Hub X | " .. Version,
    SaveFolder = "Speed Hub X"
});Window:AddMinimizeButton({
    Button = {Image = "rbxassetid://16022917595"},
    Corner = {CornerRadius = UDim.new(0, 5)}
})
local Home = Window:MakeTab({"Home", "scan-face"})
Home:AddDiscordInvite({
    Name = "Speed Hub X | Official Server",
    Logo = "rbxassetid://16022917595",
    Invite = Discord
})
local SpeedHubX = {}
local function Toggle(Tab, Name, Desc, Default)
  local Ver = Tab:AddToggle({
    Name = Name,Description = Desc or "",Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end})
    return Ver
end
local function Dropdown(Tab, Name, Desc, Option, Default)
  local Ver = Tab:AddDropdown({
    Name = Name,Description = Desc or "",Options = Option,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end})
    return Ver
end
local function Silder(Tab, Name, Min, Max, Default)
  local Ver = Tab:AddSlider({
    Name = Name,Min = Min,Max = Max,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end})
    return Ver
end
Home:AddSection({"Local Player"})
Silder(Home, "Set WalkSpeed", 0, 100000, 1000)
Silder(Home, "Set JumpPower", 0, 100000, 1000)
Toggle(Home, "Enable WalkSpeed", "This Can Set Walk Speed!", false)
Toggle(Home, "Enable JumpPower", "This Can Set JumpPower!", false)
Toggle(Home, "No Clip", "", false)
Toggle(Home, "Infinits Jump Ping", "", false)
local Main = Window:MakeTab({"Main", "home"})
Main:AddSection({"Skill"})
Toggle(Main, "Auto Ultimate", "This is Meaning Auto Use Ultimate", false)
Toggle(Main, "Auto Dash", "This is Meaning Auto Use Dash", false)
Main:AddSection({"Aim"})
Dropdown(Main, "Choose Aim Part", "", {"Head", "Torso", "HumanoidRootPart"}, "Head")
Toggle(Main, "Aimlock", "Aimlock = Lock Camera Player", false)
Main:AddSection({"Body"})
Toggle(Main, "Anti-Knockback", "BETA", false)
Toggle(Main, "Anti-Stun", "BETA", false)
Toggle(Main, "Anti-Busy", "BETA", false)
local Farming = Window:MakeTab({"Farming", "rbxassetid://15623956340"})
Farming:AddSection({"Player"})
Toggle(Farming, "Auto Void", "", false)
Toggle(Farming, "Auto Block", "", false)
Toggle(Farming, "Anti-Slow", "", false)
Farming:AddSection({"Character"})
Dropdown(Farming, "Choose Equip Character", "", {"Bald","Hunter","Cyborg","Ninja","Batter","Blade","Esper","Purple"}, "Bald")
Toggle(Farming, "Equip Character", "", false)
Farming:AddSection({"Safe Mode"})
Silder(Farming, "Health", 0, 100, 50)
Silder(Farming, "Until Health To back", 0, 100, 70)
Toggle(Farming, "Auto To Safe Mode At Health", "", false)
local Killer = Window:MakeTab({"Killer", "rbxassetid://16279627995"})
Toggle(Killer, "Auto Kill", "", false)
Toggle(Killer, "Auto Play To Kill", "", false)
Killer:AddSection({"Player"})
Dropdown(Killer, "Select Player", "", getgenv().TablePlayer, "")
Toggle(Killer, "Auto Kill Player", "", false)
Toggle(Killer, "Auto Play To Kill Player", "", false)
Toggle(Killer, "Teleport Player", "", false)
Toggle(Killer, "Spectate Player", "", false)
Killer:AddSection({"Misc"})
Toggle(Killer, "Auto Dodge Attack", "", false)
local Misc = Window:MakeTab({"Misc", "mountain-snow"})
Misc:AddSection({"Server"})
Misc:AddButton({Name = "Server Hop",Callback = function()getgenv().Server("Hop")end})
Misc:AddButton({Name = "Server Hop [Low Player]",Callback = function()getgenv().Server("Hop1")end})
Misc:AddButton({Name = "Rejoin",Callback = function()getgenv().Server("Rejoin")end})
Misc:AddSection({"ESP"})
Toggle(Misc, "ESP Player", "", false)
Window:SelectTab(2)
return SpeedHubX
