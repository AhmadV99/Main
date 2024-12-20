local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.5"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()

local Window = Library:Start({
  ["Name"] = "Speed Hub X | " .. Version,
  ["SaveFolder"] = "Speed Hub X"
})

game.StarterGui:SetCore("SendNotification", {Title = "Script Status", Text = "Loading...", Icon = "rbxassetid://0", Duration = 10})

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
        if not Multi and type(Value) == "table" then
          for _, v in next, Value do
            SpeedHubX[Name] = v
          end
        else
          SpeedHubX[Name] = Value
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
local NPCs = Workspace:WaitForChild("NPCs")

local _setclipboard = setclipboard or (function()end)
local _hookfunction = hookfunction or hookfunc or (function()end)
local _require = require or (function()end)
local _getnilinstances = getnilinstances or (function()end)
local _isfile = isfile or (function()end)
local _delfile = delfile or (function()end)

local Raids = _require(ReplicatedStorage.Raids)

local _env = getgenv and getgenv() or {}

local Sea = {
  [1] = game.PlaceId == 2753915549,
  [2] = game.PlaceId == 4442272183,
  [3] = game.PlaceId == 7449423635
}
local FruitTable = {
  "Rocket Fruit",
  "Spin Fruit",
  "Chop Fruit",
  "Spring Fruit",
  "Bomb Fruit",
  "Smoke Fruit",
  "Spike Fruit",
  "Flame Fruit",
  "Falcon Fruit",
  "Ice Fruit",
  "Sand Fruit",
  "Dark Fruit",
  "Ghost Fruit",
  "Diamond Fruit",
  "Light Fruit",
  "Rubber Fruit",
  "Barrier Fruit",
  "Magma Fruit",
  "Quake Fruit",
  "Buddha Fruit",
  "Love Fruit",
  "Spider Fruit",
  "Sound Fruit",
  "Phoenix Fruit",
  "Portal Fruit",
  "Rumble Fruit",
  "Pain Fruit",
  "Blizzard Fruit",
  "Gravity Fruit",
  "Mammoth Fruit",
  "T-Rex Fruit",
  "Dough Fruit",
  "Shadow Fruit",
  "Venom Fruit",
  "Control Fruit",
  "Spirit Fruit",
  "Dragon Fruit",
  "Leopard Fruit",
  "Kitsune Fruit",
  "Gas Fruit",
  "Blade Fruit",
}

task.spawn(function()
  local Container = ReplicatedStorage.Effect.Container
  local CameraShaker = _require(ReplicatedStorage.Util.CameraShaker)
  local Death = _require(Container:FindFirstChild("Death"))
  local Respawn = _require(Container:FindFirstChild("Respawn"))
  local DisplayNPC = _require(ReplicatedStorage:FindFirstChild("GuideModule")).ChangeDisplayedNPC

  _hookfunction(Death, function()return nil end)
  _hookfunction(Respawn, function()return nil end)
  _hookfunction(DisplayNPC, function()return nil end)
  CameraShaker:Stop()
end)

_env.CodesRedeem = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Codes_BloxFruit"))()

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

_env.IslandList = function()
  local ListName = {}
  local CheckName = {}
  local Sky = {"Sky 2","Sky 3"}

  for _, part in next, WorldOrigin.Locations:GetChildren() do
    if part and not CheckName[part.name] then
      table.insert(ListName, part.name)CheckName[part.name]=true
    end
  end
  
  if Sea[1] then
    for _, part in next, Sky do
      table.insert(ListName, part)
    end
  end

  return ListName
end

_env.NPCList = function()
  local ListNPC = {}
  local CheckName = {}

  local function CreateNPC(NPCGroup)
    for _, part in next, NPCGroup do
      local Head = part:FindFirstChild("Head")
      if Head then
        local QuestBBG = Head:FindFirstChild("QuestBBG")
        if QuestBBG and QuestBBG:FindFirstChild("Title") and not CheckName[part.Name] then
          table.insert(ListNPC, part.Name)CheckName[part.Name]=true
        end
      end
    end
  end

  CreateNPC(NPCs:GetChildren())
  CreateNPC(_getnilinstances())

  return ListNPC
end

_env.ChipsList = function()
  local ListName = {}

  for _, Raids in next, Raids.raids do
    table.insert(ListName, Raids)
  end
  for _, Raids in next, Raids.advancedRaids do
    table.insert(ListName, Raids)
  end

  return ListName
end

_env.PlayerList = function()
  local ListName = {}

  for _, v in next, Players:GetChildren() do
    table.insert(ListName, v.Name)
  end

  return ListName
end

if Sea[1] then
  _env.MaterialList = {"Angel Wings", "Leather + Scrap Metal", "Magma Ore", "Fish Tail"}
elseif Sea[2] then
  _env.MaterialList = {"Leather + Scrap Metal", "Magma Ore", "Mystic Droplet", "Radioactive Material", "Vampire Fang"}
elseif Sea[3] then
  _env.MaterialList = {"Leather + Scrap Metal", "Fish Tail", "Gunpowder", "Mini Tusk", "Conjured Cocoa", "Dragon Scale"}
end

if Sea[1] then
  _env.ItemListUpgrade = {"Cutlass", "Dual Katana", "Katana", "Iron Mace", "Shark Saw", "Triple Katana", "Dual-Headed Blade", "Pipe", "Soul Cane", "Trident", "Wardens Sword", "Bisento", "Pole (1st Form)", "Saber", "Slingshot", "Flintlock", "Musket", "Cannon", "Refined Flintlock", "Refined Musket", "Refined Slingshot", "Bazooka"}
elseif Sea[2] then
  _env.ItemListUpgrade = {"Dragon Trident", "Gravity Cane", "Jitte", "Longsword", "Koko", "Midnight Blade", "Pole (2nd Form)", "Rengoku", "Saddi", "Shisui", "Wando", "True Triple Katana", "Acidum Rifle", "Bizarre Rifle", "Kabucha"}
elseif Sea[3] then
  _env.ItemListUpgrade = {"Twin Hooks", "Buddy Sword", "Canvander", "Dark Dagger", "Fox Lamp", "Shark Anchor", "Spikey Trident", "Tushita", "Yama", "Cursed Dual Katana", "Hallow Scythe", "Serpent Bow", "Soul Guitar"}
end

local ShopTable = {
  {"Frags", {
    {"Race Rerol", {"BlackbeardReward", "Reroll", "2"}},
    {"Reset Stats", {"BlackbeardReward", "Refund", "2"}}
  }},
  {"Fighting Style", {
    {"Buy Black Leg", {"BuyBlackLeg"}},
    {"Buy Electro", {"BuyElectro"}},
    {"Buy Fishman Karate", {"BuyFishmanKarate"}},
    {"Buy Dragon Claw", {"BlackbeardReward", "DragonClaw", "2"}},
    {"Buy Superhuman", {"BuySuperhuman"}},
    {"Buy Death Step", {"BuyDeathStep"}},
    {"Buy Sharkman Karate", {"BuySharkmanKarate"}},
    {"Buy Electric Claw", {"BuyElectricClaw"}},
    {"Buy Dragon Talon", {"BuyDragonTalon"}},
    {"Buy GodHuman", {"BuyGodhuman"}},
    {"Buy Sanguine Art", {"BuySanguineArt"}}
  }},
  {"Ability Teacher", {
    {"Buy Geppo", {"BuyHaki", "Geppo"}},
    {"Buy Buso", {"BuyHaki", "Buso"}},
    {"Buy Soru", {"BuyHaki", "Soru"}},
    {"Buy Ken", {"KenTalk", "Buy"}}
  }},
  {"Sword", {
    {"Buy Katana", {"BuyItem", "Katana"}},
    {"Buy Cutlass", {"BuyItem", "Cutlass"}},
    {"Buy Dual Katana", {"BuyItem", "Dual Katana"}},
    {"Buy Iron Mace", {"BuyItem", "Iron Mace"}},
    {"Buy Triple Katana", {"BuyItem", "Triple Katana"}},
    {"Buy Pipe", {"BuyItem", "Pipe"}},
    {"Buy Dual-Headed Blade", {"BuyItem", "Dual-Headed Blade"}},
    {"Buy Soul Cane", {"BuyItem", "Soul Cane"}},
    {"Buy Bisento", {"BuyItem", "Bisento"}}
  }},
  {"Gun", {
    {"Buy Musket", {"BuyItem", "Musket"}},
    {"Buy Slingshot", {"BuyItem", "Slingshot"}},
    {"Buy Flintlock", {"BuyItem", "Flintlock"}},
    {"Buy Refined Slingshot", {"BuyItem", "Refined Slingshot"}},
    {"Buy Refined Flintlock", {"BuyItem", "Refined Flintlock"}},
    {"Buy Cannon", {"BuyItem", "Cannon"}},
    {"Buy Kabucha", {"BlackbeardReward", "Slingshot", "2"}}
  }},
  {"Accessories", {
    {"Buy Black Cape", {"BuyItem", "Black Cape"}},
    {"Buy Swordsman Hat", {"BuyItem", "Swordsman Hat"}},
    {"Buy Tomoe Ring", {"BuyItem", "Tomoe Ring"}}
  }},
  {"Race", {
    {"Ghoul Race", {"Ectoplasm", "Change", 4}},
    {"Cyborg Race", {"CyborgTrainer", "Buy"}}
  }}
}

_env.FruitList = function()
  local ListName = {}

  for _, Fruit in next, CommF_:InvokeServer("GetFruits") do
    table.insert(ListName, Fruit.Name)
  end

  return ListName
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

  local _stats = _home:Section({["Title"] = "Get Stats", ["Content"] = ""}) do
    _stats:Seperator("Config")
    Funcs:AddDropdown(_stats, "Point Stats", false, {"1", "5", "10", "15", "20", "25", "30", "35", "40", "50"}, {"1"})
    _stats:Seperator("Stats")
    for _, v in next, {"Melee", "Defense", "Sword", "Gun", "Demon Fruit"} do
      Funcs:AddToggle(_stats, v, "", false)
    end
  end

  local _misc = _home:Section({["Title"] = "Misc", ["Content"] = ""}) do
    _misc:Seperator("Team")
    Funcs:AddButton(_misc, "Join Pirates Team", "", function()
      CommF_:InvokeServer("SetTeam", "Pirates")
    end)
    Funcs:AddButton(_misc, "Join Marines Team", "", function()
      CommF_:InvokeServer("SetTeam", "Marines")
    end)
    _misc:Seperator("Menu UI")
    Funcs:AddButton(_misc, "Devil Fruit Shop", "", function()
      CommF_:InvokeServer("GetFruits")Player.PlayerGui.Main.FruitShop.Visible = true
    end)
    Funcs:AddButton(_misc, "Titles", "", function()
      CommF_:InvokeServer("getTitles")Player.PlayerGui.Main.Titles.Visible = true
    end)
    Funcs:AddButton(_misc, "Haki Color", "", function()
      Player.PlayerGui.Main.Colors.Visible = true
    end)
    _misc:Seperator("Redeem")
    Funcs:AddButton(_misc, "Redeem Code", "", function()
      for _, code in next, _env.CodesRedeem do
        Remotes.Redeem:InvokeServer((function()
          if type(code) == "string" then
            return code
          else
            return tostring(code)
          end
        end)())
      end
    end)
    _misc:Seperator("Water")
    Funcs:AddToggle(_misc, "Walk On Water", "", true)
    _misc:Seperator("Remove UI")
    Funcs:AddToggle(_misc, "Remove Damage", "", false)
    Funcs:AddToggle(_misc, "Remove Notifications", "", false)
    _misc:Seperator("Other")
    Funcs:AddToggle(_misc, "Auto Haki", "", true)
    Funcs:AddToggle(_misc, "Auto Ken", "", false)
  end

  local _settings = _home:Section({["Title"] = "Settings", ["Content"] = ""}) do
    Funcs:AddButton(_settings, "Reset Script Saver", "", function()
      if _isfile("Speed Hub X") then
        _delfile("Speed Hub X")
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
    Funcs:AddDropdown(_farmingmastery, "Choose Mastery Tool", false, {"Blox Fruit", "Sword", "Gun", "Melee"}, {"Blox Fruit"})
    Funcs:AddDropdown(_farmingmastery, "Mastery Health", false, {"10", "20", "25", "30", "45", "50", "60", "70", "75", "85", "95"}, {"45"})
    _farmingmastery:Seperator("Farming")
    Funcs:AddToggle(_farmingmastery, "Auto Farm Mastery", "", false)
    _farmingmastery:Seperator("Skill")
    for _, v in next, {"Z", "X", "C", "V", "F"} do
      Funcs:AddToggle(_farmingmastery, v .. "   ", "", true)
    end
  end
  local _farmingC = _main:Section({["Title"] = "Farming/Collect Chest/Berry", ["Content"] = ""}) do
    _farmingC:Seperator("Config Chest")
    Funcs:AddDropdown(_farmingC, "Choose Chest Area", false, {"Mirage Island", "Island Other"}, {"Island Other"})
    Funcs:AddToggle(_farmingC, "Auto Hop if Chest doesn't Spawned", "", true)
    _farmingC:Seperator("Collect Chest")
    Funcs:AddToggle(_farmingC, "Auto Collect Chest", "", false)
    _farmingC:Seperator("Collect Berry")
    Funcs:AddToggle(_farmingC, "Auto Collect Berry", "", false)
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
    _farmingmaterial:Seperator("Material")
    Funcs:AddDropdown(_farmingmaterial, "Select Material", false, _env.MaterialList, {""})
    _farmingmaterial:Seperator("Farming Material")
    Funcs:AddToggle(_farmingmaterial, "Auto Attack Material", "", false)
  end

  local _FarmingDragon = _main:Section({["Title"] = "Dragon Events", ["Content"] = ""}) do
    _FarmingDragon:Seperator("Quests")
    Funcs:AddToggle(_FarmingDragon, "Auto Dojo Quests", "Get Belt: White, Yellow", false)
    Funcs:AddToggle(_FarmingDragon, "Auto Dragon Hunter Quests", "Required: White And Yellow Belt", false)
    _FarmingDragon:Seperator("Craft")
    Funcs:AddToggle(_FarmingDragon, "Auto Volcanic Magnet", "", false)
    --Funcs:AddToggle(_FarmingDragon, "Auto Dragonheart", "", false)
    --Funcs:AddToggle(_FarmingDragon, "Auto Dragonstorm", "", false)
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
            ["Content"] = Sea[3] and string.gsub(tostring(CommF_:InvokeServer("CakePrinceSpawner", true)), "%D", "") or "N/A"
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
          ["Content"] = Sea[3] and tostring(CommF_:InvokeServer("EliteHunter", "Progress")) or "N/A"
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
  local _CitizenQuest = _questitem:Section({["Title"] = "Citizen Quest", ["Content"] = ""}) do
    Funcs:AddToggle(_CitizenQuest, "Auto Citizen Quest", "", false)
  end
  local _Blacksmith = _questitem:Section({["Title"] = "Blacksmith [BETA]", ["Content"] = ""}) do
    _Blacksmith:Seperator("Upgrade Item")
    Funcs:AddDropdown(_Blacksmith, "Select Item", false, _env.ItemListUpgrade, {""})
    Funcs:AddToggle(_Blacksmith, "Auto Upgrade On Select Item", "", false)
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
    Funcs:AddToggle(_kitsune, "Auto Summon Kitsune Island", "", false)
    Funcs:AddToggle(_kitsune, "Tween to Kitsune Island", "", false)
    Funcs:AddToggle(_kitsune, "Auto Collect Azure Ember", "", false)
    Funcs:AddToggle(_kitsune, "Auto Trade Azure Ember", "", false)
  end
  local _farmsea = _seaevent:Section({["Title"] = "Farming Sea", ["Content"] = ""}) do 
    _farmsea:Seperator("Config")
    Funcs:AddDropdown(_farmsea, "Select Level Danger", false, {"1", "2", "3", "4", "5", "6", "infinite"}, {"6"})
    Funcs:AddDropdown(_farmsea, "Select Buy Boat", false, {"PirateBrigade", "PirateGrandBrigade", "Beast Hunter", "MarineBrigade", "MarineGrandBrigade"}, {"PirateBrigade"})
    Funcs:AddDropdown(_farmsea, "Choose Equip ", false, {"Melee", "Blox Fruit", "Gun", "Sword", "Random"}, {"Random"})
    Funcs:AddToggle(_farmsea, "Auto Dodge Rough Sea", "", true)
    Funcs:AddToggle(_farmsea, "Protect Boat", "", true)
    Funcs:AddToggle(_farmsea, "No Clip Rock", "", true)
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
    _farmsea:Seperator("Skill")
    for _, v in next, {"Z", "X", "C", "V", "F"} do
      Funcs:AddToggle(_farmsea, v .. " ", "", true)
    end
  end
  local _farmlevi = _seaevent:Section({["Title"] = "Farming Leviathan", ["Content"] = ""}) do
    _farmlevi:Seperator("Config")
    Funcs:AddDropdown(_farmlevi, "Choose Equip  ", false, {"Melee", "Blox Fruit", "Gun", "Sword", "Random"}, {"Random"})
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
    Funcs:AddToggle(_farmlevi, "Auto Attack Leviathan", "", false)
    Funcs:AddToggle(_farmlevi, "Auto Attack Leviathan Segment", "", false)
    Funcs:AddToggle(_farmlevi, "Auto Attack Leviathan Tail", "", false)
    _farmlevi:Seperator("Heart Leviathan")
    Funcs:AddToggle(_farmlevi, "Tween To Heart Leviathan [BOAT TWEEN]", "", false)
    _farmlevi:Seperator("Skill")
    for _, v in next, {"Z", "X", "C", "V", "F"} do
      Funcs:AddToggle(_farmlevi, v .. "  ", "", true)
    end
  end
  local _farmwoods = _seaevent:Section({["Title"] = "Farming Wood Planks", ["Content"] = ""}) do 
    _farmwoods:Seperator("Config")
    Funcs:AddDropdown(_farmwoods, "Choose Equip   ", false, {"Melee", "Blox Fruit", "Gun", "Sword", "Random"}, {"Random"})
    _farmwoods:Seperator("Farming Woods")
    Funcs:AddToggle(_farmwoods, "Auto Wood Planks", "", false)
    _farmwoods:Seperator("Skill")
    for _, v in next, {"Z", "X", "C", "V", "F"} do
      Funcs:AddToggle(_farmwoods, v .. "   ", "", true)
    end
  end
  local _PrehistoricIsland = _seaevent:Section({["Title"] = "Prehistoric Island", ["Content"] = ""}) do 
    _PrehistoricIsland:Seperator("Prehistoric Island")
    Funcs:AddToggle(_PrehistoricIsland, "Auto Summon Prehistoric Island", "", false)
    Funcs:AddToggle(_PrehistoricIsland, "Auto Find Prehistoric Island", "", false)
    _PrehistoricIsland:Seperator("Farming On Prehistoric Island")
    Funcs:AddToggle(_PrehistoricIsland, "Auto Prehistoric (Fully)", "Summon Prehistoric Island, Kill Golem, Collect Bones, Collect Dragon Eggs", false)
    Funcs:AddToggle(_PrehistoricIsland, "Auto Attack Pressure Rock", "", false)
    Funcs:AddToggle(_PrehistoricIsland, "Auto Kill Golem", "", false)
    Funcs:AddToggle(_PrehistoricIsland, "Auto Collect Dinosaur Bones", "", false)
    Funcs:AddToggle(_PrehistoricIsland, "Auto Collect Dragon Egg", "", false)
  end
  local _farmitem = _seaevent:Section({["Title"] = "Get Item", ["Content"] = ""}) do 
    Funcs:AddToggle(_farmitem, "Auto Shark Anchor", "", false)
    Funcs:AddToggle(_farmitem, "Auto Monster Magnet", "", false)
    Funcs:AddToggle(_farmitem, "Auto Terror Jaw", "", false)
    Funcs:AddToggle(_farmitem, "Auto Shark Tooth Necklace", "", false)
  end
end

local _shopMaps = Window:MakeTab("Shop / Maps / Fruit") do
  local _Maps = _shopMaps:Section({["Title"] = "Maps", ["Content"] = ""}) do
    _Maps:Seperator("Island")
    Funcs:AddDropdown(_Maps, "Select Island", false, _env.IslandList(), {""})
    Funcs:AddToggle(_Maps, "Tween To Island", "", false)
    _Maps:Seperator("NPCs")
    Funcs:AddDropdown(_Maps, "Select NPCs", false, _env.NPCList(), {""})
    Funcs:AddToggle(_Maps, "Tween To NPCs", "", false)
    _Maps:Seperator("World")
    Funcs:AddButton(_Maps, "First World", "", function()
      CommF_:InvokeServer("TravelMain")
    end)
    Funcs:AddButton(_Maps, "Second World", "", function()
      CommF_:InvokeServer("TravelDressrosa")
    end)
    Funcs:AddButton(_Maps, "Third World", "", function()
      CommF_:InvokeServer("TravelZou")
    end)
  end

  local _shop = _shopMaps:Section({["Title"] = "Shop", ["Content"] = ""}) do
    _shop:Seperator("Other")
    Funcs:AddToggle(_shop, "Auto Buy Legendary Sword", "", false)
    Funcs:AddToggle(_shop, "Auto Buy True Triple Katana", "", false)
    for _, Category in ipairs(ShopTable) do
      local name, items = Category[1], Category[2]
      _shop:Seperator(name)
      for _, item in ipairs(items) do
        local NameShop, Params = item[1], item[2]
        local buyfunc = type(Params) == "table" and function()CommF_:InvokeServer(unpack(Params))end or Params
        Funcs:AddButton(_shop, NameShop, "", buyfunc)
      end
    end
  end

  local _fruit = _shopMaps:Section({["Title"] = "Fruit", ["Content"] = ""}) do
    _fruit:Seperator("Fruit Sniper")
    Funcs:AddDropdown(_fruit, "Select Fruit Sniper", false, _env.FruitList(), {""})
    Funcs:AddToggle(_fruit, "Auto Buy Fruit Sniper", "", false)
    _fruit:Seperator("Fruit")
    Funcs:AddToggle(_fruit, "Auto Store Fruit", "", false)
    Funcs:AddToggle(_fruit, "Auto Drop Fruit", "", false)
    Funcs:AddToggle(_fruit, "Auto Eat Fruit", "", false)
    Funcs:AddToggle(_fruit, "Auto Random Fruit", "", false)
    Funcs:AddToggle(_fruit, "Auto Find Fruit", "", false)
    _fruit:Seperator("Spawner Fruit")
    Funcs:AddDropdown(_fruit, "Select Fruit Spawner", true, FruitTable, {""})
    Funcs:AddToggle(_fruit, "Auto Gets Fruit Spawner", "When Fruit Is Spawned Then Stop Farm And Will Tween Fruits, Then Enable Farm", false)
  end
end

local _pvp = Window:MakeTab("PvP") do
  local _PlayPvP = _pvp:Section({["Title"] = "Play PvP", ["Content"] = ""}) do
    _PlayPvP:Seperator("Config Player")
    Funcs:AddDropdown(_PlayPvP, "Choose Neareast Or Select (Player)", false, {"Neareast", "Select"}, {"Neareast"})
    local plrList = Funcs:AddDropdown(_PlayPvP, "Select Player ( if only choose Select (Player) )", false, _env.PlayerList(), {""})
    Funcs:AddButton(_PlayPvP, "Refersh Player", "", function()
      plrList:Clear()
      plrList:Refresh(_env.PlayerList(), {""})
    end)
    _PlayPvP:Seperator("Config Aim")
    Funcs:AddDropdown(_PlayPvP, "Choose Aim Part", false, {"Head", "Torso", "HumanoidRootPart", "PrimaryPart"}, {"HumanoidRootPart"})
    _PlayPvP:Seperator("Play Aim Bot")
    Funcs:AddToggle(_PlayPvP, "Aimbot", "", false)
    Funcs:AddToggle(_PlayPvP, "Aimbot Gun", "", false)
    _PlayPvP:Seperator("Play Aim Lock")
    Funcs:AddToggle(_PlayPvP, "AimLock", "", false)
    _PlayPvP:Seperator("Other")
    Funcs:AddToggle(_PlayPvP, "Use Aim (GUI)", "", false)
    Funcs:AddDropdown(_PlayPvP, "FOV Range", false, {"10", "20", "30", "40", "50", "60", "70", "80", "90", "100"}, {"40"})
    Funcs:AddToggle(_PlayPvP, "Use FOV", "", false)
    _PlayPvP:Seperator("Misc PvP")
    Funcs:AddToggle(_PlayPvP, "Auto Enable PvP", "", false)
  end

  local _farmbounty = _pvp:Section({["Title"] = "Farm Bounty", ["Content"] = ""}) do
    _farmbounty:Seperator("Config")
    Funcs:AddDropdown(_farmbounty, "Choose Equip       ", false, {"Melee", "Blox Fruit", "Gun", "Sword", "Random"}, {"Random"})
    Funcs:AddToggle(_farmbounty, "Auto Hop At 20 Delay", "", false)
    _farmbounty:Seperator("Farming Bounty")
    Funcs:AddToggle(_farmbounty, "Auto Farm Bounty", "", false)
    _farmbounty:Seperator("Skill")
    for _, v in next, {"Z", "X", "C", "V", "F"} do
      Funcs:AddToggle(_farmbounty, v .. "          ", "", true)
    end
  end
end

local _racemirage = Window:MakeTab("Race / Mirage") do
  local _mirage = _racemirage:Section({["Title"] = "Mirage Island", ["Content"] = ""}) do
    local _statisMI = _mirage:Paragraph({["Title"] = "Status Mirage Island", ["Content"] = "" })
    task.spawn(function()
      while task.wait(2) do
        if WorldOrigin.Locations:FindFirstChild("Mirage Island") then
          _statisMI:Set({
            ["Title"] = "Status Mirage Island",
            ["Content"] = "Mirage Island is Spawned"
          })
        else
          _statisMI:Set({
            ["Title"] = "Status Mirage Island",
            ["Content"] = "Mirage Island is not Spawned"
          })
        end
      end
    end)
    Funcs:AddToggle(_mirage, "Auto Summon Mirage Island", "", false)
    Funcs:AddToggle(_mirage, "Tween To Mirage Island", "", false)
    Funcs:AddToggle(_mirage, "Tween To Gear", "", false)
    Funcs:AddToggle(_mirage, "Tween To Blue Gear", "", false)
    Funcs:AddToggle(_mirage, "Tween To Highest Point", "", false)
    Funcs:AddToggle(_mirage, "Tween To Advanced Dealer", "", false)
  end

  local _getrace = _racemirage:Section({["Title"] = "Get Race", ["Content"] = ""}) do
    Funcs:AddToggle(_getrace, "Auto Get Cyborg", "", false)
    Funcs:AddToggle(_getrace, "Auto Get Ghoul", "", false)
    _getrace:Seperator("Hop")
    Funcs:AddToggle(_getrace, "Hop For Get Boss Ghoul", "", false)
  end

  local _getvrace = _racemirage:Section({["Title"] = "Get Race Version", ["Content"] = ""}) do
    Funcs:AddToggle(_getvrace, "Auto Get Race V1", "", false)
    Funcs:AddToggle(_getvrace, "Auto Get Race V2", "", false)
    Funcs:AddToggle(_getvrace, "Auto Get Race V3", "", false)
  end

  local _racev4 = _racemirage:Section({["Title"] = "Race V4", ["Content"] = ""}) do
    Funcs:AddToggle(_racev4, "Auto Complete Trial", "", false)
    Funcs:AddToggle(_racev4, "Auto Kill Player In Trial", "", false)
    Funcs:AddToggle(_racev4, "Auto Awakening One Quest", "", false)
    _racev4:Seperator("Gear")
    Funcs:AddToggle(_racev4, "Auto Buy Gear", "", false)
    Funcs:AddToggle(_racev4, "Auto Choose Gear", "", false)
    Funcs:AddToggle(_racev4, "Auto Collect Blue Gear", "", false)
    _racev4:Seperator("Pull Lever")
    Funcs:AddToggle(_racev4, "Auto Pull Lever", "", false)
    Funcs:AddToggle(_racev4, "Hop For Pull Lever", "", false)
    _racev4:Seperator("Tween Race V4")
    Funcs:AddDropdown(_racev4, "Select Tween Race", false, {"Top Great Tree","Temple Of Time","Lever Pull", "Acient One", "Cyborg Door", "Fish Door", "Ghoul Door", "Human Door", "Mink Door", "Sky Door"}, {"Timple Of Time"})
    Funcs:AddToggle(_racev4, "Tween On Select Tween Race", "", false)
  end
end

local _raidesp = Window:MakeTab("Raid / ESP") do
  local _raid = _raidesp:Section({["Title"] = "Raid", ["Content"] = ""}) do
    Funcs:AddDropdown(_raid, "Select Chips", false, _env.ChipsList(), {""})
    Funcs:AddToggle(_raid, "Auto Buy Chips", "", false)
    Funcs:AddToggle(_raid, "Auto Farm Raid", "", false)
    Funcs:AddToggle(_raid, "Kill Aura", "", false)
  end

  local _esp = _raidesp:Section({["Title"] = "ESP", ["Content"] = ""}) do
    for _, esp in next, {"Player","Chest", "Flower","Devil Fruit","Island","Mirage Island", "Kitsune Island", "Berry"} do
      Funcs:AddToggle(_esp, "ESP " .. esp, "", false)
    end
  end
end

return SpeedHubX
