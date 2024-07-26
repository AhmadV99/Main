loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.lua"))()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local _PlaceID = game.PlaceId

local Player, Remotes, CommF_ = Players.LocalPlayer, ReplicatedStorage.Remotes, ReplicatedStorage.Remotes.CommF_

local __env = getgenv and getgenv() or {}

local World = {
  [1] = _PlaceID == 2753915549,
  [2] = _PlaceID == 4442272183,
  [3] = _PlaceID == 7449423635
}

local _hookfunc1 = hookfunction or hookfunc or (function() end)
local _require1 = require or (function() end)

task.spawn(function() -- Remove Effect
  local Container = ReplicatedStorage:WaitForChild("Effect"):WaitForChild("Container")
  local CameraShaker = _require1(ReplicatedStorage.Util.CameraShaker)
  local Death = _require1(Container:FindFirstChild("Death"))
  local Respawn = _require1(Container:FindFirstChild("Respawn"))
  local DisplayNPC = _require1(ReplicatedStorage:FindFirstChild("GuideModule")).ChangeDisplayedNPC
  _hookfunc1(Death, function() return nil end)
  _hookfunc1(Respawn, function() return nil end)
  _hookfunc1(DisplayNPC, function() return nil end)
  CameraShaker:Stop()
end)

local Window = Library:MakeWindow({
  Title = "Speed Hub X | " .. Version,
  SaveFolder = "Speed Hub X"
})

Window:AddMinimizeButton({
  Button = {Image = "rbxassetid://16022917595"},
  Corner = {CornerRadius = UDim.new(0, 5)}
})

local Tabs = {
  H = Window:MakeTab({"Home", "scan-face"}),
  C = Window:MakeTab({"Config", "rbxassetid://18361516966"}),
  M = Window:MakeTab({"Main", "home"}),
}

local Func = {} do
  Func.Toggle = function(Tab, Name, Desc, Default)
    return Tab:AddToggle({
      Name = Name,
      Description = Desc or "",
      Default = Default,
      Callback = function(Value) __env[Name] = Value end,
      Flag = "SpeedHubX/Toggle/" .. tostring(Name)
    })
  end
  
  Func.Dropdown = function(Tab, Name, Desc, Option, Default)
    return Tab:AddDropdown({
      Name = Name,
      Description = Desc or "",
      Options = Option,
      Default = Default,
      Callback = function(Value) __env[Name] = Value end,
      Flag = "SpeedHubX/Dropdown/" .. tostring(Name)
    })
  end

  Func.Slider = function(Tab, Name, Min, Max, Default)
    return Tab:AddSlider({
      Name = Name,
      Min = Min,
      Max = Max,
      Default = Default,
      Callback = function(Value) __env[Name] = Value end,
      Flag = "SpeedHubX/Slider/" .. tostring(Name)
    })
  end

  Func.Button = function(Tab, Name, Description, CallBacks)
    return Tab:AddButton({
      Name = Name,
      Description = Description, 
      Callback = CallBacks or function(Value) __env[Name] = Value end
    })
  end

  Func.TextBox = function(Tab, Name, Description, Default)
    return Tab:AddTextBox({
      Name = Name,
      Description = Description,
      Default = Default,
      Callback = function(Value) __env[Name] = Value end,
      Flag = "SpeedHubX/TextBox/" .. tostring(Name)
    })
  end
end

local __HomeT = Tabs.H do
  __HomeT:AddDiscordInvite({
    Name = "Speed Hub X | Official Server",
    Logo = "rbxassetid://16022917595",
    Invite = Discord
  })

  __HomeT:AddSection("- [ Local Player ] -")

  Func.Slider(__HomeT, "Set WalkSpeed", 0, 500, 300)
  Func.Toggle(__HomeT, "Enable WalkSpeed", "This Can Set Walk Speed!", false)
end

local __ConfigT = Tabs.C do
  Func.Dropdown(__ConfigT, "Weapon Tool", "Weapon + Equip = Equipped Weapon", {"Melee","Sword","Blox Fruit","Gun"}, "Melee")
  Func.Slider(__ConfigT, "Tween Speed", 0, 500, 200)
  Func.Slider(__ConfigT, "Farm Distance", 0, 100, 40)
  Func.Slider(__ConfigT, "Bring Mob Radius", 0, 500, 200)
  Func.Toggle(__ConfigT, "Bring Mob", "This Can Bring Mob 5+ or 6+ Each", true)
  Func.Toggle(__ConfigT, "Fast Attack", "This Fast Attack Can Attack a Mob in Fast", true)
  Func.Slider(__ConfigT, "Fast Attack Delay", 0, 20, 0)
  Func.Toggle(__ConfigT, "Hop if Admin or Staff", "", true)
  Func.Toggle(__ConfigT, "Auto Dodge Mob Skill", "", false)
  __ConfigT:AddSection("- [ Race ] -")
  Func.Toggle(__ConfigT, "Auto Use Race V3", "", false)
  Func.Toggle(__ConfigT, "Auto Use Race V4", "", false)
  __ConfigT:AddSection("- [ Body ] -")
  Func.Toggle(__ConfigT, "Anti-Knockback", "", false)
end

local __MainT = Tabs.M do
  __MainT:AddSection("- [ Farming ] -")
  Func.Toggle(__MainT, "Auto Farm Level", "This Can Farm Level!", false)
  Func.Toggle(__MainT, "Auto Farm Nearest", "This Can Attack Nearest Mob!", false)

  if World[3] then
    Func.Toggle(__MainT, "Auto Pirates Sea", "This Can Attack Rip Indra Or Something!", false)
  elseif World[2] then
    Func.Toggle(__MainT, "Auto Factory", "This Can Attack Core!", false)
  end

  __MainT:AddSection("- [ Farming Mastery ] -")
  Func.Dropdown(__MainT, "Choose Mastery Mode", "", {"Level","Bone","Cake Prince","Nearest"}, "Level")
  Func.Dropdown(__MainT, "Choose Mastery Tool", "", {"Blox Fruit","Sword","Gun"}, "Blox Fruit")
  Func.Toggle(__MainT, "Farm Mastery", "", false)
end
Window:SelectTab(Tabs.H)
