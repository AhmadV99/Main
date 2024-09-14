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
task.spawn(function()
    if game.Workspace:FindFirstChild("RobloxForwardPortals") then
        game.Workspace.RobloxForwardPortals:Destroy()
    end
end)
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
Silder(Home, "Set Size", 0, 100, 2)
Toggle(Home, "Enable WalkSpeed", "This Can Set Walk Speed!", false)
Toggle(Home, "Enable JumpPower", "This Can Set JumpPower!", false)
Toggle(Home, "Enable Size", "This Can Set Size!", false)
local Main = Window:MakeTab({"Main", "home"})
Main:AddSection({"Farming Gym"})
Dropdown(Main, "Select City Gym", "", {"Frost","Mystical","Eternal","Legends","Muscle King"}, "Frost")
local UpdateGym = Dropdown(Main, "Select Gym", "", {""}, "")
task.spawn(function()
  while task.wait(1) do
    pcall(function()
      if SpeedHubX["Select City Gym"] == "Frost" then
        UpdateGym:Set({"Lift", "Press", "Squat", "Punch"})
      elseif SpeedHubX["Select City Gym"] == "Mystical" then
        UpdateGym:Set({"Pullup", "Throw", "Press", "Punch"})
      elseif SpeedHubX["Select City Gym"] == "Eternal" then
        UpdateGym:Set({"Press", "Punch"})
      elseif SpeedHubX["Select City Gym"] == "Legends" then
        UpdateGym:Set({"Pullup", "Squat", "Lift", "Punch"})
      elseif SpeedHubX["Select City Gym"] == "Muscle King" then
        UpdateGym:Set({"Lift", "Squat", "Bench", "Punch"})
      end
    end)
  end
end)
Toggle(Main, "Auto Farm On Select Gym", "", false)
Main:AddSection({"Farming General"})
Toggle(Main, "Auto Weight", "", false)
Toggle(Main, "Auto Pushups", "", false)
Toggle(Main, "Auto Situps", "", false)
Toggle(Main, "Auto Punch", "", false)
Main:AddSection({"Misc"})
Toggle(Main, "Unlock Fast Punch", "", false)
Toggle(Main, "Lock Position", "", false)
if game.Players.LocalPlayer.UserId == 2608992754 or game.Players.LocalPlayer.UserId == 1724621193 then
  Toggle(Main, "Anti-Knockback", "", false)
end
Toggle(Main, "Anti-Rebirths", "", false)
Toggle(Main, "Anti-Stun", "BETA", false)
Toggle(Main, "Anti-Busy", "BETA", false)
Toggle(Main, "Walk On Water", "", false)
Toggle(Main, "Disable Punch Animation", "", false)
Main:AddSection({"Brawl"})
Toggle(Main, "Auto Join Brawl", "", false)
Toggle(Main, "Auto Win Brawl", "", false)
local Rebirths = Window:MakeTab({"Rebirths", "refresh"})
AddTextFunc(Rebirths)
Dropdown(Rebirths, "Choose At Stopping Rebirths Number", "", {"Leave", "Crash", "Kick", "Rejoin", "Off [Loading Fix]"}, "Kick")
Toggle(Rebirths, "Auto Rebirths [Stopping Rebirths Number]", "", false)
Toggle(Rebirths, "Auto Rebirths", "This Auto Rebirths Without Stopping Rebirths Number", false)
local Killer = Window:MakeTab({"Killer", "rbxassetid://16279627995"})
Dropdown(Killer, "Choose Kills Mode", "", {"Bring Player And Teleport Part", "Bring Player", "No Bring Player And Teleport Part", "No Bring"}, "Bring Player And Teleport Part")
local update1 = Dropdown(Killer, "Select Whitelist Player", "This Mean Won't Kill Player ", getgenv().TablePlayer, "")
Toggle(Killer, "Auto Kills", "", false)
Killer:AddSection({"Player"})
local update = Dropdown(Killer, "Select Player", "", getgenv().TablePlayer, "")
Killer:AddButton({Name = "Refersh Player", Description = "", Callback = function()
  update:Set(getgenv().TablePlayerR)
  update1:Set(getgenv().TablePlayerR)
end})
Toggle(Killer, "Auto Kill Player", "", false)
Toggle(Killer, "Teleport Player", "", false)
Toggle(Killer, "Spectate Player", "", false)
local Crystal = Window:MakeTab({"Crystal", "gem"})
Dropdown(Crystal, "Select Crystal", "", {"Blue Crystal", "Green Crystal", "Frost Crystal", "Mythical Crystal", "Inferno Crystal", "Legends Crystal", "Dark Nebula Crystal", "Muscle Elite Crystal", "Galaxy Oracle Crystal", "Battle Legends Crystal", "Sky Eclipse Crystal"}, "")
Toggle(Crystal, "Auto Open Crystal", "", false)
local Stats = Window:MakeTab({"Stats", "plus-circle"})
AddStatusMain(Stats)
local Glitcher = Window:MakeTab({"Glitcher", "rbxassetid://15623956340"})
Glitcher:AddSection({"Config Pets"})
Dropdown(Glitcher, "Choose Pets (Only Unique)", "", {"Darkstar Hunter", "Gold Warrior", "Cybernetic Showdown Dragon", "Flaming Hedgehog"}, "Flaming Hedgehog")
Dropdown(Glitcher, "How Many Pets do You Carry", "", {"1", "2", "3", "4", "5"}, "2")
Glitcher:AddSection({"Config Stopping Strength Number"})
AddTextFunc1(Glitcher)
Dropdown(Glitcher, "Choose At Stopping Strength Number", "", {"Go To Farm Select Gym", "Go To Farm Rebirths On Stopping"}, "Go To Farm Select Gym")
Glitcher:AddSection({"Config Farm"})
Dropdown(Glitcher, "Choose Rock Map", "", {"Frost","Mystical","Eternal","Legends","Muscle King"}, "Muscle King")
Toggle(Glitcher, "Auto Farm On Choose Rock Map", "", false)
local Misc = Window:MakeTab({"Misc", "rbxassetid://15877464662"})
Misc:AddSection({"Server"})
Misc:AddButton({Name = "Server Hop",Callback = function()getgenv().Server("Hop")end})
Misc:AddButton({Name = "Server Hop [Low Player]",Callback = function()getgenv().Server("Hop1")end})
Misc:AddButton({Name = "Rejoin",Callback = function()getgenv().Server("Rejoin")end})
Misc:AddSection("Misc")
Toggle(Misc, "Infinits Jump", "", false)
Toggle(Misc, "No Clip", "", false)
Misc:AddSection("ESP")
Toggle(Misc, "ESP Player", "", false)
Window:SelectTab(2)
return SpeedHubX
