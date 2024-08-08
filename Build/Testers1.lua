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
local Enemies = workspace:WaitForChild("Enemies")

local _setclipboard = setclipboard or function() end
local _env = getgenv and getgenv() or {}

local Sea = {
  [1] = game.PlaceId == 2753915549,
  [2] = game.PlaceId == 4442272183,
  [3] = game.PlaceId == 7449423635
}

_env.TableBosses = function()
  local BossTable = {}
  
  local function GetBoss(Objects)
    for _, Boss in ipairs(Objects) do
      local Humanoid = Boss:FindFirstChildOfClass("Humanoid")
      if Humanoid and Humanoid.DisplayName:find("Boss") then
        table.insert(BossTable, Boss.Name)
      end
    end
  end

  GetBoss(ReplicatedStorage:GetDescendants())
  GetBoss(Enemies:GetDescendants())

  return BossTable
end

if Sea[1] then
  _env.MaterialList = {"Angel Wings", "Leather + Scrap Metal", "Magma Ore", "Fish Tail"}
elseif Sea[2] then
  _env.MaterialList = {"Leather + Scrap Metal", "Magma Ore", "Mystic Droplet", "Radioactive Material", "Vampire Fang"}
elseif Sea[3] then
  _env.MaterialList = {"Leather + Scrap Metal", "Fish Tail", "Gunpowder", "Mini Tusk", "Conjured Cocoa", "Dragon Scale"}
end


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
    _config:Seperator("Weapon")
    Funcs:AddDropdown(_config, "Weapon Tool", false, {"Melee","Sword","Blox Fruit","Gun"}, {"Melee"})
    _config:Seperator("Tween/Distance")
    Funcs:AddDropdown(_config, "Farm Distance", false, {"10", "20", "30", "40", "50", "60"}, {"40"})
    Funcs:AddDropdown(_config, "Tween Speed", false, {"100", "200", "300", "400", "500"}, {"200"})
    _config:Seperator("Bring Mob")
    Funcs:AddToggle(_config, "Bring Mob", "", true)
    Funcs:AddDropdown(_config, "Bring Mob Radius", false, {"100", "200", "300", "400", "500"}, {"200"})
    _config:Seperator("Fast Attack")
    Funcs:AddToggle(_config, "Fast Attack", "", true)
    Funcs:AddDropdown(_config, "Fast Attack Delay", false, {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}, {"0"})
    _config:Seperator("Other")
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
    _farminglv:Seperator("Config Quest")
    Funcs:AddToggle(_farminglv, "No Quest", "", false)
    Funcs:AddToggle(_farminglv, "Take Quest", "", false)
    _farminglv:Seperator("Farming")
    Funcs:AddToggle(_farminglv, "Auto Farm Level", "", false)
  end
  local _farmingnear = _main:Section({["Title"] = "Farming Neareast Mob", ["Content"] = ""}) do
    _farmingnear:Seperator("Config Neareast")
    Funcs:AddDropdown(_farmingnear, "Neareast Range", false, {"1000","2000","3000","infinite"}, {"2000"})
    _farmingnear:Seperator("Farming")
    Funcs:AddToggle(_farmingnear, "Auto Farm Neareast", "", false)
  end
  local _farmingmastery = _main:Section({["Title"] = "Farming Mastery", ["Content"] = ""}) do
    _farmingmastery:Seperator("Config Mastery")
    Funcs:AddDropdown(_farmingmastery, "Choose Mastery Mode", false, {"Level","Bone","Cake Prince","Nearest"}, {"Level"})
    Funcs:AddDropdown(_farmingmastery, "Choose Mastery Tool", false, {"Blox Fruit", "Sword", "Gun"}, {"Blox Fruit"})
    Funcs:AddDropdown(_farmingmastery, "Mastery Health", false, {"10", "20", "25", "30", "45", "50", "60", "70", "75", "85", "95"}, {"45"})
    Funcs:AddDropdown(_farmingmastery, "Skill", true, {"Z", "X", "C", "V", "F"}, {"Z", "X", "C", "V"})
    _farmingmastery:Seperator("Farming")
    Funcs:AddToggle(_farmingmastery, "Auto Farm Mastery", "", false)
  end
  local _farmingC = _main:Section({["Title"] = "Farming/Collect Chest", ["Content"] = ""}) do
    _farmingC:Seperator("Config Chest")
    Funcs:AddDropdown(_farmingC, "Choose Chest Area", false, {"Mirage Island", "Island Other"}, {"Island Other"})
    Funcs:AddToggle(_farmingC, "Auto Hop if Chest doesn't Spawned", "", true)
    _farmingC:Seperator("Collect Chest")
    Funcs:AddToggle(_farmingC, "Auto Collect Chest", "", false)
    _farmingC:Seperator("Farming Other")
    if Sea[2] then
      Funcs:AddToggle(_farmingC, "Auto Factory", "", false)
    elseif Sea[3] then
      Funcs:AddToggle(_farmingC, "Auto Pirates Sea", "", false)
    end
  end
  local _farmingboss = _main:Section({["Title"] = "Farming Bosses", ["Content"] = ""}) do
    _farmingboss:Seperator("Config Boss")
    Funcs:AddToggle(_farmingboss, "No Quest Boss", "", false)
    Funcs:AddToggle(_farmingboss, "Take Quest Boss", "", false)
    Funcs:AddDropdown(_farmingboss, "Select Boss", false, {_env.TableBosses()}, {""})
    _farmingboss:Seperator("Farming Boss")
    Funcs:AddToggle(_farmingboss, "Auto Attack Boss", "", false)
    Funcs:AddToggle(_farmingboss, "Auto Attack Boss All", "", false)
  end
  local _farmingmaterial = _main:Section({["Title"] = "Farming Material", ["Content"] = ""}) do
    _farmingmaterial:Seperator("Config Material")
    Funcs:AddDropdown(_farmingmaterial, "Select Material", false, {_env.MaterialList}, {""})
    _farmingmaterial:Seperator("Farming Material")
    Funcs:AddToggle(_farmingmaterial, "Auto Attack Material", "", false)
  end
end

return SpeedHubX
