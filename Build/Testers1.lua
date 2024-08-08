local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.5"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()

local Window = Library:Start({
  ["Name"] = "Speed Hub X | " .. Version,
  ["SaveFolder"] = "Speed Hub X"
})

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local TeleportService = game:GetService("TeleportService")

local Player = Players.LocalPlayer

local _setclipboard = setclipboard or function() end
local _env = getgenv and getgenv() or {}

local SpeedHubX = {}

local Funcs = {} do
  function Funcs:AddToggle(Section, Name, Content, Default)
    return Section:Toggle({
      ["Title"] = Name,
      ["Content"] = Content,
      ["Default"] = Default,
      ["Callback"] = function(Value)
        SpeedHubX[Name] = Value
      end,
      ["Flag"] = "SPD/Toggle/" .. tostring(Name)
    })
  end

  function Funcs:AddDropdown(Section, Name, Multi, Options, Default)
    return Section:Dropdown({
      ["Title"] = Name,
      ["Multi"] = Multi,
      ["Options"] = Options,
      ["Default"] = Default,
      ["PlaceHolderText"] = "Select Options",
      ["Callback"] = function(Value)
        SpeedHubX[Name] = Value
      end
    })
  end

  function Funcs:AddSlider(Section, Name, Content, Min, Max, Increment, Default)
    return Section:Slider({
      ["Title"] = Name,
      ["Content"] = Content,
      ["Min"] = Min,
      ["Max"] = Max,
      ["Increment"] = Increment,
      ["Default"] = Default,
      ["Callback"] = function(Value)
        SpeedHubX[Name] = Value
      end
    })
  end

  function Funcs:AddTextbox(Section, Name, Content, Default, ClearText)
    return Section:TextInput({
      ["Title"] = Name,
      ["Content"] = Content,
      ["PlaceHolderText"] = "Enter your text here...",
      ["ClearTextOnFocus"] = ClearText,
      ["Default"] = Default,
      ["Callback"] = function(Value)
        SpeedHubX[Name] = Value
      end
    })
  end

  function Funcs:AddButton(Section, Name, Content, Callback)
    return Section:Button({
      ["Title"] = Name,
      ["Content"] = Content,
      ["Callback"] = Callback
    })  
  end
end

local _home = Window:MakeTab("Home") do
  local _info = _home:Section({["Title"] = "Information", ["Content"] = ""}) do
    Funcs:AddButton(_info, "Discord Invite", "Click to copy invite server", function()
      _setclipboard(Discord)
    end)

    _info:Seperator("Status")

    local _timeServer = _info:Paragraph({["Title"] = "Time Server", ["Content"] = "" })
    task.spawn(function()
      while task.wait(2) do
        _timeServer:Set({
          ["Title"] = "Time Server",
          ["Content"] = tostring(Lighting.TimeOfDay)
        })
      end
    end)
  end

  local _localplayer = _home:Section({["Title"] = "LocalPlayer", ["Content"] = ""}) do
    Funcs:AddDropdown(_localplayer, "Set WalkSpeed", false, {"100", "200", "300", "400", "500"}, {"300"})
    Funcs:AddToggle(_localplayer, "Enable WalkSpeed", "", false)
    Funcs:AddToggle(_localplayer, "Anti-Knockback", "", false)
    Funcs:AddToggle(_localplayer, "Anti-Busy", "", true)
  end

  local _config = _home:Section({["Title"] = "Config", ["Content"] = ""}) do
    Funcs:AddDropdown(_config, "Weapon Tool", false, {"Melee","Sword","Blox Fruit","Gun"}, {"Melee"})
    Funcs:AddDropdown(_config, "Farm Distance", false, {"10", "20", "30", "40", "50", "60"}, {"40"})
    Funcs:AddDropdown(_config, "Tween Speed", false, {"100", "200", "300", "400", "500"}, {"200"})
    Funcs:AddToggle(_config, "Bring Mob", "", true)
    Funcs:AddDropdown(_config, "Bring Mob Radius", false, {"100", "200", "300", "400", "500"}, {"200"})
    Funcs:AddToggle(_config, "Fast Attack", "", true)
    Funcs:AddDropdown(_config, "Fast Attack Delay", false, {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}, {"0"})
    Funcs:AddToggle(_config, "Hop if Admin or Staff", "", true)
    Funcs:AddToggle(_config, "Auto Dodge Skill", "", false)
    _config:Seperator("Active Race")
    Funcs:AddToggle(_config, "Auto Use Race V3", "", false)
    Funcs:AddToggle(_config, "Auto Use Race V4", "", false)
  end

  local _server = _home:Section({["Title"] = "Server Games", ["Content"] = ""}) do
    Funcs:AddDropdown(_server, "Count Player", false, {"1","2","3","4","5","6","7","8","9","10","11","12"}, {"5"})
    Funcs:AddButton(_server, "Hop Server On Count Player", "", function()
      _env.ServerHop("Singapore", tonumber(SpeedHubX["Count Player"]))
    end)
    Funcs:AddButton(_server, "Rejoin", "", function()
      TeleportService:Teleport(game.PlaceId, Player)
    end)
    _server:Seperator("Status Server")
    local _ServerCount = _server:Paragraph({["Title"] = "Server Count", ["Content"] = "" })
    task.spawn(function()
      while task.wait(2) do
        _ServerCount:Set({
          ["Title"] = "Server Count",
          ["Content"] = tostring(#Players:GetPlayers()) .. "/12"
        })
      end
    end)
  end
end

local _main = Window:MakeTab("Main") do
  local _farminglv = _main:Section({["Title"] = "Farming Level", ["Content"] = ""}) do

  end
end

return SpeedHubX
