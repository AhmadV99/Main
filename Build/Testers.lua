local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.5"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()

local Window = Library:Start({
  ["Name"] = "Speed Hub X | " .. Version,
  ["SaveFolder"] = "Speed Hub X | Anime Van"
})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local TeleportService = game:GetService("TeleportService")

local Networking = ReplicatedStorage:WaitForChild("Networking")

local Player = Players.LocalPlayer

local CodeList = {
  "DELAY",
  "RELEASE"
}

local _isfile = isfile or function(f)return f end
local _isfolder = isfolder or function(f)return f end
local _delfolder = delfolder or function(f)return f end
local _delfile = delfile or function(f)return f end

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
        if type(Value) == "table" then
          for _, v in pairs(Value) do
            SpeedHubX[Name] = v
          end
        end
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

  local _settings = _home:Section({["Title"] = "Settings", ["Content"] = ""}) do
    Funcs:AddButton(_settings, "Reset Script Saver", "", function()
      if _isfile("Speed Hub X | Anime Van") then
        _delfile("Speed Hub X | Anime Van")
      end
    end)
    Funcs:AddButton(_settings, "Rejoin", "", function()
      TeleportService:Teleport(game.PlaceId, Player)
    end)
  end
end

local _main = Window:MakeTab("Main") do
  local _Maps = _main:Section({["Title"] = "Maps", ["Content"] = ""}) do
    _Maps:Seperator("Config")
    Funcs:AddDropdown(_Maps, "Choose Map", false, {"Planet Namak", "Send Village", "Double Dungean"}, {"Planet Namak"})
    Funcs:AddDropdown(_Maps, "Choose Act Number", false, {"1", "2", "3", "4", "5", "6", "Infinite"}, {"1"})
    Funcs:AddDropdown(_Maps, "Choose Mode", false, {"Normal", "Nightmare"}, {"Normal"})
    Funcs:AddToggle(_Maps, "Allow Friends", "", false)
    _Maps:Seperator("Join")
    Funcs:AddToggle(_Maps, "Auto Join Maps", "", false)
  end
  local _Game = _main:Section({["Title"] = "Game", ["Content"] = ""}) do
    Funcs:AddToggle(_Game, "Auto Return To Lobby", "", false)
    Funcs:AddToggle(_Game, "Auto Click Next", "", false)
    Funcs:AddToggle(_Game, "Auto Click Retry", "", false)
  end
  local _Unit = _main:Section({["Title"] = "Unit", ["Content"] = ""}) do
    _Unit:Seperator("Config")
    local UpdateCount = Funcs:AddDropdown(_Unit, "Select Unit Count", false, {#Workspace:FindFirstChild("Units"):GetChildren(), "All"}, {"1"})
    Funcs:AddButton(_Unit, "Refersh Select Unit Count", "", function()
      UpdateCount:Clear()UpdateCount:Refresh({#Workspace:FindFirstChild("Units"):GetChildren(), "All"}, {"1"})
      Funcs:AddDropdown(_Unit, "Choose Upgrade Or Sell", false, {"Upgrade", "Sell"}, {"Sell"})
      Funcs:AddDropdown(_Unit, "Delay To Click", false, {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}, {"0"})
    end)
    _Unit:Seperator("Unit")
    Funcs:AddToggle(_Game, "Auto Click Unit", "", false)
  end
  local _Summon = _main:Section({["Title"] = "Summon", ["Content"] = ""}) do
    Funcs:AddToggle(_Summon, "Auto Click Summon X1", "", false)
    Funcs:AddToggle(_Summon, "Auto Click Summon X10", "", false)
  end
  local _RCode = _main:Section({["Title"] = "Redeem Code", ["Content"] = ""}) do
    Funcs:AddButton(_RCode, "Redeem Code", "", function()
      for _, Code in next, CodeList do
        Networking.CodesEvent:FireServer(Code)
      end
    end)
  end
end

return SpeedHubX
