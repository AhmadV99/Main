local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.5"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()

local Window = Library:Start({
  ["Name"] = "Speed Hub X | " .. Version,
  ["SaveFolder"] = "Speed Hub X"
})

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local TeleportService = game:GetService("TeleportService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local Enemies = Workspace:WaitForChild("Enemies")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_ = Remotes:WaitForChild("CommF_")
local Map = Workspace:WaitForChild("Map")
local WorldOrigin = Workspace:WaitForChild("_WorldOrigin")

local _setclipboard = setclipboard or (function()end)
local _hookfunction = hookfunction or hookfunc or (function()end)
local _require = require or (function()end)

local _env = getgenv and getgenv() or {}

local Sea = {
  [1] = game.PlaceId == 2753915549,
  [2] = game.PlaceId == 4442272183,
  [3] = game.PlaceId == 7449423635
}

task.spawn(function()
  local Container = ReplicatedStorage:WaitForChild("Effect"):WaitForChild("Container")

  local CameraShaker = _require(ReplicatedStorage.Util.CameraShaker)
  local Death = _require(Container:FindFirstChild("Death"))
  local Respawn = _require(Container:FindFirstChild("Respawn"))
  local DisplayNPC = _require(ReplicatedStorage:FindFirstChild("GuideModule")).ChangeDisplayedNPC

  _hookfunction(Death, function()return nil end)
  _hookfunction(Respawn, function()return nil end)
  _hookfunction(DisplayNPC, function()return nil end)
  CameraShaker:Stop()
end)

_env.BossesList = function()
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

_env.CheckMob = function(Value)
  local Boolen = false

  local function GetMob(Object)
    for _, Mob in ipairs(Object) do
      if table.find(Value, Mob.Name) then
        local HD = Mob:FindFirstChild("Humanoid")
        if HD and HD.Health > 0 then
          Boolen = true
          break 
        end
      end
    end
  end

  local children = ReplicatedStorage:GetChildren()
  if not Boolen then
    GetMob(children)
  end
  if not Boolen then
    children = Enemies:GetChildren()
    GetMob(children)
  end
  return Boolen
end

_env.VerifyMaterial = function(NameC)
  for _, Item in pairs(CommF_:InvokeServer("getInventory")) do
    if Item.Type == "Material" then
      if Item.Name == NameC then
        return Item.Count
      end
    end
  end
  return 0
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
    Funcs:AddDropdown(_config, "Tween Mode", false, {"Smooth","Normal"}, {"Smooth"})
    Funcs:AddDropdown(_config, "Tween Speed", false, {"100", "200", "300", "400", "500"}, {"200"})
    _config:Seperator("Bring Mob")
    Funcs:AddDropdown(_config, "Bring Mob Mode", false, {"Smooth","Extreme"}, {"Smooth"})
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

  local _stats = _home:Section({["Title"] = "Get Stats", ["Content"] = ""}) do
    _stats:Seperator("Config")
    Funcs:AddDropdown(_stats, "Point Stats", false, {"1", "5", "10", "15", "20", "25", "30", "35", "40", "50"}, {"1"})
    _stats:Seperator("Stats")
    Funcs:AddDropdown(_stats, "Choose Stats", true, {"Melee", "Defense", "Sword", "Gun", "Demon Fruit"}, {"Melee", "Defense", "Sword", "Gun"})
    Funcs:AddToggle(_stats, "Auto Stats On Choose Stats", "", false)
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
    local BossList = Funcs:AddDropdown(_farmingboss, "Select Boss", false, _env.BossesList(), {""})
    Funcs:AddButton(_farmingboss, "Refresh Boss", "", function()
      BossList:Clear()
      BossList:Refresh(_env.BossesList(), {""})
    end)
    _farmingboss:Seperator("Farming Boss")
    Funcs:AddToggle(_farmingboss, "Auto Attack Boss", "", false)
    Funcs:AddToggle(_farmingboss, "Auto Attack Boss All", "", false)
  end
  local _farmingmaterial = _main:Section({["Title"] = "Farming Material", ["Content"] = ""}) do
    _farmingmaterial:Seperator("Config Material")
    Funcs:AddDropdown(_farmingmaterial, "Select Material", false, _env.MaterialList, {""})
    _farmingmaterial:Seperator("Farming Material")
    Funcs:AddToggle(_farmingmaterial, "Auto Attack Material", "", false)
  end
end

local _questitem = Window:MakeTab("Item/Quest") do
  local _firstworld = _questitem:Section({["Title"] = "First World", ["Content"] = ""}) do
    _firstworld:Seperator("Farming Second World")
    Funcs:AddToggle(_firstworld, "Auto Second World", "Only Get Level 700 if Auto Sea Second!", false)
    _firstworld:Seperator("Item")
    Funcs:AddToggle(_firstworld, "Auto Unlock Saber", "Only Get Level 200 if Auto Unlock Saber!", false)
    Funcs:AddToggle(_firstworld, "Auto Pole", "This Can Get Pole Item!", false)
  end
  local _secondworld = _questitem:Section({["Title"] = "Second World", ["Content"] = ""}) do
    _secondworld:Seperator("Farming Third World")
    Funcs:AddToggle(_secondworld, "Auto Third World", "This Can Get Sea Third then Travel Third World!", false)
    _secondworld:Seperator("Get Sword Item")
    Funcs:AddDropdown(_secondworld, "Select Sword", false, {"Dragon Trident", "Gravity Cane", "Jitte", "Longsword", "Koko", "Midnight blade", "Rengoku"}, {""})
    Funcs:AddToggle(_secondworld, "Auto Get Sword On Select Sword", "", false)
    _secondworld:Seperator("Ectoplasm")
    Funcs:AddToggle(_secondworld, "Auto Ectoplasm", "", false)
    _secondworld:Seperator("Bartilo Quest")
    Funcs:AddToggle(_secondworld, "Auto Bartilo Quest", "", false)
    _secondworld:Seperator("Dark Beard")
    Funcs:AddToggle(_secondworld, "Auto Dark Beard", "", false)
    _secondworld:Seperator("Cursed Captain")
    Funcs:AddToggle(_secondworld, "Auto Cursed Captain", "", false)
    _secondworld:Seperator("Law")
    Funcs:AddToggle(_secondworld, "Auto Order Law", "", false)
  end
  local _thirdworld = _questitem:Section({["Title"] = "Third World", ["Content"] = ""}) do
    _thirdworld:Seperator("Get Sword Item")
    Funcs:AddDropdown(_thirdworld, "Select Sword ", false, {"Twin Hooks", "Buddy Sword", "Canvander", "Dark Dagger", "Fox Lamp", "Spikey Trident", "Yama", "Tushita", "Cursed Dual Katana", "Hallow Scythe"}, {""})
    Funcs:AddToggle(_thirdworld, "Auto Get Sword On Select Sword ", "", false)
    _thirdworld:Seperator("Get Gun Item")
    Funcs:AddDropdown(_thirdworld, "Select Gun", false, {"Serpent Bow", "Soul Guitar"}, {""})
    Funcs:AddToggle(_thirdworld, "Auto Get Gun On Select Gun", "", false)
    _thirdworld:Seperator("Farming Bones")
    local _BonesCount = _thirdworld:Paragraph({["Title"] = "Bones Total", ["Content"] = "" })
    task.spawn(function()
      while task.wait(2) do
        _BonesCount:Set({
          ["Title"] = "Bones Total",
          ["Content"] = _env.VerifyMaterial("Bones")
        })
      end
    end)
    Funcs:AddToggle(_thirdworld, "Auto Farm Bones", "", false)
    Funcs:AddToggle(_thirdworld, "Auto Trade Bones", "", false)
    _thirdworld:Seperator("Cake Prince")
    local _statusCKP = _thirdworld:Paragraph({["Title"] = "Cake Prince Status", ["Content"] = "" })
    task.spawn(function()
      while task.wait(2) do
        if _env.CheckMob({"Dough King"}) then
          _statusCKP:Set({
            ["Title"] = "Cake Prince Status",
            ["Content"] = "Dough King is Spawned"
          })
        elseif _env.CheckMob({"Cake Prince"}) then
          _statusCKP:Set({
            ["Title"] = "Cake Prince Status",
            ["Content"] = "Cake Prince is Spawned"
          })
        else
          _statusCKP:Set({
            ["Title"] = "Cake Prince Status",
            ["Content"] = string.gsub(tostring(CommF_:InvokeServer("CakePrinceSpawner", true)), "%D", "")
          })
        end
      end
    end)
    Funcs:AddToggle(_thirdworld, "Auto Cake Prince", "", false)
    Funcs:AddToggle(_thirdworld, "Auto Dough King", "", false)
    _thirdworld:Seperator("Rip Indra")
    Funcs:AddToggle(_thirdworld, "Auto Rip Indra", "", false)
    _thirdworld:Seperator("Elite Hunter")
    local _statusELH = _thirdworld:Paragraph({["Title"] = "Elite Hunter Status", ["Content"] = "" })
    local _statusELHP = _thirdworld:Paragraph({["Title"] = "Elite Hunter Progress", ["Content"] = "" })
    task.spawn(function()
      while task.wait(2) do
        if _env.CheckMob({"Diablo","Deandre","Urban"}) then
          _statusELH:Set({
            ["Title"] = "Elite Hunter Status",
            ["Content"] = "Elite Hunter is Spawned"
          })
        else
          _statusELH:Set({
            ["Title"] = "Elite Hunter Status",
            ["Content"] = "Elite Hunter is not Spawned"
          })
        end
      end
    end)
    task.spawn(function()
      while task.wait(2) do
        _statusELHP:Set({
          ["Title"] = "Elite Hunter Progress",
          ["Content"] = tostring(CommF_:InvokeServer("EliteHunter", "Progress"))
        })
      end
    end)
    Funcs:AddToggle(_thirdworld, "Auto Elite Hunter", "", false)
    _thirdworld:Seperator("Haki Color")
    Funcs:AddToggle(_thirdworld, "Auto Buy Haki Color", "", false)
    Funcs:AddToggle(_thirdworld, "Auto Rainbow Haki", "", false)
  end
  local _FightSyt = _questitem:Section({["Title"] = "Fighting Style", ["Content"] = ""}) do
    Funcs:AddToggle(_FightSyt, "Auto Death Step", "", false)
    Funcs:AddToggle(_FightSyt, "Auto Electric Claw", "", false)
    Funcs:AddToggle(_FightSyt, "Auto Sharkman Karate", "", false)
    Funcs:AddToggle(_FightSyt, "Auto Dragon Talon", "", false)
    Funcs:AddToggle(_FightSyt, "Auto Superhuman", "", false)
    Funcs:AddToggle(_FightSyt, "Auto God Human", "", false)
    Funcs:AddToggle(_FightSyt, "Auto Sanguine Art", "", false)
  end
  local _obsv = _questitem:Section({["Title"] = "Observation", ["Content"] = ""}) do
    Funcs:AddToggle(_obsv, "Auto Observation", "", false)
    Funcs:AddToggle(_obsv, "Auto Observation V2", "", false)
  end
end

local _seaevent = Window:MakeTab("Sea Event") do
  local _kitsune = _seaevent:Section({["Title"] = "Kitsune Island", ["Content"] = ""}) do 
    local _statusKIT = _kitsune:Paragraph({["Title"] = "Status Kitsune Island", ["Content"] = "" })
    local _statusNumAZ = _kitsune:Paragraph({["Title"] = "Total Azura Ember", ["Content"] = "" })
    task.spawn(function()
      while task.wait(2) do
        if Map:FindFirstChild("KitsuneIsland") then
          _statusKIT:Set({
            ["Title"] = "Status Kitsune Island",
            ["Content"] = "Kitsune Island Is Spawned"
          })
        else
          _statusKIT:Set({
            ["Title"] = "Status Kitsune Island",
            ["Content"] = "Kitsune Island Is not Spawned"
          })
        end
      end
    end)
    task.spawn(function()
      while task.wait(2) do
        _statusNumAZ:Set({
          ["Title"] = "Total Azura Ember",
          ["Content"] = _env.VerifyMaterial("Azure Ember")
        })
      end
    end)
    Funcs:AddToggle(_kitsune, "Tween to Kitsune Island", "", false)
    Funcs:AddToggle(_kitsune, "Auto Collect Azure Ember", "", false)
    Funcs:AddToggle(_kitsune, "Auto Trade Azure Ember", "", false)
  end
  local _farmsea = _seaevent:Section({["Title"] = "Farming Sea", ["Content"] = ""}) do 
    _farmsea:Seperator("Config")
    Funcs:AddDropdown(_farmsea, "Select Level Danger", false, {"1", "2", "3", "4", "5", "6", "infinite"}, {"6"})
    Funcs:AddDropdown(_farmsea, "Select Buy Boat", false, {"PirateBrigade", "PirateGrandBrigade", "Beast Hunter", "MarineBrigade", "MarineGrandBrigade"}, {"PirateBrigade"})
    Funcs:AddDropdown(_farmsea, "Choose Equip ", false, {"Melee", "Blox Fruit", "Gun", "Sword", "Random"}, {"Random"})
    Funcs:AddDropdown(_farmsea, "Skill ", true, {"Z", "X", "C", "V", "F"}, {"Z", "X", "C", "V"})
    Funcs:AddToggle(_farmsea, "Auto Dodge Rough Sea", "", true)
    Funcs:AddToggle(_farmsea, "Protect Boat", "", true)
    Funcs:AddToggle(_farmsea, "No Fog", "", false)
    _farmsea:Seperator("Farm Sea")
    Funcs:AddToggle(_farmsea, "Auto Drive Boat To Sea", "", false)
    _farmsea:Seperator("Terror Shark")
    Funcs:AddToggle(_farmsea, "Terror Shark", "", true)
    Funcs:AddToggle(_farmsea, "Dodge Terror Shark Skill", "", true)
    _farmsea:Seperator("Sea beast")
    Funcs:AddToggle(_farmsea, "Attack Sea beast", "", true)
    Funcs:AddToggle(_farmsea, "Dodge Sea Beasts Skill", "", true)
    _farmsea:Seperator("Boat")
    Funcs:AddToggle(_farmsea, "Attack Ghost Ship", "", true)
    _farmsea:Seperator("Other")
    Funcs:AddToggle(_farmsea, "Attack Piranha", "", true)
    Funcs:AddToggle(_farmsea, "Attack Shark", "", true)
    Funcs:AddToggle(_farmsea, "Attack Fish Crew Member", "", true)
  end
  local _farmlevi = _seaevent:Section({["Title"] = "Farming Leviathan", ["Content"] = ""}) do
    _farmlevi:Seperator("Config")
    Funcs:AddDropdown(_farmlevi, "Choose Equip  ", false, {"Melee", "Blox Fruit", "Gun", "Sword", "Random"}, {"Random"})
    Funcs:AddDropdown(_farmlevi, "Skill  ", true, {"Z", "X", "C", "V", "F"}, {"Z", "X", "C", "V"})
    _farmlevi:Seperator("Frozen Dimension")
    local _statisFD = _farmlevi:Paragraph({["Title"] = "Status Frozen Dimension", ["Content"] = "" })
    task.spawn(function()
      while task.wait(2) do
        if WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
          _statisFD:Set({
            ["Title"] = "Status Frozen Dimension",
            ["Content"] = "Frozen Dimension is Spawned"
          })
        else
          _statisFD:Set({
            ["Title"] = "Status Frozen Dimension",
            ["Content"] = "Frozen Dimension is not Spawned"
          })
        end
      end
    end)
    Funcs:AddToggle(_farmlevi, "Tween to Frozen Dimension", "", false)
    _farmlevi:Seperator("Leviathan")
    Funcs:AddToggle(_farmlevi, "Auto Find Leviathan", "", false)
    Funcs:AddToggle(_farmlevi, "Auto Attack Leviathan Segment", "", false)
    Funcs:AddToggle(_farmlevi, "Auto Attack Leviathan Tail", "", false)
  end
  local _farmwoods = _seaevent:Section({["Title"] = "Farming Wood Planks", ["Content"] = ""}) do 
    _farmwoods:Seperator("Config")
    Funcs:AddDropdown(_farmwoods, "Choose Equip   ", false, {"Melee", "Blox Fruit", "Gun", "Sword", "Random"}, {"Random"})
    Funcs:AddDropdown(_farmwoods, "Skill   ", true, {"Z", "X", "C", "V", "F"}, {"Z", "X", "C", "V"})
    _farmwoods:Seperator("Farming Woods")
    Funcs:AddToggle(_farmwoods, "Auto Wood Planks", "", false)
  end
  local _farmitem = _seaevent:Section({["Title"] = "Get Item", ["Content"] = ""}) do 
    Funcs:AddToggle(_farmitem, "Auto Shark Anchor", "", false)
    Funcs:AddToggle(_farmitem, "Auto Monster Magnet", "", false)
    Funcs:AddToggle(_farmitem, "Auto Terror Jaw", "", false)
    Funcs:AddToggle(_farmitem, "Auto Shark Tooth Necklace", "", false)
  end
end

return SpeedHubX
