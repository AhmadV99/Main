loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()
local Library = loadstring(game:HttpGet("https://speedhubxv3-library.surge.sh"))() -- i dont care, you can use this library free :)
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
    end, Flag = "SpeedHubX/Toggle/"..Name})
    return Ver
end
local function Dropdown(Tab, Name, Desc, Option, Default)
  local Ver = Tab:AddDropdown({
    Name = Name,Description = Desc or "",Options = Option,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end, Flag = "SpeedHubX/Dropdown/"..Name})
    return Ver
end
local function Silder(Tab, Name, Min, Max, Default)
  local Ver = Tab:AddSlider({
    Name = Name,Min = Min,Max = Max,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end, Flag = "SpeedHubX/Slider/"..Name})
    return Ver
end

Home:AddSection({"Local Player"})
Silder(Home, "Set WalkSpeed", 0, 500, 300)
Toggle(Home, "Enable WalkSpeed", "This Can Set Walk Speed!", false)
local Main = Window:MakeTab({"Main", "home"})
Main:AddSection({"Config"})
Dropdown(Main, "Weapon Tool", "Weapon + Equip = Equiped Weapon", {"Melee","Sword","Blox Fruit","Gun"}, "Melee")
Silder(Main, "Tween Speed", 0, 500, 200)
Silder(Main, "Farm Distance", 0, 100, 40)
Silder(Main, "Bring Mob Radius", 0, 500, 200)
Toggle(Main, "Bring Mob", "This Can Bring Mob 5+ or 6+ Each", true)
local Attack = Toggle(Main, "Fast Attack", "This Fast Attack Can Attack a Mob in Fast", true)
Silder(Main, "Fast Attack Delay", 0, 20, 1)
Toggle(Main, "Hop if Admin or Staff", "", true)
Main:AddSection("Farming")
Toggle(Main, "Auto Farm Level", "This Can Farm Level!", false)
Toggle(Main, "Auto Farm Nearest", "This Can Attack Nearest Mob!", false)

return SpeedHubX
