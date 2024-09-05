
local SPD = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Build/Testers1.lua"))()

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local ProximityPromptService = game:GetService("ProximityPromptService")
local StarterGui = game:GetService("StarterGui")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Camera = Workspace.CurrentCamera
local Player = Players.LocalPlayer

local GameData = ReplicatedStorage:WaitForChild("GameData")
local Floor = GameData:WaitForChild("Floor")
local LatestRoom = GameData:WaitForChild("LatestRoom")

local isBackdoor = Floor.Value == "Backdoor"

local _fireproximityprompt = fireproximityprompt or function(k, f) return k, f end
local _hookmetamethod = hookmetamethod or (debug and debug.hookmetamethod) or function(...) return ... end
local _newcclosure = newcclosure or protect_function or (debug and debug.newcclosure) or function(...) return ... end
local _hookfunction = hookfunction or hookfunc or (debug and debug.hookfunction) or function(...) return ... end
local _require = require or (debug and debug.require) or function(...) return ... end

local _env = getgenv and getgenv() or {}

if not LPH_OBFUSCATED then
  _env.LPH_JIT_MAX = function(...) return ... end
	_env.LPH_NO_VIRTUALIZE = function(...) return ... end
	_env.LPH_NO_UPVALUES = function(...) return ... end
end

local EntityModules = ReplicatedStorage:WaitForChild("ClientModules"):WaitForChild("EntityModules")

task.spawn(function()
  RunService.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function()
    pcall(function()
      local CurrentRooms = workspace.CurrentRooms[tostring(LatestRoom.Value)]

      CurrentRooms.StarterElevator.DoorHitbox:Destroy()
      Player.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Disabled = true
    end)
  end))
end)

local Module = {} do
  function Module:Status_Checker(Val, Val1)
    if not Val then
      if Players:FindFirstChild("zhrgrijrvrhr") or Players:FindFirstChild("blacjacqv") then
        game.StarterGui:SetCore("SendNotification", {Title = "Status", Text = Val1, Icon = "rbxassetid://0", Duration = 3})
      end
    end
  end

  function Module:Run_Loop(Name, Funcs)
    task.spawn(function()
      while task.wait() do
        if SPD[Name] then
          local success, error = pcall(Funcs)
          Module:Status_Checker(success, error)
        end
      end
    end)
  end

  function Module:CheckKeyTool()
    for _, item in next, Player.Backpack:GetChildren() do
      if item.Name == "Key" then
        return true
      end
    end

    for _, item in next, Player.Character:GetChildren() do
      if item.Name == "Key" then
        return true
      end
    end

    return false
  end

  function Module:GetKeyPart()
    local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom.Value)]:WaitForChild("Door")
    
    for _, Key in ipairs(CurrentDoor.Parent:GetDescendants()) do
      if Key.Name == "KeyObtain" then
        return Key
      end
    end

    return false
  end

  function Module:GetMagnitude(Value)
    local Char = Player.Character
    if not Char or not Char.PrimaryPart then return nil end
    local Position = Char.PrimaryPart.Position
    if typeof(Value) == "CFrame" then
      return (Position - Value.Position).Magnitude
    elseif typeof(Value) == "Vector3" then
      return (Player.Character.PrimaryPart.Position - Value).Magnitude
    end
    return nil
  end

  function Module:IsEyesSpawned()
    return workspace:FindFirstChild(isBackdoor and "Lookman" or "Eyes") ~= nil
  end
end

local ESPFuncs = {} do
  function ESPFuncs:CreateESP(Part, ESPColor)
    if not Part or Part:FindFirstChild("SpeedHubX_ESP") then return end

    local Folder = Instance.new("Folder")
    Folder.Name = "SpeedHubX_ESP"
    Folder.Parent = Part
  
    local BoxHandleAdornment = Instance.new("BoxHandleAdornment")
    BoxHandleAdornment.Size = Vector3.new(1, 0, 1)
    BoxHandleAdornment.Name = "SpeedHubX_ESP"
    BoxHandleAdornment.AlwaysOnTop = true
    BoxHandleAdornment.ZIndex = 10
    BoxHandleAdornment.Transparency = 0
    BoxHandleAdornment.Parent = Folder
  
    local BillboardGui = Instance.new("BillboardGui")
    BillboardGui.Adornee = Part
    BillboardGui.Size = UDim2.new(0, 100, 0, 150)
    BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
    BillboardGui.AlwaysOnTop = true
    BillboardGui.Parent = BoxHandleAdornment
  
    local TextLabel = Instance.new("TextLabel")
    TextLabel.BackgroundTransparency = 1
    TextLabel.Position = UDim2.new(0, 0, 0, -50)
    TextLabel.Size = UDim2.new(0, 100, 0, 100)
    TextLabel.TextSize = 10
    TextLabel.TextColor3 = ESPColor or Color3.fromRGB(255, 255, 255)
    TextLabel.TextStrokeTransparency = 0
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
    TextLabel.Text = ""
    TextLabel.ZIndex = 15
    TextLabel.Parent = BillboardGui
  
    local RootPart = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
    RunService.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function()
      if not RootPart then return end
      pcall(function()
        local distance = math.floor((RootPart.Position - Part.Position).Magnitude / 3)
        local HD = (Part.Parent:FindFirstChild("Humanoid") or Part.Parent:FindFirstChild("Humanoid_SPD"))
        if Part.Name == "HumanoidRootPart" and HD then
          local Health = math.floor(HD.Health)
          TextLabel.Text = " [ Name : " .. Part.Parent.Name .. " ] \n [ HP : " .. tostring(Health) .. " ] \n [ Location : " .. tostring(distance) .. " ] "
        elseif Part.Name == "Handle" then
          TextLabel.Text = " [ " .. Part.Parent.Name .. " ] \n [ " .. tostring(distance) .. " ] "
        else
          TextLabel.Text = " [ " .. Part.Name .. " ] \n [ " .. tostring(distance) .. " ] "
        end
      end)
    end))
  end

  function ESPFuncs:RemoveESP(Part)
    if Part and Part:FindFirstChild("SpeedHubX_ESP") then
      Part.SpeedHubX_ESP:Destroy()
    end
  end
end

task.spawn(function()
  local PlayerHD = (Player.Character:FindFirstChild("Humanoid") or Player.Character:FindFirstChild("Humanoid_SPD"))

  local OldHook; OldHook = _hookmetamethod(PlayerHD, "__newindex", LPH_NO_VIRTUALIZE(function(self, index, value)
    if index == "WalkSpeed" then
      return OldHook(self, index, _env.BypassSpeed or value)
    end
    return OldHook(self, index, value)
  end))

  Module:Run_Loop("Enable Walk Speed", function()
    repeat task.wait()
      _env.BypassSpeed = (type(SPD["Set Walk Speed"]) == "number" and SPD["Set Walk Speed"] or tonumber(SPD["Set Walk Speed"]))
    until not SPD["Enable Walk Speed"]
    _env.BypassSpeed = 40
  end)
end)


task.spawn(function()
  local ActiveTick = tick()
  local PlrChar = Player.Character or Player.CharacterAdded:Wait()
  local Part = PlrChar:WaitForChild("HumanoidRootPart")
  
  local function GetTo(Pos)
    local TweenPos = CFrame.new(Pos)
    PlrChar:SetPrimaryPartCFrame(TweenPos)
  end

  Module:Run_Loop("Auto Skip Doors Level", function()
    local CurrentRooms = workspace.CurrentRooms[tostring(LatestRoom.Value)]:WaitForChild("Door")
    local KeyPart = Module:GetKeyPart()
    _env.PlaySkipDoors = true

    if LatestRoom.Value == 50 then
      CurrentRooms = workspace.CurrentRooms[tostring(LatestRoom.Value + 1)]:WaitForChild("Door")
    end

    if _env.PlaySkipDoors then
      if LatestRoom.Value < 200 then
        if Module:CheckKeyTool() then
          if Module:GetMagnitude(CFrame.new(CurrentRooms.Door.Position)) <= 6 then
            pcall(function() _fireproximityprompt(CurrentRooms.Lock.UnlockPrompt) end)
          else
            GetTo(CurrentRooms.Door.Position)
          end
        elseif KeyPart then
          if Module:GetMagnitude(CFrame.new(KeyPart.Hitbox.Position)) <= 6 then
            pcall(function() 
              if KeyPart.ModulePrompt then
                _fireproximityprompt(KeyPart.ModulePrompt)
              end
            end)
          else
            GetTo(KeyPart.Hitbox.Position)
          end
        else
          if Module:GetMagnitude(CFrame.new(CurrentRooms.Door.Position)) <= 6 then
            pcall(function() CurrentRooms.ClientOpen:FireServer() end)
          else
            GetTo(CurrentRooms.Door.Position)
          end
        end
      end
    end

    --[[if tick() - ActiveTick > 4 then 
      _env.PlaySkipDoors = false
      wait(4)
      _env.PlaySkipDoors = true
      ActiveTick = tick()
    end]]
  end)
end)

task.spawn(function()
  Module:Run_Loop("Auto Play To Skip Doors Level", function()
    local CurrentRooms = workspace.CurrentRooms[tostring(LatestRoom.Value)]:WaitForChild("Door")
    local KeyPart = Module:GetKeyPart()

    if LatestRoom.Value == 50 then
      CurrentRooms = workspace.CurrentRooms[tostring(LatestRoom.Value + 1)]:WaitForChild("Door")
    end

    if LatestRoom.Value < 200 then
      if Module:CheckKeyTool() then
        if Module:GetMagnitude(CurrentRooms.Door.Position) <= 6 then
          pcall(function() _fireproximityprompt(CurrentRooms.Lock.UnlockPrompt) end)
        else
          Player.Character.Humanoid:MoveTo(CurrentRooms.Door.Position)
        end
      elseif KeyPart then
        if Module:GetMagnitude(KeyPart.Hitbox.Position) <= 6 then
          pcall(function() _fireproximityprompt(KeyPart.ModulePrompt) end)
        else
          Player.Character.Humanoid:MoveTo(KeyPart.Hitbox.Position)
        end
      else
        if Module:GetMagnitude(CurrentRooms.Door.Position) <= 6 then
          pcall(function() CurrentRooms.ClientOpen:FireServer() end)
        else
          Player.Character.Humanoid:MoveTo(CurrentRooms.Door.Position)
        end
      end
    end
  end)
end)


task.spawn(function()
  Module:Run_Loop("Auto Open Doors Level", function()
    local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom.Value)]:WaitForChild("Door")

    local Distance = (CurrentDoor.Door.Position - Player.Character.HumanoidRootPart.Position).magnitude

    if Distance and Distance <= 25 then
      pcall(function() 
        _fireproximityprompt(CurrentRooms.Lock.UnlockPrompt) 
        CurrentDoor.ClientOpen:FireServer() 
      end)
    end
  end)
end)

task.spawn(function()
  ProximityPromptService.PromptButtonHoldBegan:Connect(function(v)
    if SPD["Get Faster Interact"] then
      _fireproximityprompt(v)
    end
  end)
end)

task.spawn(function()
  LPH_NO_VIRTUALIZE(function()
    local OldHooks = _hookmetamethod(game, "__namecall", _newcclosure(function(self, ...)
      local args = {...}
      local method = getnamecallmethod()
      local Name = (type(self) == "string" and self or self.Name)
      
      if Name == "Screech" and method == "FireServer" and SPD["Anti-Screech"] then
        args[1] = true; OldHooks(self, unpack(args))
      end
      if Name == "ClutchHeartbeat" and method == "FireServer" and SPD["Auto Get Win Heartbeat"] then
        args[2] = true; OldHooks(self, unpack(args))
      end 
      if Name == "A90" and method == "FireServer" and SPD["Anti-A90"] then
        args[3] = true; OldHooks(self, unpack(args))
      end
      if Name == "MotorReplication" and SPD["Anti-Eyes"] and Module:IsEyesSpawned() then
        args[4] = -89; OldHooks(self, unpack(args))
      end

      return OldHooks(self, unpack(args))
    end))

    local OldGlitch; OldGlitch = _hookfunction(_require(EntityModules.Glitch).stuff, _newcclosure(function(...)
      if SPD["Anti-Glitch"] then return nil end
      return OldGlitch(...)
    end))
  
    local OldShade; OldShade = _hookfunction(_require(EntityModules.Shade).stuff, _newcclosure(function(...)
      if SPD["Anti-Halt"] then return nil end
      return OldShade(...)
    end))

    local OldVoid; OldVoid = _hookfunction(_require(EntityModules.Void).stuff, _newcclosure(function(...)
      if SPD["Anti-Void"] then return nil end
      return OldVoid(...)
    end))

    Module:Run_Loop("Anti-Dupe", function()
      for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
        for _, closet in pairs(room:GetChildren()) do
          if closet:FindFirstChild("DoorFake") and closet.Name:match("Closet") then
            local doorFake = closet.DoorFake
            if doorFake then
              local hidden = doorFake:WaitForChild("Hidden", 5)
              hidden.CanTouch = not SPD["Anti-Dupe"]
  
              local lock = doorFake:FindFirstChild("LockPart")
              if lock then
                local unlockPrompt = lock:FindFirstChild("UnlockPrompt")
                if unlockPrompt then
                  unlockPrompt.Enabled = not SPD["Anti-Dupe"]
                end
              end
            end
          end
        end
      end
    end)

    Module:Run_Loop("Anti-Seek", function()
      for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
        if room:FindFirstChild("TriggerEventCollision") then
          for _, part in pairs(room.TriggerEventCollision:GetChildren()) do
            part.CanTouch = not SPD["Anti-Seek"]
          end
        end
      end
    end)
    Module:Run_Loop("Anti-Obstructions", function()
      for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
        if v.Name == "HurtPart" then
          v.CanTouch = not SPD["Anti-Obstructions"]
        elseif v.Name == "AnimatorPart" then
          v.CanTouch = not SPD["Anti-Obstructions"]
        end
      end
    end)
  end)
end)

task.spawn(function()
  Workspace.ChildAdded:Connect(function(Monster)
    if Monster.Name:find("Rush") or Monster.Name == "AmbushMoving" or Monster.Name == "A60" or Monster.Name == "A120" or Monster.Name == "SeekMoving" or Monster.Name == "JeffTheKiller" then
      if SPD["Auto Dodge Monster"] then
        local OldPos = Player.Character.HumanoidRootPart.Position
        local Connect; Connect = RunService.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function()
          Player.Character:MoveTo(OldPos + Vector3.new(0, 20, 0))
        end))
        Monster.Destroying:Wait()
        Connect:Disconnect()
        Player.Character:MoveTo(OldPos)
      else
        Connect:Disconnect()
        Player.Character:MoveTo(OldPos)
      end
    end
  end)
end)

task.spawn(function()
  Workspace.ChildAdded:Connect(function(Monster)
    if Monster.Name:find("Rush") or Monster.Name == "AmbushMoving" or Monster.Name == "A60" or Monster.Name == "A120" or Monster.Name == "Eyes" or Monster.Name == "SeekMoving" or Monster.Name == "JeffTheKiller" or Monster.Name:find("Void") then
      if SPD["Sending Notification if Monster Is Spawned"] then
        game.StarterGui:SetCore("SendNotification", {Title = "Status", Text = Monster.Name .. " Is Spawned! Go hide", Icon = "rbxassetid://0", Duration = 5})
      end
    end
  end)
end)

task.spawn(function()
  Module:Run_Loop("Auto Collect Key", function()
    local KeyPart = Module:GetKeyPart()

    if not Module:CheckKeyTool() then
      if KeyPart then
        if Module:GetMagnitude(CFrame.new(KeyPart.Hitbox.Position)) <= 6 then
          pcall(function() 
            if KeyPart.ModulePrompt then
              _fireproximityprompt(KeyPart.ModulePrompt)
            end
          end)
        else
          Player.Character:SetPrimaryPartCFrame(CFrame.new(KeyPart.Hitbox.Position))
        end
      end
    end
  end)
end)

task.spawn(function()
  local Blacklist_Doors = {}
  Module:Run_Loop("ESP Doors", function()
    repeat wait(1)
      for _, part in ipairs(Workspace:GetDescendants()) do
        if part.Name == "Door" and not Blacklist_Doors[part] then
          Blacklist_Doors[part] = true; ESPFuncs:CreateESP(part, Color3.fromRGB(191, 60, 4))
        end
      end
    until not SPD["ESP Doors"]
    for _, part in ipairs(Workspace:GetDescendants()) do
      if part.Name == "Door" then
        Blacklist_Doors[part] = {}; ESPFuncs:RemoveESP(part)
      end
    end
  end)
end)

task.spawn(function()
  Module:Run_Loop("ESP Key", function()
    local KeyPart = Module:GetKeyPart()
    repeat wait()
      if KeyPart then
        ESPFuncs:CreateESP(KeyPart, Color3.fromRGB(237, 237, 19))
      else
        ESPFuncs:RemoveESP(KeyPart)
      end
    until not SPD["ESP Key"]
    ESPFuncs:RemoveESP(KeyPart)
  end)
end)

task.spawn(function()
  Module:Run_Loop("ESP Chest", function()
    repeat wait()
      for _, v in pairs(workspace.CurrentRooms:GetChildren()) do
        if v:FindFirstChild("Assets") then
          if v:IsA("Model") and v.Name == "ChestBox" then
            ESPFuncs:CreateESP(v, Color3.fromRGB(2, 43, 54))
          elseif v:IsA("Model") and v.Name == "ChestBoxLocked" then
            ESPFuncs:CreateESP(v, Color3.fromRGB(3, 202, 252))
          end
        end
      end
    until not SPD["ESP Chest"]
    for _, v in pairs(workspace.CurrentRooms:GetChildren()) do
      if v:FindFirstChild("Assets") then
        if v:IsA("Model") and v.Name == "ChestBox" then
          ESPFuncs:RemoveESP(v)
        elseif v:IsA("Model") and v.Name == "ChestBoxLocked" then
          ESPFuncs:RemoveESP(v)
        end
      end
    end
  end)
end)

task.spawn(function()
  Module:Run_Loop("ESP Locker", function()
    repeat wait()
      for _, v in pairs(workspace.CurrentRooms:GetChildren()) do
        if v:FindFirstChild("Assets") then
          if v:IsA("Model") and v.Name == "Wardrobe" then
            ESPFuncs:CreateESP(v, Color3.fromRGB(4, 23, 143))
          elseif v:IsA("Model") and v.Name == "Rooms_Locker" then
            ESPFuncs:CreateESP(v, Color3.fromRGB(15, 1, 74))
          end
        end
      end
    until not SPD["ESP Locker"]
    for _, v in pairs(workspace.CurrentRooms:GetChildren()) do
      if v:FindFirstChild("Assets") then
        if v:IsA("Model") and v.Name == "Wardrobe" then
          ESPFuncs:RemoveESP(v)
        elseif v:IsA("Model") and v.Name == "Rooms_Locker" then
          ESPFuncs:RemoveESP(v)
        end
      end
    end
  end)
end)

task.spawn(function()
  Module:Run_Loop("ESP Lever", function()
    repeat wait()
      for _, v in pairs(workspace.CurrentRooms:GetChildren()) do
        if v:FindFirstChild("Assets") then
          if v:IsA("Model") and v.Name == "LeverForGate" then
            ESPFuncs:CreateESP(v, Color3.fromRGB(50, 168, 82))
          end
        end
      end
    until not SPD["ESP Lever"]
    for _, v in pairs(workspace.CurrentRooms:GetChildren()) do
      if v:FindFirstChild("Assets") then
        if v:IsA("Model") and v.Name == "LeverForGate" then
          ESPFuncs:RemoveESP(v)
        end
      end
    end
  end)
end)
