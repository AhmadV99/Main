loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.lua"))()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")

local Player = Players.LocalPlayer

local Remotes = ReplicatedStorage.Remotes
local CommF_ = Remotes.CommF_
local Enemies = workspace.Enemies

local _PlaceID = game.PlaceId


local __env = getgenv and getgenv() or {}

local World = {
  [1] = _PlaceID == 2753915549,
  [2] = _PlaceID == 4442272183,
  [3] = _PlaceID == 7449423635
}

local _hookfunc1 = hookfunction or hookfunc or (function(...) return ... end)
local _require1 = require or (function(...) return ... end)
local _getnilinstances1 = getnilinstances or (function(...) return ... end)

task.spawn(function()
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

__env.BossList = function() -- boss list
  local BossTable = {}

  local function GetBoss(Object)
    for _, Boss in ipairs(Object) do
      local Humanoid = Boss and Boss:FindFirstChildOfClass("Humanoid")
      if Humanoid and string.find(Humanoid.DisplayName, "Boss") then
        table.insert(BossTable, Boss.Name)
      end
    end
  end

  GetBoss(ReplicatedStorage:GetDescendants())
  GetBoss(Enemies:GetDescendants())

  return BossTable
end

__env.VerifyMaterial = function(Name) -- Material Count
  local inventory = CommF_:InvokeServer("getInventory")

  for _, item in ipairs(inventory) do
    if item and item.Type == "Material" and item.Name == Name then
      return item.Count
    end
  end
  return 0
end

__env.CheckMob = function(Value) -- check mob
  local Boolen = false

  local function GetMob(Object)
    for _, Mob in ipairs(Object) do
      if table.find(Value, Mob.Name) then
        local HD = Mob and Mob:FindFirstChild("Humanoid")
        if HD and HD.Health > 0 then
          Boolen = true
          break 
        end
      end
    end
  end

  if not Boolen then
    GetMob(ReplicatedStorage:GetChildren())
  end
  if not Boolen then
    GetMob(Enemies:GetChildren())
  end
  return Boolen
end

if World[1] then -- Material list
  __env.MaterialList = {"Angel Wings","Leather + Scrap Metal","Magma Ore","Fish Tail"}
elseif World[2] then
  __env.MaterialList = {"Leather + Scrap Metal","Magma Ore","Mystic Droplet","Radiactive Material","Vampire Fang"}
elseif World[3] then
  __env.MaterialList = {"Leather + Scrap Metal","Fish Tail","Gunpowder","Mini Tusk","Conjured Cocoa","Dragon Scale"}
end

__env.IslandList = function() -- Island List
  local islandList, GetIslandName = {}, {}

	for _, Island in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
    if not GetIslandName[Island.Name] then
      table.insert(islandList, Island.Name)
      GetIslandName[Island.Name] = true
    end
	end

  return islandList
end

__env.TableNPCs = function() -- NPCs list
  local NPCS = {}

  local function AddNPCsToTable(NPCs)
    for _, Npc in ipairs(NPCs) do
      local Head = Npc:FindFirstChild("Head")
      if Head then
        local QuestBBG = Head:FindFirstChild("QuestBBG")
        if QuestBBG and QuestBBG:FindFirstChild("Title") then
          table.insert(NPCS, Npc.Name)
        end
      end
    end
  end

  AddNPCsToTable(workspace.NPCs:GetChildren())
  AddNPCsToTable(_getnilinstances1())
  return NPCS
end

__env.TableFruit = function() -- Fruit List
  local Fruit = {}
  local GETFRUIT = CommF_:InvokeServer("GetFruits")

  for _, Data in ipairs(GETFRUIT) do
    table.insert(Fruit, Data.Name)
  end
  return Fruit
end

__env.ListChips = function() -- Chips List
  __env.Chips = {}
  local Raids = _require1(ReplicatedStorage.Raids)

  for _, Chip in ipairs(Raids.raids) do
    table.insert(__env.Chips, Chip.Name)
  end
  for _, Chip in ipairs(Raids.advancedRaids) do
    table.insert(__env.Chips, Chip.Name)
  end

  return __env.Chips
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
  Config = Window:MakeTab({"Config", "rbxassetid://18361516966"}),
  Main = Window:MakeTab({"Main", "home"}),
  Item_Quest = Window:MakeTab({"Item/Quest", "swords"}),
  SeaEvent = Window:MakeTab({"Sea Event", "rbxassetid://16175025368"}),
  Stats = Window:MakeTab({"Stats", "plus-circle"}),
  Maps = Window:MakeTab({"Maps", "rbxassetid://6035190846"}),
  Shop = Window:MakeTab({"Shop", "rbxassetid://6031265976"}),
  Devil = Window:MakeTab({"Devil Fruit", "apple"}),
  PvP = Window:MakeTab({"PvP", "rbxassetid://16053202595"}),
  Raid = Window:MakeTab({"Raid", "rbxassetid://11446957539"}),
  Race = Window:MakeTab({"Race", "rbxassetid://11446900930"}),
  ESP = Window:MakeTab({"ESP", "mountain-snow"}),
  Misc = Window:MakeTab({"Miscellaneous", "rbxassetid://11447063791"}),
  Settings = Window:MakeTab({"Settings", "settings"}),
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

local _HomeT = Tabs.Home do
  _HomeT:AddDiscordInvite({
    Name = "Speed Hub X | Official Server",
    Logo = "rbxassetid://16022917595",
    Invite = Discord
  })

  _HomeT:AddSection("- [ Local Player ] -")

  Func.Slider(_HomeT, "Set WalkSpeed", 0, 500, 300)
  Func.Toggle(_HomeT, "Enable WalkSpeed", "This Can Set Walk Speed!", false)
end

local _ConfigT = Tabs.Config do
  Func.Dropdown(_ConfigT, "Weapon Tool", "Weapon + Equip = Equipped Weapon", {"Melee","Sword","Blox Fruit","Gun"}, "Melee")
  Func.Slider(_ConfigT, "Tween Speed", 0, 500, 200)
  Func.Slider(_ConfigT, "Farm Distance", 0, 100, 40)
  Func.Slider(_ConfigT, "Bring Mob Radius", 0, 500, 200)
  Func.Toggle(_ConfigT, "Bring Mob", "This Can Bring Mob 5+ or 6+ Each", true)
  Func.Toggle(_ConfigT, "Fast Attack", "This Fast Attack Can Attack a Mob in Fast", true)
  Func.Slider(_ConfigT, "Fast Attack Delay", 0, 20, 0)
  Func.Toggle(_ConfigT, "Hop if Admin or Staff", "", true)
  Func.Toggle(_ConfigT, "Auto Dodge Mob Skill", "", false)
  _ConfigT:AddSection("- [ Race ] -")
  Func.Toggle(_ConfigT, "Auto Use Race V3", "", false)
  Func.Toggle(_ConfigT, "Auto Use Race V4", "", false)
  _ConfigT:AddSection("- [ Body ] -")
  Func.Toggle(_ConfigT, "Anti-Knockback", "", false)
end

local _MainT = Tabs.Main do
  _MainT:AddSection("- [ Farming ] -")
  Func.Toggle(_MainT, "Auto Farm Level", "This Can Farm Level!", false)
  Func.Toggle(_MainT, "Auto Farm Nearest", "This Can Attack Nearest Mob!", false)

  if World[3] then
    Func.Toggle(_MainT, "Auto Pirates Sea", "This Can Attack Rip Indra Or Something!", false)
  elseif World[2] then
    Func.Toggle(_MainT, "Auto Factory", "This Can Attack Core!", false)
  end

  _MainT:AddSection("- [ Farming Mastery ] -")
  Func.Dropdown(_MainT, "Choose Mastery Mode", "", {"Level","Bone","Cake Prince","Nearest"}, "Level")
  Func.Dropdown(_MainT, "Choose Mastery Tool", "", {"Blox Fruit","Sword","Gun"}, "Blox Fruit")
  Func.Toggle(_MainT, "Farm Mastery", "", false)
  Func.Slider(_MainT, "Mastery Health", 0, 100, 25)
  _MainT:AddSection("- [ Skill Mastery ] -")
  for _, skill in ipairs({"Skill Z", "Skill X", "Skill C", "Skill V", "Skill F"}) do
    Func.Toggle(_MainT, skill, "", true)
  end
  _MainT:AddSection("- [ Farming Chest ] -")
  Func.Dropdown(_MainT, "Choose Chest Area", "", {"Mirage Island", "Island Other"}, "Island Other")
  Func.Toggle(_MainT, "Auto Collect Chest", "Stop Collect Chest if Get God's Chalice or Fist of Darkness", false)
  Func.Toggle(_MainT, "Auto Hop", "Hop if No Found Chest", false)
  _MainT:AddSection("- [ Farming Boss ] -")
  local BossList = Func.Dropdown(_MainT, "Choose Boss", "", __env.BossList(), "")
  Func.Button(_MainT, "Refersh Boss", "", function()
    BossList:Remove(__env.BossList())
    BossList:Set(__env.BossList())
  end)
  Func.Toggle(_MainT, "Auto Attack Boss", "This Can Attack a Mob Bosses!", false)
  Func.Toggle(_MainT, "Auto Attack Boss All", "This Can Attack a Mob Bosses All!", false)
  Func.Button(_MainT, "Hop Server", "", function()
    __env.Server(false,"", 0)
  end)
  _MainT:AddSection("- [ Material ] -")
  Func.Dropdown(_MainT, "Choose Material", "", __env.MaterialList, "")
  Func.Toggle(_MainT, "Auto Farm Material", "This Can Farm Material Item!", false)
end

local _ItemQuest = Tabs.Item_Quest do
  if World[1] then
    Func.Toggle(_ItemQuest, "Auto Sea Second", "Only Get Level 700 if Auto Sea Second!", false)
    _ItemQuest:AddSection("- [ Item ] -")
    Func.Toggle(_ItemQuest, "Auto Unlock Saber", "Only Get Level 200 if Auto Unlock Saber!", false)
    Func.Toggle(_ItemQuest, "Auto Pole", "This Can Get Pole Item!", false)
  elseif World[2] then
    _ItemQuest:AddSection("- [ Sea ] -")
    Func.Toggle(_ItemQuest, "Auto Sea Third", "This Can Get Sea Third then Travel Third World!", false)
    _ItemQuest:AddSection("- [ Item Sword ] -")
    Func.Toggle(_ItemQuest, "Auto Dragon Trident", "", false)
    Func.Toggle(_ItemQuest, "Auto Gravity Cane", "", false)
    Func.Toggle(_ItemQuest, "Auto Jitte", "", false)
    Func.Toggle(_ItemQuest, "Auto Longsword", "", false)
    Func.Toggle(_ItemQuest, "Auto Koko", "", false)
    Func.Toggle(_ItemQuest, "Auto Midnight blade", "", false)
    Func.Toggle(_ItemQuest, "Auto Rengoku", "", false)
    _ItemQuest:AddSection({"- [ Ectoplasm ] -"})
    Func.Toggle(_ItemQuest, "Auto Ectoplasm", "This Can Farm Ectoplasm in Item!", false)
    _ItemQuest:AddSection({"- [ Bartilo Quest ] -"})
    Func.Toggle(_ItemQuest, "Auto Bartilo Quest", "This Can Farm Bartilo Quest!", false)
    _ItemQuest:AddSection({"- [ Don Swan ] -"})
    Func.Toggle(_ItemQuest, "Auto Don Swan", "This Can Attack Boss Called (Don Swan)", false)
    _ItemQuest:AddSection({"- [ Dark Beard ] -"})
    Func.Toggle(_ItemQuest, "Auto Dark Beard", "This Get Dark Beard item!", false)
    _ItemQuest:AddSection({"- [ Cursed Captain ] -"})
    Func.Toggle(_ItemQuest, "Auto Cursed Captain", "This Attack Boss Cursed Captain!", false)
    _ItemQuest:AddSection({"- [ Law ] -"})
    Func.Toggle(_ItemQuest, "Auto Order Law", "This Attack Law Order!", false)
  elseif World[3] then
    _ItemQuest:AddSection("- [ Sword Item ] -")
    Func.Toggle(_ItemQuest, "Auto Twin Hooks", "", false)
    Func.Toggle(_ItemQuest, "Auto Buddy Sword", "", false)
    Func.Toggle(_ItemQuest, "Auto Canvander", "", false)
    Func.Toggle(_ItemQuest, "Auto Dark Dagger", "", false)
    Func.Toggle(_ItemQuest, "Auto Fox Lamp", "", false)
    Func.Toggle(_ItemQuest, "Auto Spikey Trident", "", false)
    Func.Toggle(_ItemQuest, "Auto Collect Yama", "", false)
    Func.Toggle(_ItemQuest, "Auto Tushita", "", false)
    Func.Toggle(_ItemQuest, "Auto CDK [Loading Update]", "", false)
    Func.Toggle(_ItemQuest, "Auto Hallow Scythe", "", false)
    _ItemQuest:AddSection({"- [ Gun Item ] -"})
    Func.Toggle(_ItemQuest, "Auto Serpent Bow", "", false)
    Func.Toggle(_ItemQuest, "Auto Soul Guitar", "", false)
    _ItemQuest:AddSection({"- [ Bones ] -"})
    local StatusBone = _ItemQuest:AddParagraph({"Bones Status", "Bones Total:"})

    task.spawn(function()
      while task.wait(1) do 
        StatusBone:Set("Bones Status", "Bones Total: ".. __env.VerifyMaterial("Bones")) 
      end
    end)

    Func.Toggle(_ItemQuest, "Auto Farm Bones", "This Farm Bone x4 or x5 or x3 Each", false)
    Func.Toggle(_ItemQuest, "Auto Trade Bones", "Trade Bones 50 (Bone >= 50)", false)
    _ItemQuest:AddSection({"- [ Cake Prince ] -"})
    local StatusC = _ItemQuest:AddParagraph({"Status Cake Prince"})

    task.spawn(function()
      while task.wait(1) do
        if __env.CheckMob({"Dough King"}) then
          StatusC:Set("Status Cake Prince", "Dough King : Spawned")
        elseif __env.CheckMob({"Cake Prince"}) then
          StatusC:Set("Status Cake Prince", "Cake Prince : Spawned")
        else
          StatusC:Set("Status Cake Prince", "Status : " .. string.gsub(tostring(CommF_:InvokeServer("CakePrinceSpawner", true)), "%D", ""))
        end
      end
    end)
    
    Func.Toggle(_ItemQuest, "Auto Cake Prince", "This Can Attack Mob Cake Prince or Something", false)
    Func.Toggle(_ItemQuest, "Auto Dough King", "This Attack Raid Boss Dough King", false)

    _ItemQuest:AddSection({"- [ Rip Indra ] -"})
    Func.Toggle(_ItemQuest, "Auto Active Haki Color", "This Get Haki Color", false)
    Func.Toggle(_ItemQuest, "Auto Rip Indra", "This Attack Raid Boss Rip Indra", false)
    _ItemQuest:AddSection({"- [ Elite Hunter ] -"})
    local StatusE = _ItemQuest:AddSection({"Status"})
    local GetNumE = _ItemQuest:AddSection({"Status"})

    task.spawn(function()
      while task.wait(1) do
        if __env.CheckMob({"Diablo","Deandre","Urban"}) then
          StatusE:Set("Elite Hunter : Spawned")
        else
          StatusE:Set("Elite Hunter : Not Spawn")
        end
      end
    end)
    task.spawn(function()
      while task.wait() do
        GetNumE:Set("Elite Hunter Progress : " .. tostring(CommF_:InvokeServer("EliteHunter", "Progress")))
      end
    end)

    Func.Toggle(_ItemQuest, "Auto Elite Hunter", "This Attack Urban / Deandre / Diablo", false) 
  end

  if World[2] or World[3] then
    _ItemQuest:AddSection({"- [ Haki Color ] -"})
    Func.Toggle(_ItemQuest, "Auto Buy Haki Color", "", false)
    Func.Toggle(_ItemQuest, "Auto Rainbow Haki", "", false)
    _ItemQuest:AddSection({"- [ Observation ] -"})
    local StatusObs = _ItemQuest:AddSection({"Total: None"})

    task.spawn(function()
      while task.wait(1) do
        StatusObs:Set({"Total: ".. Player.VisionRadius.Value})
      end
    end)

    Func.Toggle(_ItemQuest, "Auto Observation", "", false)
    Func.Toggle(_ItemQuest, "Auto Observation V2", "", false)
    Func.Toggle(_ItemQuest, "Observation Hop", "Hop For Find Materials", false)
  end
end

local _SeaEvent = Tabs.SeaEvent do
  _SeaEvent:AddSection({"- [ Kitsune Island ] -"})
  local FindKitsune = _SeaEvent:AddSection({"Status"})
  local StatsAzure = _SeaEvent:AddSection({"Status"})

  task.spawn(function()
    while task.wait(1) do
      if game.Workspace.Map:FindFirstChild("KitsuneIsland") then
        FindKitsune:Set("Kitsune Island : Spawned")
      else
        FindKitsune:Set("Kitsune Island : Not Spawn")
      end
    end
  end)

  task.spawn(function()
    while task.wait() do
      StatsAzure:Set("Total Azura Ember : ".. __env.VerifyMaterial("Azure Ember"))
    end
  end)
  Func.Toggle(_SeaEvent, "Tween To Kitsune Island", "Tween to Kitsune If Spawn Kitsune", false)
  Func.Toggle(_SeaEvent, "Auto Collect Azure Ember", "Collect Azure Ember", false)
  Func.Toggle(_SeaEvent, "Auto Trade Azure Ember", "", false)
  _SeaEvent:AddSection({"- [ Wood ] -"})
  Func.Toggle(_SeaEvent, "Auto Wood Planks", "Farm Get Wood Planks", false)
  _SeaEvent:AddSection({"- [ Sea Event ] -"})
  Func.Toggle(_SeaEvent, "Auto Farm Sea", "Farm Sea / Attack Mob In Sea Event", false)
  _SeaEvent:AddSection({"- [ Terrorshark ] -"})
  Func.Toggle(_SeaEvent, "Terrorshark", "Attack Raid Boss Terrorshark", true)
  Func.Toggle(_SeaEvent, "Auto Dodge Terrorshark Skill", "Dodge Skill Sea", true)
  _SeaEvent:AddSection({"- [ Sea Mob ] -"})
  Func.Toggle(_SeaEvent, "Piranha", "Attack Piranha Mob in Sea Event", true)
  Func.Toggle(_SeaEvent, "Shark", "Attack Shark Mob in Sea Event", true)
  Func.Toggle(_SeaEvent, "Fish Crew Member", "Attack Fish Crew Member Mob in Sea Event", true)
  _SeaEvent:AddSection({"- [ Attack Boat ] -"})
  Func.Toggle(_SeaEvent, "Ghost Ship", "Attack Ghost Ship in Sea Event", true)
  _SeaEvent:AddSection({"- [ Attack Sea Beast ] -"})
  Func.Toggle(_SeaEvent, "Sea Beast", "Attack Sea Beast in Sea Event", true)
  _SeaEvent:AddSection({"- [ Leviathan ] -"})
  local StatusFrozen = _SeaEvent:AddSection({"Status"})

  task.spawn(function()
    while task.wait(1) do
      if workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
        StatusFrozen:Set("Frozen Dimension : Spawned")
      else
        StatusFrozen:Set("Frozen Dimension : Not Spawn")
      end
    end
  end)

  Func.Toggle(_SeaEvent, "Tween To Frozen Dimension", "Spawned Frozen Dimension if Tween to", false)
  Func.Toggle(_SeaEvent, "Auto Summon Leviathan", "Only Buy Beast Hunter and Need Player 5+", false)
  Func.Toggle(_SeaEvent, "Auto Attack Leviathan", "Must Spawn First", false)
  Func.Toggle(_SeaEvent, "Auto Attack Leviathan Segment", "", false)
  Func.Toggle(_SeaEvent, "Auto Attack Leviathan Tail", "", false)
  Func.Toggle(_SeaEvent, "Tween To Heart Leviathan [BOAT TWEEN]", "", false)
  _SeaEvent:AddSection({"- [ Item ] -"})
  Func.Toggle(_SeaEvent, "Auto Shark Anchor", "", false)
  Func.Toggle(_SeaEvent, "Auto Monster Magnet", "", false)
  Func.Toggle(_SeaEvent, "Auto Terror Jaw", "", false)
  Func.Toggle(_SeaEvent, "Auto Shark Tooth Necklace", "", false)
  _SeaEvent:AddSection({"- [ Misc ] -"})
  Func.Toggle(_SeaEvent, "No Clip Rock", "", false)
  Func.Button(_SeaEvent, "No Fog", "", function()
    Lighting.FogEnd = 9e9
    for _, v in pairs(Lighting:GetDescendants()) do
      if v:IsA("Atmosphere") then
        v:Destroy()
      end
    end
    local Laysers = Lighting:FindFirstChild("LightingLayers")
    local SeaTerrorCC = Lighting:FindFirstChild("SeaTerrorCC")
    if Laysers then
      Laysers:Destroy()
    end
    if SeaTerrorCC then
      SeaTerrorCC:Destroy()
    end
  end)
  Func.Toggle(_SeaEvent, "Auto Dodge Sea Rough", "", true)
  Func.Toggle(_SeaEvent, "Protect Boat", "", true)
  _SeaEvent:AddSection({"- [ Settings Sea Event ] -"})
  Func.Dropdown(_SeaEvent, "Select Level Danger", "", {"1","2","3","4","5","6","infinity"}, "6")
  Func.Dropdown(_SeaEvent, "Select Boat", "", {"Pirate Brigade", "Pirate Grand Brigade", "Beast Hunter"}, "Pirate Brigade")
  Func.Slider(_SeaEvent, "Tween Boat Speed", 0, 500, 300)
  _SeaEvent:AddSection({"- [ Sea Event Skill ] -"})
  for _, skill in pairs({
    {"Z"},
    {"X"},
    {"C"},
    {"V"},
    {"F"}
  }) do
    Func.Toggle(_SeaEvent, "Skill " .. skill[1] .. " (Sea)", "", true)
  end
end

local _Stats = Tabs.Stats do
  Func.Slider(_Stats, "Set Point", 0, 100, 2)
  Func.Toggle(_Stats, "Melee", "", false)
  Func.Toggle(_Stats, "Defense", "", false)
  Func.Toggle(_Stats, "Sword", "", false)
  Func.Toggle(_Stats, "Gun", "", false)
  Func.Toggle(_Stats, "Devil Fruit", "", false)
end

local _Maps = Tabs.Maps do
  Func.Dropdown(_Maps, "Select Island", "", __env.IslandList(), "")
  Func.Toggle(_Maps, "Tween To Island", "", false)
  _Maps:AddSection({"- [ World ] -"})
  Func.Button(_Maps, "First World", "", function()CommF_:InvokeServer("TravelMain")end)
  Func.Button(_Maps, "Second World", "", function()CommF_:InvokeServer("TravelDressrosa")end)
  Func.Button(_Maps, "Third World", "", function()CommF_:InvokeServer("TravelZou")end)
  _Maps:AddSection({"- [ NPCs ] -"})
  Func.Dropdown(_Maps, "Select NPCs", "", __env.TableNPCs(), "")
  Func.Toggle(_Maps, "Tween To NPCs", "", false)
end

local _Shop = Tabs.Shop do
  Func.Toggle(_Shop, "Auto Buy Legendary Sword", "", false)
  Func.Toggle(_Shop, "Auto Buy True Triple Katana", "", false)
  for _, ShopName in ipairs({
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
  }) do
    local name, items = ShopName[1], ShopName[2]
    _Shop:AddSection({"- [ " .. name .. " ] -"})
    for _, item in ipairs(items) do
      local ButtonName, Funcs = item[1], item[2]
      local buyfunc = type(Funcs) == "table" and function()
        CommF_:InvokeServer(unpack(Funcs))
      end or Funcs
      _Shop:AddButton({ButtonName, buyfunc})
    end
  end
end

local _DevilFruit = Tabs.Devil do
  Func.Dropdown(_DevilFruit, "Select Fruit Sniper", "", __env.TableFruit(), "")
  Func.Toggle(_DevilFruit, "Auto Buy Fruit Sniper", "", false)
  _DevilFruit:AddSection({"- [ Fruit ] -"})
  Func.Toggle(_DevilFruit, "Auto Store Fruit", "", false)
  Func.Toggle(_DevilFruit, "Auto Random Fruit", "", false)
  Func.Toggle(_DevilFruit, "Auto Find Fruit", "", false)
end

local _PvP = Tabs.PvP do
  _PvP:AddSection({"- [ Config PvP ] -"})
  Func.Dropdown(_PvP, "Choose PvP", "", {"Neareast", "Select Player"}, "Neareast")
  Func.Dropdown(_PvP, "Choose Kill", "", {"Skill", "Click"}, "Click")
  Func.Dropdown(_PvP, "Choose Skill Equip", "", {"Melee","Sword","Blox Fruit","Gun","Random"}, "Blox Fruit")
  local UpdatePlayer = Func.Dropdown(_PvP, "Select Player", "", game.Players:GetPlayers(), "")
  Func.Button(_Maps, "Refersh Player", "", function()
    UpdatePlayer:Remove(game.Players:GetPlayers())
    UpdatePlayer:Set(game.Players:GetPlayers())
  end)
  _PvP:AddSection({"- [ Farming PvP ] -"})
  Func.Toggle(_PvP, "Auto Farm PvP", "This Farm PvP Meaning Attack Player In PvP", false)
  _PvP:AddSection({"- [ Misc PvP ] -"})
  Func.Toggle(_PvP, "Spectate Player", "", false)
  Func.Toggle(_PvP, "Teleport Player", "", false)
  _PvP:AddSection({"- [ Settings Skill PvP ] -"})
  for _, skill in ipairs({
    "Skill Z (PvP)",
    "Skill X (PvP)",
    "Skill C (PvP)",
    "Skill V (PvP)",
    "Skill F (PvP)"
  }) do
    Func.Toggle(_PvP, skill, "", true)
  end
  _PvP:AddSection({"- [ Aim ] -"})
  Func.Toggle(_PvP, "Silent Aim", "", false)
  Func.Toggle(_PvP, "Silent Aim (Gun)", "", false)
  _PvP:AddSection({"- [ Misc ] -"})
  Func.Toggle(_PvP, "Auto Enable PvP", "", false)
  Func.Toggle(_PvP, "Auto Use Ken", "", false)
end

local _Raid = Tabs.Raid do
  if World[2] or World[3] then
    Func.Dropdown(_Raid, "Select Chips", "", __env.ListChips(), "")
    Func.Toggle(_Raid, "Auto Buy Chips", "", false)
    Func.Toggle(_Raid, "Auto Farm Raid", "", false)
    Func.Toggle(_Raid, "Kill Aura", "", false)
  end
end

local _Race = Tabs.Race do
  local FindMirage = _Race:AddSection({"Status"})
  local SetUpdateMoon = _Race:AddSection({"Status"})

  local MoonPhases = {
    ["http://www.roblox.com/asset/?id=9709149431"] = "100% 🌝",
    ["http://www.roblox.com/asset/?id=9709149052"] = "75% 🌖",
    ["http://www.roblox.com/asset/?id=9709143733"] = "50% 🌗",
    ["http://www.roblox.com/asset/?id=9709150086"] = "50% 🌗",
    ["http://www.roblox.com/asset/?id=9709150401"] = "25% 🌘",
    ["http://www.roblox.com/asset/?id=9709149680"] = "15% 🌙",
    ["http://www.roblox.com/asset/?id=9709139597"] = "15% 🌙"
  }

  task.spawn(function()
    while task.wait(1) do
      if workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
        FindMirage:Set("Mirage Island : Spawned ")
      else
        FindMirage:Set("Mirage Island : Not Spawn")
      end
    end
  end)
  task.spawn(function()
    while task.wait(1) do
      local MoonP = MoonPhases[Lighting.Sky.MoonTextureId] or "0% 🌑"
      SetUpdateMoon:Set("Stats Moon : " .. MoonP .. " | " .. tostring(Lighting.TimeOfDay))
    end
  end)

  Func.Toggle(_Race, "Auto Summon Mirage Island", "This Summon, When Spawn Mirage At Chance ???%", false)
  Func.Toggle(_Race, "Tween To Mirage Island", "Spawn Mirage if Tween to Mirage", false)
  Func.Toggle(_Race, "Tween To Gear", "", false)
  Func.Toggle(_Race, "Tween To Gear Blue", "", false)
  Func.Toggle(_Race, "Tween To Highest Point", "This Mean Highest Mountain In Mirage Island", false)
  Func.Toggle(_Race, "Tween To Advanced Dealer", "Shop Fruit Advanced", false)

  _Race:AddSection({"Race Version"})
  _Race:AddSection({"Coming Soon"})
end

local _ESP = Tabs.ESP do
  Func.Toggle(_ESP, "ESP Player", "", false)
  Func.Toggle(_ESP, "ESP Chest", "", false)
  Func.Toggle(_ESP, "ESP Fruit", "", false)

  if World[2] then
    Func.Toggle(_ESP, "ESP Flower", "", false)
  elseif World[3] then
    Func.Toggle(_ESP, "ESP Mirage Island", "", false)
    Func.Toggle(_ESP, "ESP Kitsune Island", "", false)
  end
end

local _Misc = Tabs.Misc do
  _Misc:AddSection({"- [ Server ] -"})
  Func.Button(_Misc, "Hop Server", "", function()
    __env.Server(false, "", 0)
  end)
  Func.Button(_Misc, "Rejoin", "", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
  end)
  _Misc:AddSection({"- [ Team ] -"})
  Func.Button(_Misc, "Join Pirates Team", "", function()
    CommF_:InvokeServer("SetTeam", "Pirates")
  end)
  Func.Button(_Misc, "Join Marines Team", "", function()
    CommF_:InvokeServer("SetTeam", "Marines")
  end)
  _Misc:AddSection({"- [ Menu UI ] -"})
  Func.Button(_Misc, "Devil Fruit Shop", "", function()
    CommF_:InvokeServer("GetFruits")Player.PlayerGui.Main.FruitShop.Visible = true
  end)
  Func.Button(_Misc, "Titles", "", function()
    CommF_:InvokeServer("getTitles")Player.PlayerGui.Main.Titles.Visible = true
  end)
  Func.Button(_Misc, "Haki Color", "", function()
    Player.PlayerGui.Main.Colors.Visible = true
  end)
  _Misc:AddSection({"- [ Codes ] -"})
  Func.Button(_Misc, "Redeem Code", "", function()
    for _, CodeFunc in pairs({"NEWTROLL","KITT_RESET","Sub2Fer999","Magicbus","kittgaming","SECRET_ADMIN","EXP_5B","CONTROL","UPDATE11","XMASEXP","1BILLION","ShutDownFix2","UPD14","STRAWHATMAINE","TantaiGaming","Colosseum","Axiore","Sub2Daigrock","Sky Island 3","Sub2OfficialNoobie","SUB2NOOBMASTER123","THEGREATACE","Fountain City","BIGNEWS","FUDD10","SUB2GAMERROBOT_EXP1","UPD15","2BILLION","UPD16","3BVISITS","Starcodeheo","Bluxxy","DRAGONABUSE","Sub2CaptainMaui","DEVSCOOKING","Enyu_is_Pro","JCWK","Starcodeheo","Bluxxy","fudd10_v2","SUB2GAMERROBOT_EXP1","Sub2NoobMaster123","Sub2UncleKizaru","Sub2Daigrock","Axiore","TantaiGaming","StrawHatMaine"}) do
      Remotes.Redeem:InvokeServer(CodeFunc)
    end
  end)
  _Misc:AddSection({"- [ Remove ] -"})
  Func.Toggle(_Misc, "Remove Damage", "", false)
  Func.Toggle(_Misc, "Remove Notifications", "", false)
  _Misc:AddSection({"- [ Reduce Lag ] -"})

  local function reduce(v)
    if v:IsA("Part") then
      v.Material = Enum.Material.Plastic
    elseif v:IsA("Light") or v:IsA("Effect") then
      v:Destroy()
    elseif v:IsA("Texture") then
      v:Destroy()
    end
  end
  local function Descendants(container)
    for _, v in pairs(container:GetDescendants()) do
      reduce(v)
    end
    container.DescendantAdded:Connect(reduce)
  end
  Func.Button(_Misc, "Anti-Crash", "", function()
    Descendants(Lighting)Descendants(workspace)
  end)
  Func.Button(_Misc, "Reduce Lag", "", function()
    for _, v in pairs(workspace:GetDescendants()) do
      if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
        v.Material = Enum.Material.SmoothPlastic
        reduce(v)
      end
    end
  end)

  _Misc:AddSection({"- [ Other ] -"})
  Func.Toggle(_Misc, "Walk On Water", "", true)
end

local _Settings = Tabs.Settings do
  Func.Toggle(_Settings, "Auto Haki", "", true)
  Func.Toggle(_Settings, "Auto Ken", "", false)
  _Settings:AddSection({"- [ System Script ] -"})
  Func.Button(_Settings, "Reset Script / Save Config", "", function()
    if isfile("Speed Hub X") then
      delfile("Speed Hub X")
    end
  end)
end

Window:SelectTab(Tabs.Main)
