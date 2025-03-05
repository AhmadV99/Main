local ScriptEnv = ...

local Settings, Connections = ScriptEnv.Settings, ScriptEnv.Connections

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CollectionService = game:GetService("CollectionService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local Stepped = RunService.Stepped
local Player = Players.LocalPlayer

local WorldOrigin = workspace._WorldOrigin
local Characters = workspace.Characters
local Enemies = workspace.Enemies

local EnemySpawns = WorldOrigin.EnemySpawns

local Data = Player.Data
local Money = Data.Beli

local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local CommF, CommE = Remotes.CommF_, Remotes.CommE
local Net, Flags = Modules.Net, Modules.Flags

local _ENV = (getgenv or getrenv or getfenv)()

local HIDDEN_SETTINGS: { [string]: any } = {
  SHOW_CALLBACK_ERROS = false, -- BETA
  IGNORE_BOSSES_QUESTS = true,
  ATTACK_DISTANCE = 50,
  HITS_TO_RESET_COMBO = 4
}

local function GetEnemyName(string: string): string
  return (string:find("Lv. ") and string:gsub(" %pLv. %d+%p", "") or string):gsub(" %pBoss%p", "")
end

local function CreateNewClear()
  local COUNT_NEWINDEX = 0
  
  return {
    __newindex = function(self, index, value)
      if COUNT_NEWINDEX >= 50 then
        for key, cache in pairs(self) do
          if typeof(cache) == "Instance" and not cache:IsDescendantOf(game) then
            rawset(self, key, nil)
          end
        end
        COUNT_NEWINDEX = 0
      end
      
      COUNT_NEWINDEX += 1
      return rawset(self, index, value)
    end
  }
end

local function CreateDictionary(array: { string }, key: any?): { [string]: any }
  local Dictionary = {}
  
  for _, string in ipairs(array) do
    Dictionary[string] = if type(key) == "table" then {} else key
  end
  
  return Dictionary
end

local function CheckPlayerAlly(__Player: Player): boolean
  if tostring(__Player.Team) == "Marines" and __Player.Team == Player.Team then
    return false
  elseif __Player:HasTag(`Ally{Player.Name}`) or Player:HasTag(`Ally{__Player.Name}`) then
    return false
  end
  
  return true
end


local Module = {
  SpawnLocations = {},
  EnemyLocations = {}
}

local Cached = {
  Closest = nil,
  Humanoids = CreateNewClear(),
  Enemies = {},
  Bring = {}
}

local Debounce = {
  GetEnemy = 0
}

Module.GameData = {
  CurrentSea = ({ [2753915549] = 1, [4442272183] = 2, [7449423635] = 3 })[game.PlaceId] or 0,
  SeasName = { "Main", "Dressrosa", "Zou" },
  MaxMastery = 600,
  MaxLevel = 2600
}

function Module.IsAlive(Character: Model): boolean?
  local Humanoid = Character and (Cached.Humanoids[Character] or Character:FindFirstChildOfClass("Humanoid"))
  
  if Humanoid then
    if not Cached.Humanoids[Character] then
      Cached.Humanoids[Character] = Humanoid
    end
    
    return Humanoid.Health > 0
  end
end

function Module.EnableBuso()
  local Character = Player.Character
  local IsAlive = Module.IsAlive(Character)
  
  if Settings.AutoBuso and IsAlive and not Character:FindFirstChild("HasBuso") then
    if Character:HasTag("Buso") then
      Module.Network:InvokeServer("Buso")
    elseif Money.Value >= 25e3 then
      Module.Network:InvokeServer("BuyHaki", "Buso")
    end
  end
end

function Module.EquipTool(ToolName: string, ByType: boolean?): (nil)
  ByType = if not ToolName then true else ByType
  ToolName = ToolName or Settings.FarmTool
  
  if not Module.IsAlive(Player.Character) then
    return nil
  end
  
  local Equipped = Cached.Equipped
  
  if Equipped and Equipped.Parent and Equipped[if ByType then "ToolTip" else "Name"] == ToolName then
    if Equipped:GetAttribute("Locks") then
      Equipped:SetAttribute("Locks", nil)
    end
    
    if Equipped.Parent == Player.Backpack then
      Player.Character.Humanoid:EquipTool(Equipped)
    elseif Equipped.Parent == Player.Character then
      return nil
    end
  end
  
  if ToolName and not ByType then
    local BackpackTool = Player.Backpack:FindFirstChild(ToolName)
    
    if BackpackTool then
      Cached.Equipped = BackpackTool
      Player.Character.Humanoid:EquipTool(BackpackTool)
    end
  else
    for _, Tool in Player.Backpack:GetChildren() do
      if Tool:IsA("Tool") and Tool.ToolTip == ToolName then
        Cached.Equipped = Tool
        Player.Character.Humanoid:EquipTool(Tool)
        return nil
      end
    end
  end
end

function Module:TravelTo(Sea: number?): (nil)
  return self.Network:InvokeServer(`Travel{self.GameData.SeasName[Sea]}`)
end

function Module:BringEnemies(ToEnemy: Instance, SuperBring: boolean?): (nil)
  if not self.IsAlive(ToEnemy) or not ToEnemy.PrimaryPart then
    return nil
  end
  
  pcall(sethiddenproperty, Player, "SimulationRadius", 500)
  
  if Settings.BringMobs then
    Module.IsSuperBring = if SuperBring then true else false
    
    local Name = ToEnemy.Name
    local Position = (Player.Character or Player.CharacterAdded:Wait()):GetPivot().Position
    local Target = ToEnemy.PrimaryPart.CFrame
    local BringPositionTag = if SuperBring then "ALL_MOBS" else Name
    
    if not Cached.Bring[BringPositionTag] or (Target.Position - Cached.Bring[BringPositionTag].Position).Magnitude > 25 then
      Cached.Bring[BringPositionTag] = Target
    end
    
    local EnemyList = (not SuperBring and self.Enemies:GetTagged(Name)) or Enemies:GetChildren()
    
    for i = 1, #EnemyList do
      local Enemy = EnemyList[i]
      if (not SuperBring and Enemy.Name ~= Name) or Enemy.Parent ~= Enemies then continue end
      if not Enemy.PrimaryPart or Enemy.PrimaryPart:FindFirstChild("__Attachment") then continue end
      if not Enemy:FindFirstChild("CharacterReady") then continue end
      
      if self.IsAlive(Enemy) then
        if (Position - Enemy.PrimaryPart.Position).Magnitude < Settings.BringDistance then
          Enemy.Humanoid.WalkSpeed = 0
          Enemy.Humanoid.JumpPower = 0
          task.spawn(self.Enemies.Bring, self.Enemies, Enemy)
        end
      end
    end
  else
    if not Cached.Bring[ToEnemy] then
      Cached.Bring[ToEnemy] = ToEnemy.PrimaryPart.CFrame
    end
    
    ToEnemy.PrimaryPart.CFrame = Cached.Bring[ToEnemy]
  end
end
  
Module.UtilsModules = (function()
  local UtilsModules = {}
  
  UtilsModules.TweenCreator = function()
    local module = {}
    module.__index = module
    
    local TweenService = game:GetService("TweenService")
    
    local tweens = {}
    local EasingStyle = Enum.EasingStyle.Linear
    
    function module.new(obj, time, prop, value)
      local self = setmetatable({}, module)
      
      self.tween = TweenService:Create(obj, TweenInfo.new(time, EasingStyle), { [prop] = value })
      self.tween:Play()
      self.value = value
      self.object = obj
      
      if tweens[obj] then
        tweens[obj]:destroy()
      end
      
      tweens[obj] = self
      return self
    end
    
    function module:destroy()
      self.tween:Pause()
      self.tween:Destroy()
      
      tweens[self.object] = nil
      setmetatable(self, nil)
    end
    
    function module:stop(obj)
      if tweens[obj] then
        tweens[obj]:destroy()
      end
    end
    
    return module
  end
  
  UtilsModules.FarmQueue = function(Options)
    local Success, ErrorMessage = pcall(function()
      while task.wait() do
        local Enabled = false
        
        for _, Option in Options do
          Settings.RunningOption = Option.Name
          local Method = Option.Function()
          
          if Method then
            Settings.RunningMethod = type(Method) == "string" and Method
            Enabled = true; break
          else
            Settings.RunningOption, Settings.RunningMethod = nil, nil
          end
        end
        
        _ENV.OnFarm = (_ENV.teleporting or Enabled)
      end
    end)
    
    _ENV.OnFarm = nil
    _ENV.loadedFarm = nil
    
    local Message = Instance.new("Message", workspace)
    ScriptEnv.error_message = Message
    Message.Text = (`script Error [ {Settings.RunningOption or "Null"} ] {ErrorMessage}`)
  end
  
  UtilsModules.OptionsPlugin = function(EnabledOptions)
    local Plugin = {}
    
    local function GetSafeCallback(Callback, IsToggle)
      if IsToggle and type(Callback) == "string" then
        local Flag = Callback
        
        Callback = function(Value)
          EnabledOptions[Flag] = Value
        end
      end
      
      if HIDDEN_SETTINGS.SHOW_CALLBACK_ERROS then
        return nil
      else
        return Callback
      end
    end
    
    function Plugin:Button(Config, Callback)
      Callback = GetSafeCallback(Callback)
      
      Config[1] = Config[1] or Config.Title
      Config[2] = Config[2] or Config.Description
      
      local Button = self:AddButton(unpack(Config))
      
      return Button, Button.OnClick:Connect(Callback)
    end
    
    function Plugin:Toggle(Config, Callback)
      Callback = GetSafeCallback(Callback, true)
      
      local Title = Config[1] or Config.Title
      local Description = Config.Description or (type(Config[2] or Config[3]) == "string" and (Config[2] or Config[3])) or ""
      local Default = Config.Status or (type(Config[2] or Config[3]) == "boolean" and (Config[2] or Config[3])) or false
      
      local Toggle = self:AddToggle(Title, Description, Default)
      
      return Toggle, Toggle.OnToggle:Connect(Callback)
    end
    
    function Plugin:Slider(Config, Callback)
      Callback = GetSafeCallback(Callback)
      
      local Title = Config[1] or Config.Title
      local Description = Config.Description or (type(Config[2]) == "string" and Config[2]) or ""
      
      local Start = if Description == "" then 1 else 2
      local Default = Config.Status or Config[Start + 1] or error(`Default Value Expected, param {Start + 1}`)
      local Min = Config.Min or Config[Start + 2] or error(`Min Value Expected, param {Start + 2}`)
      local Max = Config.Max or Config[Start + 3] or error(`Max Value Expected, param {Start + 3}`)
      
      local Slider = self:AddSlider(Title, Description, Default, Min, Max)
      
      return Slider, Slider.ValueUpdated:Connect(Callback)
    end
    
    return Plugin
  end
  
  UtilsModules.Quests = function(Quests, Blacklisted, Levels)
    local IgnoreBosses = HIDDEN_SETTINGS.IGNORE_BOSSES_QUESTS
    local NewQuests = {}
    
    local EnemyTask = function(Quest)
      local Enemies, Position = {}, {}
      
      for Enemy, Kills in pairs(Quest.Task) do
        if IgnoreBosses and Kills <= 1 then
          return nil
        end
        
        local NewEnemies = Module.EnemyLocations[Enemy] or {}
        Module.EnemyLocations[Enemy] = NewEnemies
        
        table.insert(Enemies, Enemy)
        Position = NewEnemies
      end
      
      return Enemies, Position
    end
    
    for QuestName, QuestData in pairs(Quests) do
      if table.find(Blacklisted, QuestName) then continue end
      
      for i = 1, #QuestData do
        local Quest = QuestData[i]
        local LevelReq = Quest.LevelReq
        
        if LevelReq >= Levels.Min and LevelReq < Levels.Max then
          local Target, Positions = EnemyTask(Quest)
          
          if Target and Positions then
            table.insert(NewQuests, {
              Enemy = { Name = Target, Level = LevelReq, Position = Positions },
              Name = QuestName,
              Count = i
            })
          end
        end
      end
    end
    
    table.sort(NewQuests, function(v1, v2) return v1.Enemy.Level < v2.Enemy.Level end)
    return NewQuests
  end
  
  return UtilsModules
end)()

Module.Network = (function()
  local Network = {}
  
  function Network:RemoteFunction(Name: string): RemoteFunction
    return Net["RF/" .. Name]
  end
  
  function Network:RemoteEvent(Name: string): RemoteEvent
    return Net["RE/" .. Name]
  end
  
  function Network:InvokeServer(...): any?
    return CommF:InvokeServer(...)
  end
  
  return Network
end)()

Module.Enemies = (function()
  local EnemiesModule = setmetatable(CreateDictionary({
    "__CakePrince", "__PirateRaid", "__RaidBoss", "__Bones", "__Elite", "__Others"
  }, {}), {
    __call = function(self, EnemyName)
      if (tick() - Debounce.GetEnemy) <= 0.25 then
        return nil
      end
      
      local Enemy = if type(EnemyName) == "table" then self:GetClosest(EnemyName) else self:GetEnemyByTag(EnemyName)
      
      if Enemy then
        return Enemy
      elseif Settings.SmoothMode then
        Debounce.GetEnemy = tick()
      end
    end
  })
  
  local Signals = Module.Signals
  local IsAlive = Module.IsAlive
  local SeaCastle = CFrame.new(-5556, 314, -2988)
  
  local Elites = CreateDictionary({ "Deandre", "Diablo", "Urban" }, true)
  local Bones = CreateDictionary({ "Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy" }, true)
  local CakePrince = CreateDictionary({ "Head Baker", "Baking Staff", "Cake Guard", "Cookie Crafter" }, true)
  
  local Attachment = Instance.new("Attachment") do
    local AlignPosition = Instance.new("AlignPosition")
    AlignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
    AlignPosition.Position = Vector3.new(0, 20, 0)
    AlignPosition.Responsiveness = 200
    AlignPosition.MaxForce = math.huge
    AlignPosition.Parent = Attachment
    AlignPosition.Attachment0 = Attachment
    Attachment.Name = "__Attachment"
  end
  
  local function newEnemy(List, Enemy)
    if table.find(List, Enemy) then
      return nil
    end
    
    local Humanoid = Enemy:WaitForChild("Humanoid")
    
    if Humanoid and Humanoid.Health > 0 then
      table.insert(List, Enemy)
      Humanoid.Died:Wait()
      table.remove(List, table.find(List, Enemy))
    end
  end
  
  local function PirateRaidEnemy(Enemy)
    local Humanoid = Enemy:WaitForChild("Humanoid")
    
    if not Humanoid or Humanoid.Health <= 0 then
      return nil
    end
    
    local HumanoidRootPart = Enemy:WaitForChild("HumanoidRootPart")
    
    if HumanoidRootPart and (Enemy.Name ~= "rip_indra True Form" and Enemy.Name ~= "Blank Buddy") then
      if (HumanoidRootPart.Position - SeaCastle.Position).Magnitude <= 750 then
        task.spawn(newEnemy, EnemiesModule.__PirateRaid, Enemy)
        Module.PirateRaid = tick()
      end
    end
  end
  
  local function EnemyAdded(Enemy)
    local Name = Enemy.Name
    local Others = EnemiesModule.__Others
    
    if EnemiesModule[`__{Name}`] then
      task.spawn(newEnemy, EnemiesModule[`__{Name}`], Enemy)
    elseif Enemy:GetAttribute("RaidBoss") then
      task.spawn(newEnemy, EnemiesModule.__RaidBoss, Enemy)
    elseif Elites[Name] then
      task.spawn(newEnemy, EnemiesModule.__Elite, Enemy)
    elseif Bones[Name] then
      task.spawn(newEnemy, EnemiesModule.__Bones, Enemy)
    elseif CakePrince[Name] then
      task.spawn(newEnemy, EnemiesModule.__CakePrince, Enemy)
    end
    
    if Module.GameData.Sea == 3 then
      task.spawn(PirateRaidEnemy, Enemy)
    end
    
    Others[Name] = Others[Name] or {}
    task.spawn(newEnemy, Others[Name], Enemy)
  end
  
  function EnemiesModule.IsSpawned(EnemyName: string): boolean
    local Cached = Module.SpawnLocations[EnemyName]
    
    if Cached and Cached.Parent then
      return (Cached:GetAttribute("Active") or EnemiesModule:GetEnemyByTag(EnemyName)) and true or false
    end
    
    return EnemiesModule:GetEnemyByTag(EnemyName) and true or false
  end
  
  function EnemiesModule:GetTagged(TagName: string): table?
    return self[`__{TagName}`] or self.__Others[TagName]
  end
  
  function EnemiesModule:GetEnemyByTag(TagName: string): Model?
    local CachedEnemy = Cached.Enemies[TagName]
    
    if CachedEnemy and IsAlive(CachedEnemy) then
      return CachedEnemy
    end
    
    local Enemies = self:GetTagged(TagName)
    
    if Enemies and #Enemies > 0 then
      for i = 1, #Enemies do
        local Enemy = Enemies[i]
        
        if IsAlive(Enemy) then
          Cached.Enemies[TagName] = Enemy
          return Enemy
        end
      end
    end
  end
  
  function EnemiesModule:GetClosest(Enemies: table): Model?
    local SpecialTag = table.concat(Enemies, ".")
    local CachedEnemy = Cached.Enemies[SpecialTag]
    
    if CachedEnemy and IsAlive(CachedEnemy) then
      return CachedEnemy
    end
    
    local Distance, Nearest = math.huge
    
    for i = 1, #Enemies do
      local Enemy = self:GetClosestByTag(Enemies[i])
      local Magnitude = Enemy and Player:DistanceFromCharacter(Enemy.PrimaryPart.Position)
      
      if Enemy and Magnitude <= Distance then
        Distance, Nearest = Magnitude, Enemy
      end
    end
    
    if Nearest then
      Cached.Enemies[SpecialTag] = Nearest
      return Nearest
    end
  end
  
  function EnemiesModule:GetClosestByTag(TagName: string): Model?
    local CachedEnemy = Cached.Enemies[TagName]
    
    if CachedEnemy and IsAlive(CachedEnemy) then
      return CachedEnemy
    end
    
    local Enemies = self:GetTagged(TagName)
    
    if Enemies and #Enemies > 0 then
      local Distance, Nearest = math.huge
      
      local Position = (Player.Character or Player.CharacterAdded()):GetPivot().Position
      
      for i = 1, #Enemies do
        local Enemy = Enemies[i]
        local PrimaryPart = Enemy.PrimaryPart
        
        if PrimaryPart and IsAlive(Enemy) then
          local Magnitude = (Position - PrimaryPart.Position).Magnitude
          
          if Magnitude <= 15 then
            Cached.Enemies[TagName] = Enemy
            return Enemy
          elseif Magnitude <= Distance then
            Distance, Nearest = Magnitude, Enemy
          end
        end
      end
      
      if Nearest then
        Cached.Enemies[TagName] = Nearest
        return Nearest
      end
    end
  end
  
  function EnemiesModule:Bring(Enemy)
    local RootPart = Enemy:WaitForChild("HumanoidRootPart")
    local Humanoid = Enemy:WaitForChild("Humanoid")
    local EnemyName = Enemy.Name
    
    local CloneAttachment = Attachment:Clone()
    local AlignPosition = CloneAttachment.AlignPosition
    CloneAttachment.Parent = RootPart
    
    while Enemy and Enemy.Parent == Enemies do
      if not Humanoid or Humanoid.Health <= 0 then break end
      if not RootPart or RootPart.Parent ~= Enemy then break end
      
      local Target = Cached.Bring[if Module.IsSuperBring then "ALL_MOBS" else EnemyName]
      
      if Target and (Target.Position - RootPart.Position).Magnitude <= Settings.BringDistance then
        if AlignPosition.Position ~= Target.Position then
          AlignPosition.Position = Target.Position
        end
      else
        break
      end;task.wait()
    end
    
    if CloneAttachment then CloneAttachment:Destroy() end
  end
  
  for _, Enemy in CollectionService:GetTagged("BasicMob") do EnemyAdded(Enemy) end
  table.insert(Connections, CollectionService:GetInstanceAddedSignal("BasicMob"):Connect(EnemyAdded))
  
  return EnemiesModule
end)()

Module.Inventory = (function()
  local Inventory = {
    Unlocked = setmetatable({}, { __index = function() return false end }),
    Mastery = setmetatable({}, { __index = function() return 0 end }),
    Count = setmetatable({}, { __index = function() return 0 end }),
    MasteryRequirements = {},
    Items = {}
  }
  
  function Inventory:UpdateItem(item)
    if type(item) == "table" then
      if item.Type == "Wear" then
        item.Type = "Accessory"
      end
      
      local Name = item.Name
      
      self.Items[Name] = item
      
      if not self.Unlocked[Name] then self.Unlocked[Name] = true end
      if item.Count then self.Count[Name] = item.Count end
      if item.Mastery then self.Mastery[Name] = item.Mastery end
      if item.MasteryRequirements then self.MasteryRequirements[Name] = item.MasteryRequirements end
    end
  end
  
  function Inventory:RemoveItem(ItemName)
    if type(ItemName) == "string" then
      self.Unlocked[ItemName] = nil
      self.Mastery[ItemName] = nil
      self.Count[ItemName] = nil
      self.Items[ItemName] = nil
    end
  end
  
  local function OnClientEvent(Method, ...)
    if Method == "ItemChanged" then
      Inventory:UpdateItem(...)
    elseif Method == "ItemAdded" then
      Inventory:UpdateItem(...)
    elseif Method == "ItemRemoved" then
      Inventory:RemoveItem(...)
    end
  end
  
  task.defer(function()
    table.insert(Connections, CommE.OnClientEvent:Connect(OnClientEvent))
    
    local InventoryData = Module.Network:InvokeServer("getInventory")
    
    for i = 1, #InventoryData do
      Inventory:UpdateItem( InventoryData[i] )
    end
  end)
  
  return Inventory
end)()

Module.Tween = (function()
  local BodyVelocity = Instance.new("BodyVelocity")
  BodyVelocity.Velocity = Vector3.zero
  BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  BodyVelocity.P = 1000
  
  if _ENV.tween_bodyvelocity then
    _ENV.tween_bodyvelocity:Destroy()
  end
  
  _ENV.tween_bodyvelocity = BodyVelocity
  
  local IsAlive = Module.IsAlive
  
  local BaseParts = {} do
    local function AddObjectToBaseParts(Object)
      if Object:IsA("BasePart") and Object.CanCollide then
        table.insert(BaseParts, Object)
      end
    end
    
    local function RemoveObjectsFromBaseParts(BasePart)
      local index = table.find(BaseParts, BasePart)
      
      if index then
        table.remove(BaseParts, index)
      end
    end
    
    local function NewCharacter(Character)
      table.clear(BaseParts)
      
      for _, Object in ipairs(Character:GetDescendants()) do AddObjectToBaseParts(Object) end
      Character.DescendantAdded:Connect(AddObjectToBaseParts)
      Character.DescendantRemoving:Connect(RemoveObjectsFromBaseParts)
      
      Character:WaitForChild("Humanoid", 9e9).Died:Wait()
      table.clear(BaseParts)
    end
    
    table.insert(Connections, Player.CharacterAdded:Connect(NewCharacter))
    if Player.Character then task.spawn(NewCharacter, Player.Character) end
  end
  
  local function NoClipOnStepped(Character)
    if not IsAlive(Character) then
      return nil
    end
    
    if _ENV.OnFarm and not Player:HasTag("Teleporting") then
      Player:AddTag("Teleporting")
    elseif not _ENV.OnFarm and Player:HasTag("Teleporting") then
      Player:RemoveTag("Teleporting")
    end
    
    if _ENV.OnFarm then
      for i = 1, #BaseParts do
        local BasePart = BaseParts[i]
        
        if BasePart.CanCollide then
          BasePart.CanCollide = false
        end
      end
    elseif Character.PrimaryPart and (not Character.PrimaryPart.CanCollide or not Character.PrimaryPart.CanTouch) then
      for i = 1, #BaseParts do
        BaseParts[i].CanCollide = true
      end
    end
  end
  
  local function UpdateVelocityOnStepped(Character)
    local RootPart = Character and Character:FindFirstChild("UpperTorso")
    local Humanoid = Character and Character:FindFirstChild("Humanoid")
    local BodyVelocity = _ENV.tween_bodyvelocity
    
    if _ENV.OnFarm and RootPart and Humanoid and Humanoid.Health > 0 then
      if BodyVelocity.Parent ~= RootPart then
        BodyVelocity.Parent = RootPart
      end
    else
      if BodyVelocity.Parent then
        BodyVelocity.Parent = nil
      end
    end
    
    if BodyVelocity.Velocity ~= Vector3.zero and (not Humanoid or not Humanoid.SeatPart or not _ENV.OnFarm) then
      BodyVelocity.Velocity = Vector3.zero
    end
  end
  
  table.insert(Connections, Stepped:Connect(function()
    local Character = Player.Character
    UpdateVelocityOnStepped(Character)
    NoClipOnStepped(Character)
  end))
  
  return BodyVelocity
end)()

task.spawn(function()
  local SpawnLocations = Module.SpawnLocations
  local EnemyLocations = Module.EnemyLocations
  
  local function NewSpawn(Part)
    local EnemyName = GetEnemyName(Part.Name)
    EnemyLocations[EnemyName] = EnemyLocations[EnemyName] or {}
    
    local EnemySpawn = Part.CFrame + Vector3.new(0, 25, 0)
    SpawnLocations[EnemyName] = Part
    
    if not table.find(EnemyLocations[EnemyName], EnemySpawn) then
      table.insert(EnemyLocations[EnemyName], EnemySpawn)
    end
  end
  
  for _, Spawn in EnemySpawns:GetChildren() do NewSpawn(Spawn) end
  table.insert(Connections, EnemySpawns.ChildAdded:Connect(NewSpawn))
end)

Module.FastAttack = (function()
  local FastAttack = {
    attackMobs = true,
    attackPlayers = true,
    
    Debounce = 0,
    ComboDebounce = 0,
    M1Combo = 0,
    
    HitboxLimbs = {"RightLowerArm", "RightUpperArm", "LeftLowerArm", "LeftUpperArm", "RightHand", "LeftHand"}
  }
  
  local IsAlive = Module.IsAlive
  local Network = Module.Network
  
  local RegisterAttack: RemoteEvent = Network:RemoteEvent("RegisterAttack")
  local ShootGunEvent: RemoteEvent = Network:RemoteEvent("ShootGunEvent")
  local RegisterHit: RemoteEvent = Network:RemoteEvent("RegisterHit")
  
  local SUCCESS_FLAGS, COMBAT_REMOTE_THREAD = pcall(function()
    return require(Flags).COMBAT_REMOTE_THREAD or false
  end)
  
  local HIT_FUNCTION; task.defer(function()
    local PlayerScripts = Player:WaitForChild("PlayerScripts")
    local LocalScript = PlayerScripts:FindFirstChildOfClass("LocalScript")
    
    while not LocalScript do
      Player.PlayerScripts.ChildAdded:Wait()
      LocalScript = PlayerScripts:FindFirstChildOfClass("LocalScript")
    end
    
    if getsenv then
      local Success, ScriptEnv = pcall(getsenv, LocalScript)
      
      if Success and ScriptEnv then
        HIT_FUNCTION = ScriptEnv._G.SendHitsToServer
      end
    end
  end)
  
  local ComboHits = HIDDEN_SETTINGS.HITS_TO_RESET_COMBO
  local AttackDistance = HIDDEN_SETTINGS.ATTACK_DISTANCE
  
    function FastAttack:CheckStun(ToolTip: string, Character: Character, Humanoid: Humanoid): boolean
      local Stun = Character:FindFirstChild("Stun")
      local Busy = Character:FindFirstChild("Busy")
      
      if Humanoid.Sit and (ToolTip == "Sword" or ToolTip == "Melee" or ToolTip == "Gun") then
        return false
      elseif Stun and Stun.Value > 0 then -- {{ or Busy and Busy.Value }}
        return false
      end
      
      return true
    end
    
    function FastAttack:Process(assert: boolean, Enemies: Folder, BladeHits: table, Position: Vector3, Distance: number): (nil)
      if not assert then return end
      
      local HitboxLimbs = self.HitboxLimbs
      local Mobs = Enemies:GetChildren()
      
      for i = 1, #Mobs do
        local Enemy = Mobs[i]
        local BasePart = Enemy:FindFirstChild(HitboxLimbs[math.random(#HitboxLimbs)]) or Enemy.PrimaryPart
        
        if not BasePart then continue end
        
        local CanAttack = Enemy.Parent == Characters and CheckPlayerAlly(Players:GetPlayerFromCharacter(Enemy))
        
        if Enemy ~= Player.Character and (Enemy.Parent ~= Characters or CanAttack) then
          if IsAlive(Enemy) and (Position - BasePart.Position).Magnitude <= Distance then
            if not self.EnemyRootPart then
              self.EnemyRootPart = BasePart
            else
              table.insert(BladeHits, { Enemy, BasePart })
            end
          end
        end
      end
    end
    
    function FastAttack:GetAllBladeHits(Character: Character, Distance: number?): (nil)
      local Position = Character:GetPivot().Position
      local BladeHits = {}
      Distance = Distance or AttackDistance
      
      self:Process(self.attackMobs, Enemies, BladeHits, Position, Distance)
      self:Process(self.attackPlayers, Characters, BladeHits, Position, Distance)
      
      return BladeHits
    end
    
    function FastAttack:GetClosestEnemy(Character: Character, Distance: number?): (nil)
      local BladeHits = self:GetAllBladeHits(Character, Distance)
      
      local Distance, Closest = math.huge
      
      for i = 1, #BladeHits do
        local Magnitude = if Closest then (Closest.Position - BladeHits[i][2].Position).Magnitude else Distance
        
        if Magnitude <= Distance then
          Distance, Closest = Magnitude, BladeHits[i][2]
        end
      end
      
      return Closest
    end
    
    function FastAttack:GetCombo(): number
      local Combo = if tick() - self.ComboDebounce <= 0.4 then self.M1Combo else 0
      Combo = if Combo >= ComboHits then 1 else Combo + 1
      
      self.ComboDebounce = tick()
      self.M1Combo = Combo
      
      return Combo
    end
    
    function FastAttack:UseFruitM1(Character: Character, Equipped: Tool, Combo: number): (nil)
      local Position = Character:GetPivot().Position
      local EnemyList = Enemies:GetChildren()
      
      for i = 1, #EnemyList do
        local Enemy = EnemyList[i]
        local PrimaryPart = Enemy.PrimaryPart
        if IsAlive(Enemy) and PrimaryPart and (PrimaryPart.Position - Position).Magnitude <= 50 then
          local Direction = (PrimaryPart.Position - Position).Unit
          return Equipped.LeftClickRemote:FireServer(Direction, Combo)
        end
      end
    end
    
    function FastAttack:UseNormalClick(Humanoid: Humanoid, Character: Character, Cooldown: number): (nil)
      self.EnemyRootPart = nil
      local BladeHits = self:GetAllBladeHits(Character)
      
      if self.EnemyRootPart then
        RegisterAttack:FireServer(Cooldown)
        
        if SUCCESS_FLAGS and COMBAT_REMOTE_THREAD and HIT_FUNCTION then
          HIT_FUNCTION(self.EnemyRootPart, BladeHits)
        elseif SUCCESS_FLAGS and not COMBAT_REMOTE_THREAD then
          RegisterHit:FireServer(self.EnemyRootPart, BladeHits)
        end
      end
    end
    
    function FastAttack.attack()
      if not Settings.AutoAttack or not IsAlive(Player.Character) then return end
      
      local self = FastAttack
      local Character = Player.Character
      local Humanoid = Character.Humanoid
      
      local Equipped = Character:FindFirstChildOfClass("Tool")
      local ToolTip = Equipped and Equipped.ToolTip
      local ToolName = Equipped and Equipped.Name
      
      if not Equipped or (ToolTip ~= "Melee" and ToolTip ~= "Blox Fruit" and ToolTip ~= "Sword") then
        return nil
      end
      
      local Cooldown = 0.3
      
      if (tick() - self.Debounce) >= Cooldown and self:CheckStun(ToolTip, Character, Humanoid) then
        local Combo = self:GetCombo()
        Cooldown += if Combo >= ComboHits then 0.05 else 0
        
        self.Equipped = Equipped
        self.Debounce = if Combo >= ComboHits and ToolTip ~= "Gun" then (tick() + 0.05) else tick()
          
        if ToolTip == "Blox Fruit" then
          if ToolName == "Ice-Ice" or ToolName == "Light-Light" then
            return self:UseNormalClick(Humanoid, Character, Cooldown)
          elseif Equipped:FindFirstChild("LeftClickRemote") then
            return self:UseFruitM1(Character, Equipped, Combo)
          end
        else
          return self:UseNormalClick(Humanoid, Character, Cooldown)
        end
      end
    end
    
    table.insert(Connections, Stepped:Connect(FastAttack.attack))
    
    return FastAttack
end)()
