local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.5"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()

local Window = Library:Start({
  ["Name"] = "Speed Hub X | " .. Version,
  ["SaveFolder"] = "Speed Hub X"
})

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")

local Player = Players.LocalPlayer

local _setclipboard = setclipboard or function() end

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

  function Funcs:AddTextbox(Section, Name, Content, ClearText)
    return Section:TextInput({
      ["Title"] = Name,
      ["Content"] = Content,
      ["PlaceHolderText"] = "Enter your text here...",
      ["ClearTextOnFocus"] = ClearText,
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
    Funcs:AddTextbox(_localplayer, "Set WalkSpeed", "", false)
    Funcs:AddToggle(_localplayer, "Enable WalkSpeed", "", false)
  end

  local _tweenconfig = _home:Section({["Title"] = "Tween Config", ["Content"] = ""}) do
    Funcs:AddDropdown(_tweenconfig, "Choose Tween Mode", false, {"Smooth", "Normal"}, {"Smooth"})
    Funcs:AddTextbox(_tweenconfig, "Tween Speed", "", false)
  end
end

return SpeedHubX
