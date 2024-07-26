loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.lua"))()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local _PlaceID = game.PlaceId

local Player, Remotes, CommF_ = Players.LocalPlayer, ReplicatedStorage:WaitForChild("Remotes"), Remotes:WaitForChild("CommF_")

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

local Func = {} do
  Func.Toggle = function(Tab, Name, Desc, Default, CallBacks)
    return Tab:AddToggle({
      Name = Name,
      Description = Desc or "",
      Default = Default,
      Callback = CallBacks or function(Value) __env[Name] = Value end,
      Flag = "SpeedHubX/Toggle/" .. Name
    })
  end
  
  Func.Dropdown = function(Tab, Name, Desc, Option, Default, CallBacks)
    return Tab:AddDropdown({
      Name = Name,
      Description = Desc or "",
      Options = Option,
      Default = Default,
      Callback = CallBacks or function(Value) __env[Name] = Value end,
      Flag = "SpeedHubX/Dropdown/" .. Name
    })
  end

  Func.Slider = function(Tab, Name, Min, Max, Default, CallBacks)
    return Tab:AddSlider({
      Name = Name,
      Min = Min,
      Max = Max,
      Default = Default,
      Callback = CallBacks or function(Value) __env[Name] = Value end,
      Flag = "SpeedHubX/Slider/" .. Name
    })
  end

  Func.Button = function(Tab, Name, Description, CallBacks)
    return Tab:AddButton({
      Name = Name,
      Description = Description, 
      Callback = CallBacks or function(Value) __env[Name] = Value end
    })
  end

  Func.TextBox = function(Tab, Name, Description, Default, Callbacks)
    return Tab:AddTextBox({
      Name = Name,
      Description = Description,
      Default = Default,
      Callback = CallBacks or function(Value) __env[Name] = Value end,
      Flag = "SpeedHubX/TextBox/" .. Name
    })
  end
end

local Window = Library:MakeWindow({
  Title = "Speed Hub X | " .. Version,
  SaveFolder = "Speed Hub X"
})

Window:AddMinimizeButton({
  Button = {Image = "rbxassetid://16022917595"},
  Corner = {CornerRadius = UDim.new(0, 5)}
})

local Tabs = {
  Home = Window:MakeTab({"Home", "scan-face"}),
  Main = Window:MakeTab({"Main", "home"}),
}

local __HomeT = Tabs.Home do
  __HomeT:AddDiscordInvite({
    Name = "Speed Hub X | Official Server",
    Logo = "rbxassetid://16022917595",
    Invite = Discord
  })

  __HomeT:AddSection({"- [ Local Player ] -"})

  Func.Slider(__HomeT, "Set WalkSpeed", 0, 500, 300)
  Func.Toggle(__HomeT, "Enable WalkSpeed", "This Can Set Walk Speed!", false)
end

local __MainT = Tabs.Main do
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
