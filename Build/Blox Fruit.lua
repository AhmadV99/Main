loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()
local Library = loadstring(game:HttpGet("https://speedhubxv3-library.surge.sh"))() -- i dont care, you can use this library free :)
local World1, World2, World3 = game.PlaceId == 2753915549, game.PlaceId == 4442272183, game.PlaceId == 7449423635
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local CommF_ = ReplicatedStorage.Remotes.CommF_

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
    end, Flag = "SpeedHubX/Toggle/"..Name})
    return Ver
end
local function Dropdown(Tab, Name, Desc, Option, Default)
  local Ver = Tab:AddDropdown({
    Name = Name,Description = Desc or "",Options = Option,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end, Flag = "SpeedHubX/Dropdown/"..Name})
    return Ver
end
local function Silder(Tab, Name, Min, Max, Default)
  local Ver = Tab:AddSlider({
    Name = Name,Min = Min,Max = Max,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end, Flag = "SpeedHubX/Slider/"..Name})
    return Ver
end

Home:AddSection({"Local Player"})
Silder(Home, "Set WalkSpeed", 0, 500, 300)
Toggle(Home, "Enable WalkSpeed", "This Can Set Walk Speed!", false)
local Main = Window:MakeTab({"Main", "home"})
Main:AddSection({"Config"})
Dropdown(Main, "Weapon Tool", "Weapon + Equip = Equiped Weapon", {"Melee","Sword","Blox Fruit","Gun"}, "Melee")
Silder(Main, "Tween Speed", 0, 500, 200)
Silder(Main, "Farm Distance", 0, 100, 40)
Silder(Main, "Bring Mob Radius", 0, 500, 200)
Toggle(Main, "Bring Mob", "This Can Bring Mob 5+ or 6+ Each", true)
local Attack = Toggle(Main, "Fast Attack", "This Fast Attack Can Attack a Mob in Fast", true)
Silder(Main, "Fast Attack Delay", 0, 20, 1)
Toggle(Main, "Hop if Admin or Staff", "", true)
Main:AddSection("Farming")
Toggle(Main, "Auto Farm Level", "This Can Farm Level!", false)
Toggle(Main, "Auto Farm Nearest", "This Can Attack Nearest Mob!", false)
if World3 then
    Toggle(Main, "Auto Pirates Sea", "This Can Attack Rip Indra Or Something!", false)
elseif World2 then
    Toggle(Main, "Auto Factory", "This Can Attack Core!", false)
end
Main:AddSection("Farming Mastery")
Toggle(Main, "Farm Mastery", "Only Farm Level, Not All", false)
Silder(Main, "Matery Health", 0, 100, 25)
Main:AddSection("Skill Mastery")
Toggle(Main, "Skill Z", "", true)Toggle(Main, "Skill X", "", true)Toggle(Main, "Skill C", "", true)Toggle(Main, "Skill V", "", true)Toggle(Main, "Skill F", "", true)
Main:AddSection("Farming Chest")
Dropdown(Main, "Choose Chest Area", "", {"Mirage Island", "Island Other"}, "Island Other")
Toggle(Main, "Auto Collect Chest", "Stop Collect Chest if Get God's Chalice or Fist of Darkness", false)
Toggle(Main, "Auto Hop", "Hop if No Found Chest", false)
Main:AddSection("Bosses")
local BossList = Dropdown(Main, "Choose Boss", "", getgenv().TableBoss, "")
Main:AddButton({Name = "Refersh Boss", Description = "", Callback = function()
    BossList:Set(getgenv().TableBoss)
end})
Toggle(Main, "Auto Attack Boss", "This Can Attack a Mob Bosses!", false)
Toggle(Main, "Auto Attack Boss All", "This Can Attack a Mob Bosses All!", false)
Main:AddButton({Name = "Hop Server", Description = "", Callback = function()Server("Hop1")end})
Main:AddSection("Material")
Dropdown(Main, "Choose Material", "", getgenv().MaterialList, "")
Toggle(Main, "Auto Farm Material", "This Can Farm Material Item!", false)
local ItemQuest = Window:MakeTab({"Item/Quest", "swords"})
if World1 then
  Toggle(ItemQuest, "Auto Sea Second", "Only Get Level 700 if Auto Sea Second!", false)
  ItemQuest:AddSection("Item")
  Toggle(ItemQuest, "Auto Unlock Saber", "Only Get Level 200 if Auto Unlock Saber!", false)
  Toggle(ItemQuest, "Auto Pole", "This Can Get Pole Item!", false)
elseif World2 then
  ItemQuest:AddSection("Sea")
  Toggle(ItemQuest, "Auto Sea Third", "This Can Get Sea Third then Travel Third World!", false)
  ItemQuest:AddSection("Item Sword")
  Toggle(ItemQuest, "Auto Dragon Trident", "", false)
  Toggle(ItemQuest, "Auto Gravity Cane", "", false)
  Toggle(ItemQuest, "Auto Jitte", "", false)
  Toggle(ItemQuest, "Auto Longsword", "", false)
  Toggle(ItemQuest, "Auto Koko", "", false)
  Toggle(ItemQuest, "Auto Midnight blade", "", false)
  Toggle(ItemQuest, "Auto Rengoku", "", false)
  ItemQuest:AddSection({"Ectoplasm"})
  Toggle(ItemQuest, "Auto Ectoplasm", "This Can Farm Ectoplasm in Item!", false)
  Toggle(ItemQuest, "Auto Bartilo Quest", "This Can Farm Bartilo Quest!", false)
  ItemQuest:AddSection({"Don Swan"})
  Toggle(ItemQuest, "Auto Don Swan", "This Can Attack Boss Called (Don Swan)", false)
  ItemQuest:AddSection({"Race Evo"})
  Toggle(ItemQuest, "Auto Race Evo", "This Get Race Evo!", false)
  ItemQuest:AddSection({"Dark Beard"})
  Toggle(ItemQuest, "Auto Dark Beard", "This Get Dark Beard item!", false)
  ItemQuest:AddSection({"Cursed Captain"})
  Toggle(ItemQuest, "Auto Cursed Captain", "This Attack Boss Cursed Captain!", false)
  ItemQuest:AddSection({"Law"})
  Toggle(ItemQuest, "Auto Order Law", "This Attack Law Order!", false)
elseif Sea3 then
  ItemQuest:AddSection("Sword Item")
  Toggle(ItemQuest, "Auto Twin Hooks", "", false)
  Toggle(ItemQuest, "Auto Buddy Sword", "", false)
  Toggle(ItemQuest, "Auto Canvander", "", false)
  Toggle(ItemQuest, "Auto Dark Dagger", "", false)
  Toggle(ItemQuest, "Auto Fox Lamp", "", false)
  Toggle(ItemQuest, "Auto Craft Shark Anchor", "", false)
  Toggle(ItemQuest, "Auto Spikey Trident", "", false)
  Toggle(ItemQuest, "Auto Collect Yama", "", false)
  Toggle(ItemQuest, "Auto Tushita", "", false)
  Toggle(ItemQuest, "Auto CDK", "", false)
  Toggle(ItemQuest, "Auto Hallow Scythe", "", false)
  ItemQuest:AddSection({"Gun Item"})
  Toggle(ItemQuest, "Auto Serpent Bow", "", false)
  Toggle(ItemQuest, "Auto Soul Guitar [Loading Update]", "", false)
  ItemQuest:AddSection({"Bones"})
  local StatusBone = ItemQuest:AddParagraph({"Bones Status", "Bones Total:"})
  task.spawn(function()
    while task.wait() do 
      StatusBone:Set("Bones Status", "Bones Total: ".. VerifyMaterial("Bones")) 
    end 
  end)
  Toggle(ItemQuest, "Auto Farm Bones", "This Farm Bone x4 or x5 or x3 Each", false)
  Toggle(ItemQuest, "Auto Trade Bones", "Trade Bones 50 (Bone >= 50)", false)
  ItemQuest:AddSection({"Cake Prince"})
  local StatusC = ItemQuest:AddParagraph({"Status Cake Prince"})
  task.spawn(function()
    while task.wait() do
      if CheckMob({"Dough King"}) then
        StatusC:Set("Dough King : Spawned")
      elseif FindNPC({"Cake Prince"}) then
        StatusC:Set("Cake Prince : Spawned")
      else
        StatusC:Set("Status Cake Prince", "Status : " .. string.gsub(tostring(CommF_:InvokeServer("CakePrinceSpawner", true)), "%D", ""))
      end
    end
  end)
end
Toggle(ItemQuest, "Auto Cake Prince", "This Can Attack Mob Cake Prince or Something", false)
Toggle(ItemQuest, "Auto Dough King", "This Attack Raid Boss Dough King", false)
ItemQuest:AddSection({"Rip Indra"})
Toggle(ItemQuest, "Auto Active Haki Color", "This Get Haki Color", false)
Toggle(ItemQuest, "Auto Rip Indra", "This Attack Raid Boss Rip Indra", false)
ItemQuest:AddSection({"Elite Hunter"})
local StatusE = ItemQuest:AddSection({"Status"})
local GetNumE = ItemQuest:AddSection({"Status"})
task.spawn(function()
  while task.wait() do
    if CheckMob({"Diablo","Deandre","Urban"}) then
      StatusE:Set("Elite Hunter : Spawned")
    else
      StatusE:Set("Elite Hunter : Not Spawn")
    end
  end
end)
task.spawn(function()
  while task.wait() do
    GetNumE:Set("Elite Hunter Progress : " .. CommF_:InvokeServer("EliteHunter", "Progress"))
  end
end)
Toggle(ItemQuest, "Auto Elite Hunter", "This Attack Urban / Deandre / Diablo", false)
if World2 or World3 then
  ItemQuest:AddSection({"Fighting Style"})
  Toggle(ItemQuest, "Auto Death Step", "", false)
  Toggle(ItemQuest, "Auto Electric Claw", "", false)
  Toggle(ItemQuest, "Auto Sharkman Karate", "", false)
  Toggle(ItemQuest, "Auto Dragon Talon", "", false)
  Toggle(ItemQuest, "Auto Superhuman", "", false)
  Toggle(ItemQuest, "Auto God Human", "", false)
  Toggle(ItemQuest, "Auto Sanguine Art", "", false)
  ItemQuest:AddSection({"Haki Color"})
  Toggle(ItemQuest, "Auto Buy Haki Color", "", false)
  Toggle(ItemQuest, "Auto Rainbow Haki", "", false)
end

if World1 or World2 or World3 then
  ItemQuest:AddSection({"Observation"})
  local StatusObs = ItemQuest:AddSection({"Total: None"})
  task.spawn(function()
    while task.wait() do
      StatusObs:Set({"Total: ".. Player.VisionRadius.Value})
    end
  end)
  Toggle(ItemQuest, "Auto Observation", "", false)
  Toggle(ItemQuest, "Auto Observation V2", "", false)
  Toggle(ItemQuest, "Observation Hop", "Hop For Find Materials", false)
end
return SpeedHubX
