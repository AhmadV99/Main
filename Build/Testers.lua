loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.lua"))()
local World1, World2, World3 = game.PlaceId == 2753915549, game.PlaceId == 4442272183, game.PlaceId == 7449423635
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local Remotes = ReplicatedStorage.Remotes
local CommF_ = Remotes.CommF_

task.spawn(function() -- Remove Effect
  local _hookfunc1 = hookfunction or hookfunc or (function(...)return...end)
  local _require1 = require or (function(...)return...end)
  local Container = ReplicatedStorage.Effect.Container
  local CameraShaker = _require1(ReplicatedStorage.Util.CameraShaker)
  local Death = _require1(Container:FindFirstChild("Death"))
  local Respawn = _require1(Container:FindFirstChild("Respawn"))
  local DisplayNPC = _require1(ReplicatedStorage:FindFirstChild("GuideModule")).ChangeDisplayedNPC
  _hookfunc1(Death, function()return nil end)
  _hookfunc1(Respawn, function()return nil end)
  _hookfunc1(DisplayNPC, function()return nil end)
  CameraShaker:Stop()
end)

local Window = Library:MakeWindow({
    Title = "Speed Hub X | " .. Version,
    SaveFolder = "Speed Hub X"
});Window:AddMinimizeButton({
    Button = {Image = "rbxassetid://16022917595"},
    Corner = {CornerRadius = UDim.new(0, 5)}
})
local Home = Window:MakeTab({"Home", "scan-face"})
Home:AddDiscordInvite({
    Name = "Speed Hub X | Official Server",
    Logo = "rbxassetid://16022917595",
    Invite = Discord
})
local SpeedHubX = {}
local function Toggle(Tab, Name, Desc, Default)
  local Ver = Tab:AddToggle({
    Name = Name,Description = Desc or "",Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end, Flag = "SpeedHubX/Toggle/" .. Name})
    return Ver
end
local function Dropdown(Tab, Name, Desc, Option, Default)
  local Ver = Tab:AddDropdown({
    Name = Name,Description = Desc or "",Options = Option,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end, Flag = "SpeedHubX/Dropdown/" .. Name})
    return Ver
end
local function Silder(Tab, Name, Min, Max, Default)
  local Ver = Tab:AddSlider({
    Name = Name,Min = Min,Max = Max,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end, Flag = "SpeedHubX/Slider/" .. Name})
    return Ver
end

Home:AddSection({"- [ Local Player ] -"})
Silder(Home, "Set WalkSpeed", 0, 500, 300)
Toggle(Home, "Enable WalkSpeed", "This Can Set Walk Speed!", false)
local Config = Window:MakeTab({"Config", "rbxassetid://18361516966"})

Dropdown(Config, "Weapon Tool", "Weapon + Equip = Equiped Weapon", {"Melee","Sword","Blox Fruit","Gun"}, "Melee")
Silder(Config, "Tween Speed", 0, 500, 200)
Silder(Config, "Farm Distance", 0, 100, 40)
Silder(Config, "Bring Mob Radius", 0, 500, 200)
Toggle(Config, "Bring Mob", "This Can Bring Mob 5+ or 6+ Each", true)
Toggle(Config, "Fast Attack", "This Fast Attack Can Attack a Mob in Fast", true)
Silder(Config, "Fast Attack Delay", 0, 20, 0)
Toggle(Config, "Hop if Admin or Staff", "", true)
Toggle(Config, "Auto Dodge Skill", "This is BETA", false)
Config:AddSection("- [ Race ] -")
Toggle(Config, "Auto Use Race V3", "", false)
Toggle(Config, "Auto Use Race V4", "", false)
Config:AddSection("- [ Body ] -")
Toggle(Config, "Anti-Knockback", "", false)

local Main = Window:MakeTab({"Main", "home"})

Main:AddSection("- [ Farming ] -")
Toggle(Main, "Auto Farm Level", "This Can Farm Level!", false)
Toggle(Main, "Auto Farm Nearest", "This Can Attack Nearest Mob!", false)

if World3 then
  Toggle(Main, "Auto Pirates Sea", "This Can Attack Rip Indra Or Something!", false)
elseif World2 then
  Toggle(Main, "Auto Factory", "This Can Attack Core!", false)
end

Main:AddSection("- [ Farming Mastery ] -")
Dropdown(Main, "Choose Mastery Mode", "", {"Level","Bone","Cake Prince","Nearest"}, "Level")
Dropdown(Main, "Choose Mastery Tool", "", {"Blox Fruit","Sword","Gun"}, "Blox Fruit")
Toggle(Main, "Farm Mastery", "", false)
Silder(Main, "Mastery Health", 0, 100, 25)
Main:AddSection("- [ Skill Mastery ] -")
Toggle(Main, "Skill Z", "", true)Toggle(Main, "Skill X", "", true)Toggle(Main, "Skill C", "", true)Toggle(Main, "Skill V", "", true)Toggle(Main, "Skill F", "", true)
Main:AddSection("- [ Farming Chest ] -")
Dropdown(Main, "Choose Chest Area", "", {"Mirage Island", "Island Other"}, "Island Other")
Toggle(Main, "Auto Collect Chest", "Stop Collect Chest if Get God's Chalice or Fist of Darkness", false)
Toggle(Main, "Auto Hop", "Hop if No Found Chest", false)
Main:AddSection("- [ Bosses ] -")
local BossList = Dropdown(Main, "Choose Boss", "", getgenv().TableBoss, "")
Main:AddButton({Name = "Refersh Boss", Description = "", Callback = function()
  BossList:Remove(getgenv().TableBoss)
  BossList:Set(getgenv().TableBoss)
end})
Toggle(Main, "Auto Attack Boss", "This Can Attack a Mob Bosses!", false)
Toggle(Main, "Auto Attack Boss All", "This Can Attack a Mob Bosses All!", false)
Main:AddButton({Name = "Hop Server", Description = "", Callback = function()getgenv().Server("Hop1")end})
Main:AddSection("- [ Material ] -")
Dropdown(Main, "Choose Material", "", getgenv().MaterialList, "")
Toggle(Main, "Auto Farm Material", "This Can Farm Material Item!", false)

local ItemQuest = Window:MakeTab({"Item/Quest", "swords"})
if World1 then
  Toggle(ItemQuest, "Auto Sea Second", "Only Get Level 700 if Auto Sea Second!", false)
  ItemQuest:AddSection("- [ Item ] -")
  Toggle(ItemQuest, "Auto Unlock Saber", "Only Get Level 200 if Auto Unlock Saber!", false)
  Toggle(ItemQuest, "Auto Pole", "This Can Get Pole Item!", false)
elseif World2 then
  ItemQuest:AddSection("- [ Sea ] -")
  Toggle(ItemQuest, "Auto Sea Third", "This Can Get Sea Third then Travel Third World!", false)
  ItemQuest:AddSection("- [ Item Sword ] -")
  Toggle(ItemQuest, "Auto Dragon Trident", "", false)
  Toggle(ItemQuest, "Auto Gravity Cane", "", false)
  Toggle(ItemQuest, "Auto Jitte", "", false)
  Toggle(ItemQuest, "Auto Longsword", "", false)
  Toggle(ItemQuest, "Auto Koko", "", false)
  Toggle(ItemQuest, "Auto Midnight blade", "", false)
  Toggle(ItemQuest, "Auto Rengoku", "", false)
  ItemQuest:AddSection({"- [ Ectoplasm ] -"})
  Toggle(ItemQuest, "Auto Ectoplasm", "This Can Farm Ectoplasm in Item!", false)
  Toggle(ItemQuest, "Auto Bartilo Quest", "This Can Farm Bartilo Quest!", false)
  ItemQuest:AddSection({"- [ Don Swan ] -"})
  Toggle(ItemQuest, "Auto Don Swan", "This Can Attack Boss Called (Don Swan)", false)
  ItemQuest:AddSection({"- [ Race Evo ] -"})
  Toggle(ItemQuest, "Auto Race Evo", "This Get Race Evo!", false)
  ItemQuest:AddSection({"- [ Dark Beard ] -"})
  Toggle(ItemQuest, "Auto Dark Beard", "This Get Dark Beard item!", false)
  ItemQuest:AddSection({"- [ Cursed Captain ] -"})
  Toggle(ItemQuest, "Auto Cursed Captain", "This Attack Boss Cursed Captain!", false)
  ItemQuest:AddSection({"- [ Law ] -"})
  Toggle(ItemQuest, "Auto Order Law", "This Attack Law Order!", false)
elseif World3 then
  ItemQuest:AddSection("- [ Sword Item ] -")
  Toggle(ItemQuest, "Auto Twin Hooks", "", false)
  Toggle(ItemQuest, "Auto Buddy Sword", "", false)
  Toggle(ItemQuest, "Auto Canvander", "", false)
  Toggle(ItemQuest, "Auto Dark Dagger", "", false)
  Toggle(ItemQuest, "Auto Fox Lamp", "", false)
  Toggle(ItemQuest, "Auto Spikey Trident", "", false)
  Toggle(ItemQuest, "Auto Collect Yama", "", false)
  Toggle(ItemQuest, "Auto Tushita", "", false)
  Toggle(ItemQuest, "Auto CDK [Loading Update]", "", false)
  Toggle(ItemQuest, "Auto Hallow Scythe", "", false)
  ItemQuest:AddSection({"- [ Gun Item ] -"})
  Toggle(ItemQuest, "Auto Serpent Bow", "", false)
  Toggle(ItemQuest, "Auto Soul Guitar", "", false)
  ItemQuest:AddSection({"- [ Bones ] -"})
  local StatusBone = ItemQuest:AddParagraph({"Bones Status", "Bones Total:"})
  task.spawn(function()
    while task.wait(1) do 
      local Bones = VerifyMaterial("Bones")
      StatusBone:Set("Bones Status", "Bones Total: ".. Bones) 
    end 
  end)
  Toggle(ItemQuest, "Auto Farm Bones", "This Farm Bone x4 or x5 or x3 Each", false)
  Toggle(ItemQuest, "Auto Trade Bones", "Trade Bones 50 (Bone >= 50)", false)
  ItemQuest:AddSection({"- [ Cake Prince ] -"})
  local StatusC = ItemQuest:AddParagraph({"Status Cake Prince"})
  task.spawn(function()
    while task.wait(1) do
      if getgenv().CheckMob({"Dough King"}) then
        StatusC:Set("Dough King : Spawned")
      elseif getgenv().CheckMob({"Cake Prince"}) then
        StatusC:Set("Cake Prince : Spawned")
      else
        StatusC:Set("Status Cake Prince", "Status : " .. getgenv().CheckMob("CakePrinceSpawner"))
      end
    end
  end)
  Toggle(ItemQuest, "Auto Cake Prince", "This Can Attack Mob Cake Prince or Something", false)
  Toggle(ItemQuest, "Auto Dough King", "This Attack Raid Boss Dough King", false)
  ItemQuest:AddSection({"- [ Rip Indra ] -"})
  Toggle(ItemQuest, "Auto Active Haki Color", "This Get Haki Color", false)
  Toggle(ItemQuest, "Auto Rip Indra", "This Attack Raid Boss Rip Indra", false)
  ItemQuest:AddSection({"- [ Elite Hunter ] -"})
  local StatusE = ItemQuest:AddSection({"Status"})
  local GetNumE = ItemQuest:AddSection({"Status"})
  task.spawn(function()
    while task.wait(2) do
      if getgenv().CheckMob({"Diablo","Deandre","Urban"}) then
        StatusE:Set("Elite Hunter : Spawned")
      else
        StatusE:Set("Elite Hunter : Not Spawn")
       end
    end
  end)
  task.spawn(function()
    while task.wait(2) do
      local Progress = CommF_:InvokeServer("EliteHunter", "Progress")
      GetNumE:Set("Elite Hunter Progress : " .. Progress)
      end
    end)
  Toggle(ItemQuest, "Auto Elite Hunter", "This Attack Urban / Deandre / Diablo", false)
end

if World2 or World3 then
  ItemQuest:AddSection({"- [ Fighting Style ] -"})
  Toggle(ItemQuest, "Auto Death Step", "", false)
  Toggle(ItemQuest, "Auto Electric Claw", "", false)
  Toggle(ItemQuest, "Auto Sharkman Karate", "", false)
  Toggle(ItemQuest, "Auto Dragon Talon", "", false)
  Toggle(ItemQuest, "Auto Superhuman", "", false)
  Toggle(ItemQuest, "Auto God Human", "", false)
  Toggle(ItemQuest, "Auto Sanguine Art", "", false)
  ItemQuest:AddSection({"- [ Haki Color ] -"})
  Toggle(ItemQuest, "Auto Buy Haki Color", "", false)
  Toggle(ItemQuest, "Auto Rainbow Haki", "", false)
end

if World1 or World2 or World3 then
  ItemQuest:AddSection({"- [ Observation ] -"})
  local StatusObs = ItemQuest:AddSection({"Total: None"})
  task.spawn(function()
    while task.wait(2) do
      StatusObs:Set({"Total: ".. Player.VisionRadius.Value})
    end
  end)
  Toggle(ItemQuest, "Auto Observation", "", false)
  Toggle(ItemQuest, "Auto Observation V2", "", false)
  Toggle(ItemQuest, "Observation Hop", "Hop For Find Materials", false)
end

if World2 or World3 then
  local SeaEvent = Window:MakeTab({"Sea Event", "rbxassetid://16175025368"})
  SeaEvent:AddSection({"- [ Kitsune Island ] -"})
  local FindKitsune = SeaEvent:AddSection({"Status"})
  local StatsAzure = SeaEvent:AddSection({"Status"})
  task.spawn(function()
    while task.wait(2) do
      if getgenv().VerifyIsland("Kitsune Island Path") then
        FindKitsune:Set("Kitsune Island : Spawned")
      else
        FindKitsune:Set("Kitsune Island : Not Spawn")
      end
    end
  end)
  task.spawn(function()
    while task.wait(2) do
      StatsAzure:Set("Total Azura Ember : "..VerifyMaterial("Azure Ember"))
    end
  end)
  Toggle(SeaEvent, "Tween To Kitsune Island", "Tween to Kitsune If Spawn Kitsune", false)
  Toggle(SeaEvent, "Auto Collect Azure Ember", "Collect Azure Ember", false)
  Toggle(SeaEvent, "Auto Trade Azure Ember", "", false)
  SeaEvent:AddSection({"- [ Wood ] -"})
  Toggle(SeaEvent, "Auto Wood Planks", "Farm Get Wood Planks", false)
  SeaEvent:AddSection({"- [ Sea Event ] -"})
  Toggle(SeaEvent, "Auto Farm Sea", "Farm Sea / Attack Mob In Sea Event", false)
  SeaEvent:AddSection({"- [ Terrorshark ] -"})
  Toggle(SeaEvent, "Terrorshark", "Attack Raid Boss Terrorshark", true)
  Toggle(SeaEvent, "Auto Dodge Terrorshark Skill", "Dodge Skill Sea", true)
  SeaEvent:AddSection({"- [ Sea Mob ] -"})
  Toggle(SeaEvent, "Piranha", "Attack Piranha Mob in Sea Event", true)
  Toggle(SeaEvent, "Shark", "Attack Shark Mob in Sea Event", true)
  Toggle(SeaEvent, "Fish Crew Member", "Attack Fish Crew Member Mob in Sea Event", true)
  SeaEvent:AddSection({"- [ Attack Boat ] -"})
  Toggle(SeaEvent, "Ghost Ship", "Attack Ghost Ship in Sea Event", true)
  SeaEvent:AddSection({"- [ Attack Sea Beast ] -"})
  Toggle(SeaEvent, "Sea Beast", "Attack Sea Beast in Sea Event", true)
  SeaEvent:AddSection({"- [ Leviathan ] -"})
  local StatusFrozen = SeaEvent:AddSection({"Status"})
  task.spawn(function()
    while task.wait(2) do
      if getgenv().VerifyIsland("Frozen Dimension Path") then
        StatusFrozen:Set("Frozen Dimension : Spawned")
      else
        StatusFrozen:Set("Frozen Dimension : Not Spawn")
      end
    end
  end)
  Toggle(SeaEvent, "Tween To Frozen Dimension", "Spawned Frozen Dimension if Tween to", false)
  Toggle(SeaEvent, "Auto Summon Leviathan", "Only Buy Beast Hunter and Need Player 5+", false)
  Toggle(SeaEvent, "Auto Attack Leviathan", "Must Spawn First", false)
  Toggle(SeaEvent, "Auto Attack Leviathan Segment", "", false)
  Toggle(SeaEvent, "Auto Attack Leviathan Tail", "", false)
  Toggle(SeaEvent, "Tween To Heart Leviathan [BOAT TWEEN]", "", false)
  SeaEvent:AddSection({"- [ Item ] -"})
  Toggle(SeaEvent, "Auto Shark Anchor", "", false)
  Toggle(SeaEvent, "Auto Monster Magnet", "", false)
  Toggle(SeaEvent, "Auto Terror Jaw", "", false)
  Toggle(SeaEvent, "Auto Shark Tooth Necklace", "", false)
  SeaEvent:AddSection({"- [ Misc ] -"})
  Toggle(SeaEvent, "No Clip Rock", "", false)
  SeaEvent:AddButton({Name = "No Fog", Description = "", Callback = function()
    getgenv().NoFog()
  end})
  Toggle(SeaEvent, "Auto Dodge Sea Rough", "", true)
  Toggle(SeaEvent, "Protect Boat", "", true)
  SeaEvent:AddSection({"- [ Settings Sea Event ] -"})
  Dropdown(SeaEvent, "Select Level Danger", "", {"1","2","3","4","5","6","infinity"}, "6")
  Dropdown(SeaEvent, "Select Boat", "", {"Pirate Brigade", "Pirate Grand Brigade", "Beast Hunter"}, "Pirate Brigade")
  Silder(SeaEvent, "Tween Boat Speed", 0, 500, 300)
  SeaEvent:AddSection({"- [ Sea Event Skill ] -"})
  Toggle(SeaEvent, "Skill Z (Sea)", "", true)Toggle(SeaEvent, "Skill X (Sea)", "", true)Toggle(SeaEvent, "Skill C (Sea)", "", true)Toggle(SeaEvent, "Skill V (Sea)", "", true)Toggle(SeaEvent, "Skill F (Sea)", "", true)
end

local Stats = Window:MakeTab({"Stats", "plus-circle"})
Silder(Stats, "Set Point", 0, 100, 2)
Toggle(Stats, "Melee", "", false)
Toggle(Stats, "Defense", "", false)
Toggle(Stats, "Sword", "", false)
Toggle(Stats, "Gun", "", false)
Toggle(Stats, "Devil Fruit", "", false)

local Maps = Window:MakeTab({"Maps", "rbxassetid://6035190846"})
Dropdown(Maps, "Select Island", "", getgenv().IslandList, "")
Toggle(Maps, "Tween To Island", "", false)
Maps:AddSection({"- [ World ] -"})
Maps:AddButton({Name = "First World",Callback = function()getgenv().Server("TravelMain")end})
Maps:AddButton({Name = "Second World",Callback = function()getgenv().Server("TravelDressrosa")end})
Maps:AddButton({Name = "Third World",Callback = function()getgenv().Server("TravelZou")end})
Maps:AddSection({"- [ NPCs ] -"})
Dropdown(Maps, "Select NPCs", "", getgenv().TableNPCs, "")
Toggle(Maps, "Tween To NPCs", "", false)

local Shop = Window:MakeTab({"Shop", "rbxassetid://6031265976"})
Shop:AddSection({"- [ Other ] -"})
Toggle(Shop, "Auto Buy Legendary Sword", "", false)
Toggle(Shop, "Auto Buy True Triple Katana", "", false)
getgenv().AddShop(Shop)
local DevilFruit = Window:MakeTab({"Devil Fruit", "apple"})
Dropdown(DevilFruit, "Select Fruit Sniper", "", getgenv().TableFruit, "")
Toggle(DevilFruit, "Auto Buy Fruit Sniper", "", false)
DevilFruit:AddSection({"- [ Fruit ] -"})
Toggle(DevilFruit, "Auto Store Fruit", "", false)
Toggle(DevilFruit, "Auto Random Fruit", "", false)
Toggle(DevilFruit, "Auto Find Fruit", "", false)

local PvP = Window:MakeTab({"PvP", "rbxassetid://16053202595"})
PvP:AddSection({"- [ Config PvP ] -"})
Dropdown(PvP, "Choose PvP", "", {"Neareast", "Select Player"}, "Neareast")
Dropdown(PvP, "Choose Kill", "", {"Skill", "Click"}, "Click")
Dropdown(PvP, "Choose Skill Equip", "", {"Melee","Sword","Blox Fruit","Gun", "Random Equip"}, "Blox Fruit")
local Update1 = Dropdown(PvP, "Select Player", "", getgenv().TablePlayer, "")
PvP:AddButton({Name = "Refersh Player", Description = "", Callback = function()
  Update1:Remove(getgenv().TablePlayer)
  Update1:Set(getgenv().TablePlayer)
end})
PvP:AddSection({"- [ Farming PvP ] -"})
Toggle(PvP, "Auto Farm PvP", "This Farm PvP Meaning Attack Player In PvP", false)
PvP:AddSection({"- [ Misc PvP ] -"})
Toggle(PvP, "Spectate Player", "", false)
Toggle(PvP, "Teleport Player", "", false)
PvP:AddSection({"- [ Settings Skill PvP ] -"})
Toggle(PvP, "Skill Z (PvP)", "", true)Toggle(PvP, "Skill X (PvP)", "", true)Toggle(PvP, "Skill C (PvP)", "", true)Toggle(PvP, "Skill V (PvP)", "", true)Toggle(PvP, "Skill F (PvP)", "", true)
PvP:AddSection({"- [ Aim ] -"})
Toggle(PvP, "Silent Aim", "", false)
Toggle(PvP, "Aimlock", "", false)
Toggle(PvP, "Silent Aim (Gun)", "", false)
PvP:AddSection({"- [ Gun ] -"})
Toggle(PvP, "Auto Shoot Player (Gun)", "", false)
PvP:AddSection({"- [ Misc ] -"})
Toggle(PvP, "Auto Enable PvP", "", false)
Toggle(PvP, "Auto Use Ken", "", false)

if World2 or World3 then
  local Raid = Window:MakeTab({"Raid", "rbxassetid://11446957539"})
  Dropdown(Raid, "Select Chips", "", getgenv().ListChips, "")
  Toggle(Raid, "Auto Buy Chips", "", false)
  Toggle(Raid, "Auto Farm Raid", "", false)
  Toggle(Raid, "Kill Aura", "", false)
  local RaceV4 = Window:MakeTab({"Race V4", "rbxassetid://11446900930"})
  local FindMirage = RaceV4:AddSection({"Status"})
  local FindMiragePuzzle = RaceV4:AddSection({"Status"})
  local SetUpdateMoon = RaceV4:AddSection({"Status"})
  getgenv().CheckMoon(SetUpdateMoon)
  task.spawn(function()
    while task.wait(2) do
      if getgenv().VerifyIsland("Mirage Island Path") then
        FindMirage:Set("Mirage Island : Spawned ")
      else
        FindMirage:Set("Mirage Island : Not Spawn")
      end
    end
  end)
  task.spawn(function()
    while task.wait(2) do
      if CommF_:InvokeServer("CheckTempleDoor") then
        FindMiragePuzzle:Set("Mirage Puzzle : Spawned ")
      else
        FindMiragePuzzle:Set("Mirage Puzzle : Not Spawn ")
      end
    end
  end)
  Toggle(RaceV4, "Auto Summon Mirage Island", "This Summon, When Spawn Mirage At Chance ???%", false)
  Toggle(RaceV4, "Tween To Mirage Island", "Spawn Mirage if Tween to Mirage", false)
  Toggle(RaceV4, "Tween To Gear", "", false)
  Toggle(RaceV4, "Tween To Gear Blue", "", false)
  Toggle(RaceV4, "Tween To Highest Point", "This Mean Highest Mountain In Mirage Island", false)
  Toggle(RaceV4, "Tween To Advanced Dealer", "Shop Fruit Advanced", false)
  RaceV4:AddSection({"- [ Race ] -"})
  Toggle(RaceV4, "Auto Complete Trial", "Finish All Trial", false)
  Toggle(RaceV4, "Auto Mirage Puzzle", "Get Mirage Puzzle", false)
  Toggle(RaceV4, "Auto Kill Player In Trial", "Kill Player After Trial", false)
  Toggle(RaceV4, "Auto Buy Gear", "", false)
  Toggle(RaceV4, "Auto Awakening One Quest", "", false)
  RaceV4:AddSection({"- [ Active Race ] -"})
  Toggle(RaceV4, "Auto Use Race V3", "", false)
  Toggle(RaceV4, "Auto Use Race V4", "", false)
  RaceV4:AddSection({"- [ Tween Race ] -"})
  Dropdown(RaceV4, "Select Tween Race", "", {"Top Great Tree","Timple Of Time","Lever Pull", "Acient One", "Cyborg Door", "Fish Door", "Ghoul Door", "Human Door", "Mink Door", "Sky Door"}, "Timple Of Time")
  Toggle(RaceV4, "Tween On Select Tween Race", "", false)
end

local ESP = Window:MakeTab({"ESP", "mountain-snow"})
Toggle(ESP, "ESP Player", "", false)
Toggle(ESP, "ESP Chest", "", false)
Toggle(ESP, "ESP Fruit", "", false)
if World2 then
  Toggle(ESP, "ESP Flower", "", false)
elseif World3 then
  Toggle(ESP, "ESP Mirage Island", "", false)
  Toggle(ESP, "ESP Kitsune Island", "", false)
end

local Misc = Window:MakeTab({"Miscellaneous", "rbxassetid://11447063791"})
Misc:AddSection({"- [ Server ] -"})
Misc:AddButton({Name = "Server Hop",Callback = function()getgenv().Server("Hop")end})
Misc:AddButton({Name = "Server Hop [Low Player]",Callback = function()getgenv().Server("Hop1")end})
Misc:AddButton({Name = "Rejoin",Callback = function()getgenv().Server("Rejoin")end})
Misc:AddSection({"- [ Team ] -"})
Misc:AddButton({Name = "Join Pirates Team",Callback = function()CommF_:InvokeServer("SetTeam", "Pirates")end})
Misc:AddButton({Name = "Join Marines Team",Callback = function()CommF_:InvokeServer("SetTeam", "Marines")end})
Misc:AddSection({"- [ Menu UI ] -"})
Misc:AddButton({Name = "Devil Fruit Shop",Callback = function()CommF_:InvokeServer("GetFruits")Player.PlayerGui.Main.FruitShop.Visible = true end})
Misc:AddButton({Name = "Titles",Callback = function()CommF_:InvokeServer("getTitles")Player.PlayerGui.Main.Titles.Visible = true end})
Misc:AddButton({Name = "Haki Color",Callback = function()Player.PlayerGui.Main.Colors.Visible = true end})

Misc:AddSection({"Codes"})
Misc:AddButton({Name = "Redeem Codes",Callback = function()
  for _, CodeFunc in pairs({"NEWTROLL","KITT_RESET","Sub2Fer999","Magicbus","kittgaming","SECRET_ADMIN","EXP_5B","CONTROL","UPDATE11","XMASEXP","1BILLION","ShutDownFix2","UPD14","STRAWHATMAINE","TantaiGaming","Colosseum","Axiore","Sub2Daigrock","Sky Island 3","Sub2OfficialNoobie","SUB2NOOBMASTER123","THEGREATACE","Fountain City","BIGNEWS","FUDD10","SUB2GAMERROBOT_EXP1","UPD15","2BILLION","UPD16","3BVISITS","Starcodeheo","Bluxxy","DRAGONABUSE","Sub2CaptainMaui","DEVSCOOKING","Enyu_is_Pro","JCWK","Starcodeheo","Bluxxy","fudd10_v2","SUB2GAMERROBOT_EXP1","Sub2NoobMaster123","Sub2UncleKizaru","Sub2Daigrock","Axiore","TantaiGaming","StrawHatMaine"}) do
    Remotes.Redeem:InvokeServer(CodeFunc)
  end
end})

Misc:AddSection({"- [ Remove ] -"})
Toggle(Misc, "Remove Damage", "", false)
Toggle(Misc, "Remove Notifications", "", false)
Misc:AddSection({"- [ Reduce Lag ] -"})
Misc:AddButton({Name = "Anti-Crash",Callback = function()FixLag(1)end})
Misc:AddButton({Name = "Reduce Lag",Callback = function()FixLag(2)end})
Misc:AddSection({"- [ Other ] -"})
Toggle(Misc, "Walk On Water", "", true)
local Settings = Window:MakeTab({"Settings", "settings"})
Toggle(Settings, "Auto Haki", "", true)
Toggle(Settings, "Auto Ken", "", false)
Settings:AddSection({"- [ System Script ] -"})
Settings:AddButton({Name = "Reset Script / Save Config",Callback = function()
  if isfile("Speed Hub X") then
    delfile("Speed Hub X")
  end
end})
Window:SelectTab(2)
return SpeedHubX
