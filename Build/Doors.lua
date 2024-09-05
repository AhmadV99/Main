local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.5"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()

local Window = Library:Start({
  ["Name"] = "Speed Hub X | " .. Version,
  ["SaveFolder"] = "Speed Hub X"
})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local TeleportService = game:GetService("TeleportService")

local Player = Players.LocalPlayer

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

  local _localplayer = _home:Section({["Title"] = "LocalPlayer", ["Content"] = ""}) do
    Funcs:AddDropdown(_localplayer, "Set Walk Speed", false, {"100", "200", "300", "400", "500"}, {"300"})
    Funcs:AddToggle(_localplayer, "Enable Walk Speed", "", false)
    Funcs:AddButton(_localplayer, "Destroy JumpScare", "", function()
      local JS = ReplicatedStorage:WaitForChild("Bricks"):WaitForChild("Jumpscare")
      if JS then
        JS:Destroy()
      end
    end)
    Funcs:AddButton(_localplayer, "Full Brightness", "", function()
      Lighting.Ambient = Color3.new(1, 1, 1)
      Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
      Lighting.ColorShift_Top = Color3.new(1, 1, 1)
      Lighting.LightingChanged:Connect(function()
        Lighting.Ambient = Color3.new(1, 1, 1)
        Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
        Lighting.ColorShift_Top = Color3.new(1, 1, 1)
      end)
    end)
  end

  local _settings = _home:Section({["Title"] = "Settings", ["Content"] = ""}) do
    Funcs:AddButton(_settings, "Reset Script Saver", "", function()
      if _isfile("Speed Hub X") then
        _delfile("Speed Hub X")
      end
    end)
    Funcs:AddButton(_settings, "Rejoin", "", function()
      TeleportService:Teleport(game.PlaceId, Player)
    end)
  end
end

local _main = Window:MakeTab("Main") do
  local _farmingdoors = _main:Section({["Title"] = "Farming Doors", ["Content"] = ""}) do
    Funcs:AddToggle(_farmingdoors, "Auto Skip Doors Level", "", false)
    Funcs:AddToggle(_farmingdoors, "Auto Play To Skip Doors Level", "", false)
    Funcs:AddToggle(_farmingdoors, "Auto Open Doors", "", false)
  end
  local _configdoors = _main:Section({["Title"] = "Doors Config", ["Content"] = ""}) do
    Funcs:AddToggle(_configdoors, "Get Faster Interact", "", false)
    Funcs:AddButton(_configdoors, "Destroy Doors / Fake Doors", "", function()
      for _, part in next, game:GetDescendants() do
        if part.Name == "Door" then
          part:Destroy()
        elseif part.Name == "FakeDoor" then
          part:Destroy()
        end
      end
    end)
  end
  local _collector = _main:Section({["Title"] = "Collecter / Other", ["Content"] = ""}) do
    Funcs:AddToggle(_collector, "Auto Collect Key", "", false)
    _collector:Seperator("Anti")
    Funcs:AddToggle(_collector, "Anti-Screech", "", false)
    Funcs:AddToggle(_collector, "Anti-A90", "", false)
    Funcs:AddToggle(_collector, "Anti-Eyes", "", false)
    Funcs:AddToggle(_collector, "Anti-Dupe", "", false)
    Funcs:AddToggle(_collector, "Anti-Glitch", "", false)
    Funcs:AddToggle(_collector, "Anti-Seek", "", false)
    Funcs:AddToggle(_collector, "Anti-Halt", "", false)
    Funcs:AddToggle(_collector, "Anti-Snare", "", false)
    Funcs:AddToggle(_collector, "Anti-Obstructions", "", false)
    _collector:Seperator("Heartbeat")
    Funcs:AddToggle(_collector, "Auto Get Win Heartbeat", "", false)
    _collector:Seperator("Monster")
    Funcs:AddToggle(_collector, "Auto Dodge Monster", "", false)
    Funcs:AddToggle(_collector, "Sending Notification if Monster Is Spawned", "", false)
  end

  local _esp = _main:Section({["Title"] = "ESP", ["Content"] = ""}) do
    Funcs:AddToggle(_esp, "ESP Doors", false)
    Funcs:AddToggle(_esp, "ESP Lever", false)
    Funcs:AddToggle(_esp, "ESP Key", false)
    Funcs:AddToggle(_esp, "ESP Fuse", false)
    Funcs:AddToggle(_esp, "ESP Chest", false)
    Funcs:AddToggle(_esp, "ESP Locker", false)
  end
end

return SpeedHubX
