loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()
local Library = loadstring(game:HttpGet("https://speedhubxv3-library.surge.sh"))() -- i dont care, you can use this library free :)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local index = ReplicatedStorage.common.packages._Index

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
Main:AddSection("Config")
Silder(Main, "Set Stamina Threshold", 0, getgenv().StaminaMax, 50)
Main:AddSection("Farming")
Dropdown(Main, "Select Gym", "", getgenv().TableGym, "frontsquat")
Toggle(Main, "Auto Train On Select Gym", "This Mean Auto Farm On Select Gym", false)
Main:AddSection("Auto")
Toggle(Main, "Auto Train", "This Mean Auto Clicker", false)
Toggle(Main, "Auto Load", "", false)
Toggle(Main, "Auto Treadmill", "", false)
Main:AddSection("Competition")
Toggle(Main, "Auto Join Competition", "Only Join Competition", false)
Toggle(Main, "Auto Win In Competition", "when you join then faster press space after you win", false)
Main:AddSection("Item")
Toggle(Main, "Auto Activate Item", "This will Activate your Item", false)
local Shop = Window:MakeTab({"Shop", "rbxassetid://6031265976"})
Dropdown(Shop, "Select Power-Ups", "", getgenv().TablePowerUPS, "")
Shop:AddButton({Name = "Buy",Callback = function()index["sleitnick_knit@1.5.1"].knit.Services.PowerUpsService.RF.Buy:InvokeServer(SpeedHubX["Select Power-Ups"])end})
Toggle(Shop, "Auto Roll Aura", "", false)
Toggle(Shop, "Auto Alter", "", false)
Toggle(Shop, "Auto Roll Pose", "", false)
Window:SelectTab(2)
return SpeedHubX
