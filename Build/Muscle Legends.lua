loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()
local Success, Error = pcall(function()Library = loadstring(game:HttpGet("https://speedhubxv3-library.surge.sh"))()end)
if not Success then Library = loadstring(game:HttpGet("https://speedhubxv3-library.surge.sh"))()end
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
local function Textbox(Tab, Name, Desc, Default)
  local Ver = Tab:AddTextBox({
    Name = Name,Description = Desc,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end
  })
  return Ver
end
Home:AddSection({"Local Player"})
Silder(Home, "Set WalkSpeed", 0, 100000, 1000)
Silder(Home, "Set JumpPower", 0, 100000, 1000)
Silder(Home, "Set Size", 0, 100, 2)
Toggle(Home, "Enable WalkSpeed", "This Can Set Walk Speed!", false)
Toggle(Home, "Enable JumpPower", "This Can Set JumpPower!", false)
Toggle(Home, "Enable Size", "This Can Set Size!", false)
local Main = Window:MakeTab({"Main", "home"})
Main:AddSection({"Farming Gym"})
Dropdown(Main, "Select City Gym", "", {"Frost","Mystical","Eternal","Legends","Muscle King"}, "Frost")
getgenv().UpdateGym = Dropdown(Main, "Select Gym", "", getgenv().TableGym, "")
Toggle(Main, "Auto Farm On Select Gym", "", false)
Main:AddSection({"Farming General"})
Toggle(Main, "Auto Weight", "", false)
Toggle(Main, "Auto Pushups", "", false)
Toggle(Main, "Auto Situps", "", false)
Toggle(Main, "Auto Punch", "", false)
Main:AddSection({"Misc"})
Toggle(Main, "Unlock Fast Punch", "", false)
Toggle(Main, "Lock Position", "", false)
Toggle(Main, "Anti-Knockback", "", false)
Toggle(Main, "Anti-Rebirths", "", false)
Toggle(Main, "Walk On Water", "", false)
Toggle(Main, "Disable Punch Animation", "", false)
Toggle(Main, "Invisibility", "", false)
Main:AddSection({"Brawl"})
Toggle(Main, "Auto Join Brawl", "", false)
Toggle(Main, "Auto Win Brawl", "", false)
local Rebirths = Window:MakeTab({"Rebirths", "refresh"})
Textbox(Rebirths, "Stopping Rebirths Number", "", "")
Dropdown(Rebirths, "Choose At Stopping Rebirths Number", "", {"Leave", "Crash", "Kick", "Rejoin"}, "Kick")
Toggle(Rebirths, "Auto Rebirths [Stopping Rebirths Number]", "", false)
Toggle(Rebirths, "Auto Rebirths", "This Auto Rebirths Without Stopping Rebirths Number", false)
local Killer = Window:MakeTab({"Killer", "rbxassetid://16279627995"})
Dropdown(Killer, "Choose Kills Mode", "", {"Bring Player And Teleport Part", "Bring Player", "No Bring Player And Teleport Part", "No Bring"}, "Bring Player And Teleport Part")
Textbox(Killer, "Stopping Kills Number", "", "")
Dropdown(Killer, "Choose At Stopping Kills Number", "", {"Leave", "Crash", "Kick", "Rejoin"}, "Kick")
Toggle(Killer, "Auto Kills [Stopping Kills Number]", "", false)
Toggle(Killer, "Auto Kills", "This Auto Kills Without Stopping Rebirths Number", false)
Killer:AddSection({"Player"})
local update = Dropdown(Killer, "Select Player", "", getgenv().TablePlayer, "")
Killer:AddButton({Name = "Refersh Player", Description = "", Callback = function()
  update:Set(getgenv().TablePlayerR)
end})
Toggle(Killer, "Auto Kill Player", "", false)
local Crystal = Window:MakeTab({"Crystal", "gem"})
Dropdown(Crystal, "Select Crystal", "", {"Blue Crystal", "Green Crystal", "Frost Crystal", "Mythical Crystal", "Inferno Crystal", "Legends Crystal", "Dark Nebula Crystal", "Muscle Elite Crystal", "Galaxy Oracle Crystal", "Battle Legends Crystal", "Sky Eclipse Crystal"}, "")
Toggle(Crystal, "Auto Open Crystal", "", false)
return SpeedHubX
