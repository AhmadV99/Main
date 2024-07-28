loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.lua"))()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

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

local _hookfunc1 = hookfunction or hookfunc or (function() end)
local _require1 = require or (function() end)

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
  Item_Quest = Window:MakeTab({"Item/Quest", "swords"})
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
    _ItemQuest:AddSection({"- [ Race Evo ] -"})
    Func.Toggle(_ItemQuest, "Auto Race Evo", "This Get Race Evo!", false)
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
        StatusBone:Set("Bones Status", "Bones Total: ".. VerifyMaterial("Bones")) 
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
  end
end

Window:SelectTab(Tabs.Main)
