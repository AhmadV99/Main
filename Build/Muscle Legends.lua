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
Silder(Home, "Set Gravity", 0, 100000, 1000)
Silder(Home, "Set Size", 0, 100, 2)
Toggle(Home, "Enable WalkSpeed", "This Can Set Walk Speed!", false)
Toggle(Home, "Enable JumpPower", "This Can Set JumpPower!", false)
Toggle(Home, "Enable Gravity", "This Can Set Gravity!", false)
Toggle(Home, "Enable Size", "This Can Set Size!", false)

return SpeedHubX
