local SPD = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Build/Testers.lua"))()
local FileSys = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/File_System.lua"))()

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local PlayerGui = Player.PlayerGui

local Networking = ReplicatedStorage:WaitForChild("Networking")
local Modules = game:GetService("StarterPlayer"):WaitForChild("Modules")

local writefile = writefile or (debug and debug.writefile) or function()end
local readfile = readfile or (debug and debug.readfile) or function()end
local isfile = isfile or (debug and debug.isfile) or function()end
local require = require or (debug and debug.require) or function()end
local getupvalues = getupvalues or (debug and debug.getupvalues) or function()end

local _env = getgenv and getgenv() or {}

local function Format_Time(seconds)
  local days = math.floor(seconds / 86400)
  seconds = seconds % 86400
  local hours = math.floor(seconds / 3600)
  seconds = seconds % 3600
  local minutes = math.floor(seconds / 60)
  seconds = seconds % 60

  return string.format("%d days, %d hours, %d minutes, %d seconds", days, hours, minutes, seconds)
end

local Macro = {
  Signals = {},
  Buttons = {},
  Replay = {}
}

local MacroRecorder = {
  Value = {},
  World = {},
  Playing = {},
  Count = {
    __len = function(num)
      local count = 0
      for idx, data in next, num do
        if idx ~= "Data" then
          count += 1 
        end
      end
    return count
  end
}}

local Module = {} do
  function Module:Status_Checker(Val, Val1)
    if not Val then
      if Players:FindFirstChild("zhrgrijrvrhr") or Players:FindFirstChild("blacjacqv") or Players:FindFirstChild("fanoffgteev999") then
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

  function Module:GetTo(PosT)
    local PlrChar = Player and Player.Character
    if not PlrChar then return end

    local plrPP = PlrChar.PrimaryPart
    if not plrPP then return end

    if PosT then
      PlrChar:SetPrimaryPartCFrame(PosT)
    end
  end

  function Module:GetMoney()
    local money = Player.PlayerGui.Hotbar.Main.Yen.Text:split("¥")[1]
    if money:find(",") then money = money:gsub(",","") end
    return money
  end

  function Module:GetCFrameUnit(VAL)
    
    for _, unit in next, workspace.UnitVisuals.UnitCircles:GetChildren() do
      if unit.Name == VAL then
        return unit.Position
      end
    end

    return nil
  end

  function Module:GetUnit_Pos(Pos)
    if type(Pos) == "string" then
      Pos = Vector3.new(table.unpack(Pos:gsub(" ", ""):split(",")))
    end

    for _, Unit in next, workspace.UnitVisuals.UnitCircles:GetChildren() do
      if Unit.Position == Pos or (Unit.Position - Pos).Magnitude <= 0.75 then
        return Unit.Name
      end
    end
  end

  function Module:GetDataUnit(agrs)
    for _, Data in next, ReplicatedStorage.Modules.Data.Entities.UnitsData:GetDescendants() do
      if Data.ClassName == "ModuleScript" and (Data.Name == agrs or Data.Name:match(agrs)) then
        local require_data = require(Data)
        local _Data = {
          upgradeprice = require_data.Upgrades,
          shinnymodel = tostring(require_data.ShinyModel),
          model = tostring(require_data.Model),
          price = tostring(require_data.Price),
          name = tostring(require_data.Name),
          id = require_data.ID
        }
        if _Data.name == agrs or _Data.model == agrs or _Data.shinnymodel == agrs then
          return _Data
        end
      end
    end
  end
  
  function Module:ClickIU(Object)
    repeat
      GuiService.GuiNavigationEnabled = true
      GuiService.SelectedObject = Object
    task.wait()
    until GuiService.SelectedObject == Object
    VirtualInputManager:SendKeyEvent(true, "Return", false, nil)
    VirtualInputManager:SendKeyEvent(false, "Return", false, nil)
    task.wait(0.0525)
    GuiService.GuiNavigationEnabled = false
    GuiService.SelectedObject = nil
  end

  function Module:Webhooks(URL, Data)
    local _request = request or (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request) or http_request

    _request({
      Url = URL,
      Body = HttpService:JSONEncode(Data),
      Method = "POST", 
      Headers = {["content-type"] = "application/json"}
    })
  end

  function Module:GetDataCFrane(Name)
    for _, Unit in next, workspace.UnitVisuals.UnitCircles:GetChildren() do
      if Unit.Name == Name then
        return Unit.Position
      end
    end
  end

  function Module:SetVisUpgrade(Boolen)
    if #Player.PlayerGui.UpgradeInterfaces:GetChildren() > 0 then
      Player.PlayerGui.UpgradeInterfaces:GetChildren()[1].Stats.UpgradeButton.Visible = Boolen
    end
  end

  function Module:GetCostUp()
    local Cost = Player.PlayerGui.UpgradeInterfaces:GetChildren()[1].Stats.UpgradeButton.Inner.Label.Text:split(" ")[2]:split("¥")[1]
    if Cost:find(",") then Cost = Cost:gsub(",","") end
    return Cost
  end

  function Module:GetStageName()
    local GameHandler = require(ReplicatedStorage.Modules.Gameplay.GameHandler)
    local Stage = GameHandler.GameData.Stage

    local Story = require(ReplicatedStorage.Modules.Data.StagesData.Story[Stage][Stage])

    return Story.Name
  end

  function Module:GetChecksWorld()
    if not MacroRecorder.World then
      MacroRecorder.World = tostring(Module:GetStageName())
    end
  end

  function Module:GetTobbyChallenges()
    for _, Lobby in ipairs(workspace.MainLobby:GetChildren()) do
      if Lobby:IsA("Folder") and Lobby.Name == "Lobby" then
        for _, Challenges in ipairs(Lobby.Challenges:GetChildren()) do
          local banner = Challenges:FindFirstChild("LobbyBanner")
          if Challenges:IsA("Model") and banner then
            local Interface = banner.Banner.Main.ChallengeInterface.Background
            if Interface.StageName.Text ~= "Daily" and Interface.MaxPlayers.Amount.Text == "0/4" then
              return Challenges
            end
          end
        end
      end
    end
  end

  function Module:GetTobbyStory()
    for _, Lobby in ipairs(workspace.MainLobby:GetChildren()) do
      if Lobby:IsA("Folder") and Lobby.Name == "Lobby" then
        for _, story in next, Lobby:GetChildren() do
          if story.Name == "Lobby" and story:IsA("Model") and story.LobbyBanner.Banner.Main:FindFirstChild("ChosenStage") == nil and story.LobbyBanner.Banner.Main.ChoosingStage.Main.ActName.Text == "Choosing..." then
            return story
          end
        end
      end
    end
  end

  function Module:GetUnits_Active(VAL)
    for _, Unit in next, getupvalues(getupvalues(require(Modules.Gameplay.UnitManager.UnitManagerHandler).ShowUnitManager)[3].GetAllPlacedUnits)[1]._ActiveUnits do
      if _ == VAL and Unit.Player == Player then
        return {
          Name = tostring(Unit.Data.Name),
          Position = tostring(Unit.Position),
          Rotation = tostring(Unit.Rotation),
          Priority = Unit.Data.Priority,
          CurrentUpgrade = Unit.Data.CurrentUpgrade
        }
      end
    end
  end

  function Module:GetUnit_Priority(VAL)
    local List = {First = 1, Closest = 2, Last = 3, Strongest = 4, Weakest = 5}
    return List[VAL] or 0 
  end

  function Module:GetUpgradePrice(VAL)
    if OwnGui.UpgradeInterfaces:GetChildren()[1].Stats.UpgradeButton.Inner.Label.Text == "Max" then
      return Module:GetDataUnit(VAL).upgradeprice[#Module:GetDataUnit(VAL).upgradeprice].Price
    else
      local num = OwnGui.UpgradeInterfaces:GetChildren()[1].Stats.UpgradeLabel.Label.Text:split(" ")[2]:gsub("%[",""):gsub("%]","")
      return Module:GetDataUnit(VAL).upgradeprice[tonumber(num) + 1].Price
    end
  end

  function Module:GetWriteMoney(TypeChecks)
    if TypeChecks == "Upgrade" then
      local Totals = PlayerGui.UpgradeInterfaces:GetChildren()[1].Stats.UpgradeButton.Inner.Label.Text:split(" ")[2]:split("¥")[1]
      if Totals:find(",") then
        Totals = Totals:gsub(",","")
      end
      return Totals
    else
      return Module:GetDataUnit(TypeChecks).price
    end
  end
end

local Macros = {} do
  function Macros:AddWrite()
    local SelectedFile = SPD["Select File"]

    writefile("Speed Hub X - Macros/Anime Vanguards/" .. tostring(SelectedFile) .. ".json", HttpService:JSONEncode(MacroRecorder.Value))
  end

  function Macros:GetCountM()
    setmetatable(MacroRecorder.Value, MacroRecorder.Count)
    return #MacroRecorder.Value
  end

  function Macros:SetMacrosInsert(VAL)
    local Count = Macros:GetCountM()
        
    if not MacroRecorder.Value[tostring(Count + 1)] then
      MacroRecorder.Value[tostring(Count + 1)] = VAL
    end
  end
end

task.spawn(function()
  Module:Run_Loop("Auto Click Start", function()
    if game.PlaceId == 16146832113 then
      if PlayerGui:FindFirstChild("MiniLobbyInterface") then
        Module:ClickIU(PlayerGui.MiniLobbyInterface.Holder.Buttons.Start.Button)
        task.wait(5)
      end
    end
  end)

  Module:Run_Loop("Auto Join Maps", function()
    if game.PlaceId == 16146832113 then
      if (PlayerGui.Windows.Lobby.Enabled and PlayerGui.Windows.Lobby.Holder.Visible) or PlayerGui:FindFirstChild("MiniLobbyInterface") then
        Networking.LobbyEvent:FireServer(unpack({[1] = "Confirm", [2] = {[1] = SPD["Choose Map"],[2] = "Stage" .. SPD["Choose Stage"],[3] = "Act" .. SPD["Choose Act Number"],[4] = SPD["Choose Mode"],[5] = 4,[6] = 0,[7] = (SPD["Allow Friends"] or false)}}))
      else
        if Module:GetTobbyStory() then
          Networking.LobbyEvent:FireServer("Enter", Module:GetTobbyStory())
        end
      end
    end
  end)

  Module:Run_Loop("Auto Click Summon X1", function()
    if game.PlaceId == 16146832113 then
      Networking.Units.SummonEvent:FireServer("SummonOne", "Special")
      wait(3)
    end
  end)

  Module:Run_Loop("Auto Click Summon X10", function()
    if game.PlaceId == 16146832113 then
      Networking.Units.SummonEvent:FireServer("SummonTen", "Special")
      wait(3)
    end
  end)

  Module:Run_Loop("Auto Join Challenge", function()
    if game.PlaceId == 16146832113 then
      Networking.LobbyEvent:FireServer("Enter", Module:GetTobbyChallenges())
    end
  end)
end)

task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  Module:Run_Loop("Auto Click Unit", function()
    wait(SPD["Delay To Click"])
    local Units = Workspace:FindFirstChild("Units"):GetChildren()
  
    if SPD["Select Unit Count"] == "All" then
      for _, Unit in pairs(Units) do
        if Unit then
          Networking.UnitEvent:FireServer(SPD["Choose Upgrade Or Sell"], Unit.Name)
        end
      end
    else
      for Num, Unit in pairs(Units) do
        if Num == tonumber(SPD["Select Unit Count"]) then
          if Unit then
            Networking.UnitEvent:FireServer(SPD["Choose Upgrade Or Sell"], Unit.Name)
          end
        end
      end
    end
  end)
end)

task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  Module:Run_Loop("Auto Click Skip Wave", function()
    task.wait(SPD["Delay To Click "])
    if SPD["Auto Click Skip Wave"] then
      if PlayerGui:FindFirstChild("SkipWave") then
        Networking.SkipWaveEvent:FireServer("Skip")wait(2)
      end
    end
  end)
end)

task.spawn(function()
  local OldSpeed = Player.Character.Humanoid.WalkSpeed
  Module:Run_Loop("Enable WalkSpeed", function()
    repeat wait()
      Player.Character.Humanoid.WalkSpeed = tonumber(SPD["Set WalkSpeed"])
    until not SPD["Enable WalkSpeed"]
    Player.Character.Humanoid.WalkSpeed = OldSpeed
  end)
end)

task.spawn(function()
  UserInputService.JumpRequest:connect(function()
    if SPD["Infinite Jump"] then
      Player.Character.Humanoid:ChangeState("Jumping")
    end
  end)

  Mouse.Button1Down:Connect(function()
    if not Mouse.Target then return end

    if SPD["CTRL + Click to Teleport"] then
      if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
        Player.Character:MoveTo(Mouse.Hit.p)
      end

      if UserInputService.TouchEnabled then
        Player.Character:MoveTo(Mouse.Hit.p)
      end
    end
  end)
end)

--[[
task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  task.spawn(function()
    workspace.UnitVisuals.UnitCircles.ChildAdded:Connect(function(v)
      if not SPD["Start Record Macro"] then
        return
      else
        if Module:GetUnits_Active(v.Name) then
          local _Unit = Module:GetUnits_Active(v.Name)
          Macros:SetMacrosInsert({
            ["Type"] = "Render", 
            ["Unit"] = _Unit.Name, 
            ["Money"] = tostring(Module:GetDataUnit(_Unit.Name).price),
            ["Pos"] = _Unit.Position,
            ["Rotation"] = _Unit.Rotation
          });Macros:AddWrite()
        end
      end
    end)
  end)

  task.spawn(function()
    PlayerGui.UpgradeInterfaces.ChildAdded:Connect(function(v)
      local Upgrade_Button, Sell_Button, Priority = v:WaitForChild("Stats"):WaitForChild("UpgradeButton"):WaitForChild("Inner"):WaitForChild("Label"), v:WaitForChild("Unit"):WaitForChild("Sell"):WaitForChild("Button"), v:WaitForChild("Unit"):WaitForChild("Priority"):WaitForChild("Inner"):WaitForChild("Label")
      Macro.Signals[v.Name .. "Upgrade"] = Upgrade_Button:GetPropertyChangedSignal("Text"):Connect(function()
        if SPD["Start Record Macro"] and Module:GetUnits_Active(v.Name) then
          local _Unit = Module:GetUnits_Active(v.Name)
          Macros:SetMacrosInsert({
            ["Type"] = "Upgrade",
            ["Unit"] = _Unit.Name,
            ["Money"] = tostring(Module:GetUpgradePrice(_Unit.Name)),
            ["Pos"] = tostring(Module:GetCFrameUnit(v.Name))
          });Macros:AddWrite()
        end
      end)
      Macro.Signals[v.Name .. "Sell"] = Sell_Button.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and Module:GetUnits_Active(v.Name) and SPD["Start Record Macro"] then
          local _Unit = Module:GetUnits_Active(v.Name)
          Macros:SetMacrosInsert({
            ["Type"] = "Sell",
            ["Unit"] = _Unit.Name,
            ["Money"] = "0",
            ["Pos"] = tostring(Module:GetCFrameUnit(v.Name))
          });Macros:AddWrite()
        end
      end)
      Macro.Signals[v.Name .. "Priority"] = Priority:GetPropertyChangedSignal("Text"):Connect(function()
        if SPD["Start Record Macro"] and Module:GetUnits_Active(v.Name) then
          local _Unit = Module:GetUnits_Active(v.Name)
          Macros:SetMacrosInsert({
            ["Type"] = "Priority",
            ["Unit"] = _Unit.Name,
            ["Priority_Name"] = v.Unit.Priority.Inner.Label.Text,
            ["Money"] = "0",
            ["Pos"] = tostring(Module:GetCFrameUnit(v.Name))
          });Macros:AddWrite()
        end
      end)

      task.spawn(function()
        repeat task.wait() until not v.Parent
        if Macro.Signals[v.Name .. "Upgrade"] then
          Macro.Signals[v.Name .. "Upgrade"]:Disconnect()
          Macro.Signals[v.Name .. "Upgrade"] = nil
        end
        if Macro.Signals[v.Name .. "Sell"] then
          Macro.Signals[v.Name .. "Sell"]:Disconnect()
          Macro.Signals[v.Name .. "Sell"] = nil
        end
        if Macro.Signals[v.Name.."Priority"] then
          Macro.Signals[v.Name .. "Priority"]:Disconnect()
          Macro.Signals[v.Name .. "Priority"] = nil
        end
      end)
    end)
  end)
end)]]

task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  task.spawn(function()
    workspace.UnitVisuals.UnitCircles.ChildAdded:Connect(function(Units)
      if not SPD["Start Record Macro"] then
        return
      else
        repeat wait() until #PlayerGui.UpgradeInterfaces:GetChildren() > 0
        local Unit = PlayerGui.UpgradeInterfaces:GetChildren()[1]:WaitForChild("Unit"):WaitForChild("Main"):WaitForChild("UnitFrame"):FindFirstChildOfClass("Frame").Name
        Macros:SetMacrosInsert({
          ["Type"] = "Render",
          ["Unit"] = tostring(Unit),
          ["Money"] = tostring(Module:GetWriteMoney(Unit)),
          ["Rotation"] = Module:GetUnits_Active(Units.Name).Rotation,
          ["Pos"] = tostring(Units.Position),
        });Macros:AddWrite()
      end
    end)
  end)

  task.spawn(function()
    PlayerGui.UpgradeInterfaces.ChildAdded:Connect(function(v)
      local Upgrade_Button, Sell_Button, Priority = v:WaitForChild("Stats"):WaitForChild("UpgradeButton"):WaitForChild("Button"), v:WaitForChild("Unit"):WaitForChild("Sell"):WaitForChild("Button"), v:WaitForChild("Unit"):WaitForChild("Priority"):WaitForChild("Button")

      Macro.Signals[v.Name .. "Upgrade"] = Upgrade_Button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch and SPD["Start Record Macro"] then
          if v.Stats.UpgradeButton.Inner.Label.Text ~= "Max" and v.Stats.UpgradeButton:FindFirstChild("Dark") == nil then
            Macros:SetMacrosInsert({
              ["Type"] = "Upgrade",
              ["Unit"] = tostring(v.Unit.Main.UnitFrame:FindFirstChildOfClass("Frame").Name),
              ["Money"] = tostring(Module:GetWriteMoney("Upgrade")),
              ["Pos"] = tostring(Module:GetCFrameUnit(v.Name))
            });Macros:AddWrite()
          end
        end
      end)

      Macro.Signals[v.Name .. "Sell"] = Sell_Button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch and SPD["Start Record Macro"] then
          Macros:SetMacrosInsert({
            ["Type"] = "Sell",
            ["Unit"] = tostring(v.Unit.Main.UnitFrame:FindFirstChildOfClass("Frame").Name),
            ["Money"] = "0",
            ["Pos"] = tostring(Module:GetCFrameUnit(v.Name))
          });Macros:AddWrite()
        end
      end)

      Macro.Signals[v.Name .. "Priority"] = Priority.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch and SPD["Start Record Macro"] then
          Macros:SetMacrosInsert({
            ["Type"] = "Priority",
            ["Unit"] = tostring(v.Unit.Main.UnitFrame:FindFirstChildOfClass("Frame").Name),
            ["Money"] = "0",
            ["Priority_Name"] = v.Unit.Priority.Inner.Label.Text,
            ["Pos"] = tostring(Module:GetCFrameUnit(v.Name))
          });Macros:AddWrite()
        end
      end)

      task.spawn(function()
        repeat task.wait() until not v.Parent
        if Macro.Signals[v.Name .. "Upgrade"] then
          Macro.Signals[v.Name .. "Upgrade"]:Disconnect()
          Macro.Signals[v.Name .. "Upgrade"] = nil
        end
        if Macro.Signals[v.Name .. "Sell"] then
          Macro.Signals[v.Name .. "Sell"]:Disconnect()
          Macro.Signals[v.Name .. "Sell"] = nil
        end
        if Macro.Signals[v.Name.."Priority"] then
          Macro.Signals[v.Name .. "Priority"]:Disconnect()
          Macro.Signals[v.Name .. "Priority"] = nil
        end
      end)
    end)
  end)
end)

task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  local function IsWorldPivotValid(TargetPivot)
    if typeof(TargetPivot) ~= "CFrame" then return end

    local targetPosition = TargetPivot.Position
    for _, Unit in ipairs(Workspace:FindFirstChild("Units"):GetChildren()) do
      if Unit:IsA("Model") then
        local UnitPivot = Unit:GetPivot()
        if typeof(UnitPivot) ~= "CFrame" then return end

        if (UnitPivot.Position - targetPosition).magnitude < 2 then
          return false
        end
      end
    end

    return true
  end

  task.spawn(function()
    Module:Run_Loop("Start Play", function()
      local filePath = "Speed Hub X - Macros/Anime Vanguards/" .. SPD["Select File"] .. ".json"
      if SPD["Select File"] == nil then
        return game.StarterGui:SetCore("SendNotification", {Title = "Speed Hub X", Text = "Please Select File First", Icon = "rbxassetid://0", Duration = 3})
      elseif not isfile(filePath) then
        return game.StarterGui:SetCore("SendNotification", {Title = "Speed Hub X", Text = "File Is Not Exist, Please Select File First", Icon = "rbxassetid://0", Duration = 3})
      else
        MacroRecorder.Playing = HttpService:JSONDecode(readfile(filePath))
        setmetatable(MacroRecorder.Playing, MacroRecorder.Count)

        if #MacroRecorder.Playing == 0 then
          return game.StarterGui:SetCore("SendNotification", {Title = "Speed Hub X", Text = "The Macro Data Is Not Exist", Icon = "rbxassetid://0", Duration = 3})
        end

        for i = 1, #MacroRecorder.Playing do
          local Data = MacroRecorder.Playing[tostring(i)]

          if Data["Money"] then
            repeat task.wait() until tonumber(Module:GetMoney()) >= tonumber(Data["Money"]) or not SPD["Start Play"]
          end

          if not SPD["Start Play"] then
            break
          else
            if Data["Type"] == "Render" then
              repeat task.wait() until tonumber(Module:GetMoney()) >= tonumber(Data["Money"]) or not SPD["Start Play"]

              if IsWorldPivotValid(CFrame.new(table.unpack(Data["Pos"]:gsub(" ", ""):split(",")))) then
                require(Modules.Gameplay.ClientUnitHandler).IsPlacingUnit = true
                Networking.UnitEvent:FireServer("Render", {Data["Unit"], Module:GetDataUnit(Data["Unit"]).id, Vector3.new(table.unpack(Data["Pos"]:gsub(" ", ""):split(","))), (tonumber(Data["Rotation"]) or 0)})
                require(Modules.Gameplay.ClientUnitHandler).IsPlacingUnit = false
              end

            elseif Data["Type"] == "Upgrade" then

              if not SPD["Start Play"] then
                break
              elseif not Module:GetUnit_Pos(Data["Pos"]) or (Module:GetUnit_Pos(Data["Pos"]) and Module:GetUnits_Active(Module:GetUnit_Pos(Data["Pos"])).Name ~= Data["Unit"]) then
              else
                repeat task.wait() until tonumber(Module:GetMoney()) >= tonumber(Data["Money"]) or not SPD["Start Play"]
                Networking.UnitEvent:FireServer("Upgrade", Module:GetUnit_Pos(Data["Pos"]))
              end
              
            elseif Data["Type"] == "Sell" then
              if not SPD["Start Play"] then
                break
              elseif not Module:GetUnit_Pos(Data["Pos"]) or (Module:GetUnit_Pos(Data["Pos"]) and Module:GetUnits_Active(Module:GetUnit_Pos(Data["Pos"])).Name ~= Data["Unit"]) then
              else
                repeat task.wait() until tonumber(Module:GetMoney()) >= tonumber(Data["Money"]) or not SPD["Start Play"]
                Networking.UnitEvent:FireServer("Sell", Module:GetUnit_Pos(Data["Pos"]))
              end
            elseif Data["Type"] == "Priority" then
              if not SPD["Start Play"] then
                break
              elseif not Module:GetUnit_Pos(Data["Pos"]) or (Module:GetUnit_Pos(Data["Pos"]) and Module:GetUnits_Active(Module:GetUnit_Pos(Data["Pos"])).name ~= Data["Unit"]) then
              elseif Data["Priority_Name"] and Module:GetUnits_Active(Module:GetUnit_Pos(Data["Pos"])).Priority == Module:GetUnit_Priority(Data["Priority_Name"]) then
              else
                repeat task.wait() until tonumber(Module:GetMoney()) >= tonumber(Data["Money"]) or not SPD["Start Play"]
                Networking.UnitEvent:FireServer("ChangePriority", Module:GetUnit_Pos(Data["Pos"]))
              end
            end
          end
          task.wait(0.375)
        end
      end
    end)
  end)

  task.spawn(function()
    Macro.Replay = PlayerGui.HUD.Map.WavesAmount:GetPropertyChangedSignal("Text"):Connect(function()
      if PlayerGui.HUD.Map.WavesAmount.Text == "0" then
        if SPD["Start Play"] and not SPD["Start Record Macro"] then
          SPD["Start Play"] = false;LoopPlayMacro:Set(false)
          game.StarterGui:SetCore("SendNotification", {Title = "Speed Hub X", Text = "Replaying Macro.", Icon = "rbxassetid://0", Duration = 3})
          task.wait(0.5)
          SPD["Start Play"] = true;LoopPlayMacro:Set(true)
        end
      end
    end)
  end)
end)

task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  while true and wait(0.1) do
    pcall(function()
      local End_Screen = Player.PlayerGui.EndScreen
      if SPD["Auto Click Leave"] and End_Screen.Enabled and End_Screen.ShowEndScreen.Visible and End_Screen.Container.EndScreen:FindFirstChild("Leave") and End_Screen.Container.EndScreen:FindFirstChild("Leave").Visible then
        Module:ClickIU(End_Screen.Container.EndScreen.Leave.Button)wait(2)
      elseif SPD["Auto Click Next"] and End_Screen.Enabled and End_Screen.ShowEndScreen.Visible and End_Screen.Container.EndScreen:FindFirstChild("Next") and End_Screen.Container.EndScreen:FindFirstChild("Next").Visible then
        Module:ClickIU(End_Screen.Container.EndScreen.Next.Button)wait(2)
      elseif SPD["Auto Click Retry"] and End_Screen.Enabled and End_Screen.ShowEndScreen.Visible and End_Screen.Container.EndScreen:FindFirstChild("Retry") and End_Screen.Container.EndScreen:FindFirstChild("Retry").Visible then
        Module:ClickIU(End_Screen.Container.EndScreen.Retry.Button)wait(2)
      end
    end)
  end
end)

task.spawn(function()
  if game.PlaceId == 16146832113 then return end
  local TableRewards = {}

  Module:Run_Loop("Send Webhook If Stage Finished", function()
    if PlayerGui.EndScreen.Enabled and PlayerGui.EndScreen.Container.Visible then
      local StageInfo = PlayerGui.EndScreen.Container.EndScreen.Main.StageInfo
      local StageStatistics = PlayerGui.EndScreen.Container.EndScreen.Main.StageStatistics

      for _, v in next, PlayerGui.EndScreen.Container.EndScreen.Main.StageRewards.Main:GetChildren() do
        if v:IsA("Frame") then
          table.insert(TableRewards, v.Holder.Main.Amount.Text .. " ".. v.Name)
        end
      end
      Module:Webhooks(SPD["Webhook URL"], {
        ["content"] = SPD["Allow Ping On Ping Message/ID"] and SPD["Ping Message/ID"] or "",
        ["embeds"] = {{
          ["title"] = "**Speed Hub X | Anime Vanguards**",
          ["type"] = "rich",
          ["color"] = tonumber("0xfa0c0c"),
          ["thumbnail"] = {
            ["url"] = "https://cdn.discordapp.com/attachments/1195415731584638986/1215591096663674910/file-tXXhPXMSQUg74PLnEnCe1Lu0.png?ex=66e6a7ee&is=66e5566e&hm=0fc6347ea3a36dec0e54a67f9237b21fc64c0f08a39f988e2bea6c7ccfba6655&"
          },
          ["fields"] = {{
            ["name"] = "** -> :busts_in_silhouette: Profile : ** \n",
            ["value"] = "Username : || " .. Player.Name .. "||" .. "\n" .. (Player:GetAttribute("Level") or "N/A") ..
              "\n Gold : ".. (Player:GetAttribute("Gold") or "N/A") .. "\n Gems : " .. (Player:GetAttribute("Gems") or "N/A") .. 
              "\n Experience : " .. (Player:GetAttribute("Experience") or "N/A"),
            ["inline"] = false
          },{
            ["name"] = "** -> :earth_africa: Map Status : ** \n",
            ["value"] = ":map: **Map Name**: `" .. (StageInfo.Main.StageName.Text or "N/A") .. "`\n" ..
            ":clapper: **Act Name**: `" .. (StageInfo.Main.ActName.Text or "N/A") .. "`\n" ..
            ":crossed_swords: **Difficulty**: `" .. (StageInfo.Main.Difficulty.Text or "N/A") .. "`",
            ["inline"] = false
          },{
            ["name"] = "** -> :bar_chart: Game Statistics : ** \n",
            ["value"] = ":moneybag: **Money Earned**: `" .. (StageStatistics.MoneyEarned.Amount and StageStatistics.MoneyEarned.Amount.Text or "N/A") .. "`\n" ..
            ":stopwatch: **Play Time**: `" .. (StageStatistics.PlayTime.Amount and StageStatistics.PlayTime.Amount.Text or "N/A") .. "`\n" ..
            ":skull: **Takedowns**: `" .. (StageStatistics.Takedowns.Amount and StageStatistics.Takedowns.Amount.Text or "N/A") .. "`\n" ..
            ":zap: **Total Damage**: `" .. (StageStatistics.TotalDamage.Amount and StageStatistics.TotalDamage.Amount.Text or "N/A") .. "`\n" ..
            ":dart: **Units Placed**: `" .. (StageStatistics.UnitsPlaced.Amount and StageStatistics.UnitsPlaced.Amount.Text or "N/A") .. "`\n" ..
            ":ocean: **Wave**: `" .. (PlayerGui.HUD.Map.WavesAmount and PlayerGui.HUD.Map.WavesAmount.Text or "N/A") .. "`", 
            ["inline"] = false
          },{
            ["name"] = "** -> :gift: Rewards : ** \n",
            ["value"] = "\n" .. table.concat(TableRewards, "\n"),
            ["inline"] = false
          }
        },
        ["footer"] = {
          ["text"] = "Join our Discord : https://discord.gg/GSDVykAQHz",
          ["icon_url"] = "https://cdn.discordapp.com/attachments/1195415731584638986/1215591096663674910/file-tXXhPXMSQUg74PLnEnCe1Lu0.png?ex=66e6a7ee&is=66e5566e&hm=0fc6347ea3a36dec0e54a67f9237b21fc64c0f08a39f988e2bea6c7ccfba6655&"
        },
      }}})
      repeat wait() until not SPD["Send Webhook If Stage Finished"] or not PlayerGui.EndScreen.Enabled or not PlayerGui.EndScreen.Container.Visible
      TableRewards = {}
    end
  end)
end)

task.spawn(function()
  Player.PlayerGui.ViewFrames.ChildAdded:Connect(function(Unit)
    if game.PlaceId == 16146832113 then
      if SPD["Send Webhook If Summoned Unit Rarity"] then
        if Unit.Holder.Main.UnitName.UnitRarity.Text == SPD["Select WhiteList Rarity"] then 
          Module:Webhooks(SPD["Webhook URL"], {
            ["content"] = SPD["Allow Ping On Ping Message/ID"] and SPD["Ping Message/ID"] or "",
            ["embeds"] = {{
              ["title"] = "**Speed Hub X | Anime Vanguards**",
              ["type"] = "rich",
              ["color"] = tonumber("0xfa0c0c"),
              ["thumbnail"] = {
                ["url"] = "https://cdn.discordapp.com/attachments/1195415731584638986/1215591096663674910/file-tXXhPXMSQUg74PLnEnCe1Lu0.png?ex=66e6a7ee&is=66e5566e&hm=0fc6347ea3a36dec0e54a67f9237b21fc64c0f08a39f988e2bea6c7ccfba6655&"
              },
              ["fields"] = {{
                ["name"] = "** -> :busts_in_silhouette: Profile : ** \n",
                ["value"] = "Username : || " .. Player.Name .. "||" .. "\n" .. (PlayerGui.Hotbar.Main.Level.Level.Text or "N/A"),
                ["inline"] = false
              },{
                ["name"] = "** -> :beginner: Unit Name : ** \n",
                ["value"] = "`" .. Unit.Holder.Main.UnitName.UnitName.Text .. "`",
                ["inline"] = false
              },{
                ["name"] = "** -> :star2: Unit Rarity : **",
                ["value"] = "`" .. Unit.Holder.Main.UnitName.UnitRarity.Text .. "`",
                ["inline"] = false
              },
            },
            ["footer"] = {
              ["text"] = "Join our Discord : https://discord.gg/GSDVykAQHz",
              ["icon_url"] = "https://cdn.discordapp.com/attachments/1195415731584638986/1215591096663674910/file-tXXhPXMSQUg74PLnEnCe1Lu0.png?ex=66e6a7ee&is=66e5566e&hm=0fc6347ea3a36dec0e54a67f9237b21fc64c0f08a39f988e2bea6c7ccfba6655&"
            },
          }}})
        end
      elseif SPD["Send Webhook If Summoned Unit"] then
        Module:Webhooks(SPD["Webhook URL"], {
          ["content"] = SPD["Allow Ping On Ping Message/ID"] and SPD["Ping Message/ID"] or "",
          ["embeds"] = {{
            ["title"] = "**Speed Hub X | Anime Vanguards**",
            ["type"] = "rich",
            ["color"] = tonumber(0xfa0c0c),
            ["thumbnail"] = {
              ["url"] = "https://cdn.discordapp.com/attachments/1195415731584638986/1215591096663674910/file-tXXhPXMSQUg74PLnEnCe1Lu0.png?ex=66e6a7ee&is=66e5566e&hm=0fc6347ea3a36dec0e54a67f9237b21fc64c0f08a39f988e2bea6c7ccfba6655&"
            },
            ["fields"] = {{
              ["name"] = "** -> :busts_in_silhouette: Profile : ** \n",
              ["value"] = "Username : || " .. Player.Name .. "||" .. "\n" .. (PlayerGui.Hotbar.Main.Level.Level.Text or "N/A"),
              ["inline"] = false
            },{
              ["name"] = "** -> :beginner: Unit Name : **",
              ["value"] = "`" .. Unit.Holder.Main.UnitName.UnitName.Text .. "`",
              ["inline"] = false
            },{
              ["name"] = "** -> :star2: Unit Rarity : ** \n",
              ["value"] = "`" .. Unit.Holder.Main.UnitName.UnitRarity.Text .. "`",
              ["inline"] = false
            },
          },
          ["footer"] = {
            ["text"] = "Join our Discord : https://discord.gg/GSDVykAQHz",
            ["icon_url"] = "https://cdn.discordapp.com/attachments/1195415731584638986/1215591096663674910/file-tXXhPXMSQUg74PLnEnCe1Lu0.png?ex=66e6a7ee&is=66e5566e&hm=0fc6347ea3a36dec0e54a67f9237b21fc64c0f08a39f988e2bea6c7ccfba6655&"
          },
        }}})
      end
    end
  end)
end)

task.spawn(function()
  Module:Run_Loop("Auto Click Claim Daily Reward", function()
    if game.PlaceId == 16146832113 then
      for _, Daily in next, game.Players.LocalPlayer.PlayerGui.Windows.DailyRewards.Holder.Main:GetChildren() do
        local FirstBatch = Daily:FindFirstChild("FirstBatch")
        if FirstBatch then
          for _, First in next, FirstBatch:GetChildren() do
            local IsClaimed = First:FindFirstChild("Claimed")
            local isLocked = First:FindFirstChild("Locked")
  
            if not isLocked and not IsClaimed then
              local Day = First:FindFirstChild("Day")
              if Day then
                Networking.DailyRewardEvent:FireServer("Claim", tonumber(string.match(Day.Text, "%d+")))
              end
            end
          end
        end
  
        local SecondBatch = Daily:FindFirstChild("SecondBatch")
        if SecondBatch then
          for _, First in next, SecondBatch:GetChildren() do
            local IsClaimed = First:FindFirstChild("Claimed")
            local isLocked = First:FindFirstChild("Locked")
  
            if not isLocked and not IsClaimed then
              local Day = First:FindFirstChild("Day")
              if Day then
                Networking.DailyRewardEvent:FireServer("Claim", tonumber(string.match(Day.Text, "%d+")))
              end
            end
          end
        end
      end
    end
  end)
end)

task.spawn(function()
  Module:Run_Loop("Auto Click Claim Quest", function()
    if game.PlaceId == 16146832113 then
      for _, Quests in next, Player.PlayerGui.Windows.Quests.Holder.Main.Quests:GetChildren() do
        local IsAlert = Quests:FindFirstChild("Alert")
  
        if IsAlert then
          Networking.Quests.ClaimQuest:FireServer(Quests.Name)
        end
      end
      wait(5)
    end
  end)
end)

task.spawn(function()
  Module:Run_Loop("Auto Click Claim BattlePass", function() 
    if game.PlaceId == 16146832113 then
      Networking.BattlepassEvent:FireServer("ClaimAll")
      wait(5)
    end
  end)
end)

task.defer(function()
  
  Module:Run_Loop("Auto Click Claim Achievement", function()
    if game.PlaceId == 16146832113 then
      for _, Achievements in next, Player.PlayerGui.Windows.Achievements.Holder.Achievements.List:GetChildren() do
        if Achievements:IsA("Frame") then
          local RewardIcons = Achievements:FindFirstChild("RewardIcons")
                
          if RewardIcons then
            for _, v in next, RewardIcons[Achievements.Name]:GetChildren() do
              local IsLocked = v:FindFirstChild("Lock")
  
              if not IsLocked then
                Networking.Quests.ClaimQuest:FireServer(Achievements.Name)
              end
            end
          end
  
          wait(5)
        end
      end
    end
  end)
end)

task.spawn(function()
  Module:Run_Loop("Auto Click Claim Collection Units", function() 
    if game.PlaceId == 16146832113 then
      Networking.Units.CollectionEvent:FireServer("ClaimAll")
      wait(5)
    end
  end)
end)

task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  Module:Run_Loop("Auto Leave On Wave", function()  
    if tonumber(PlayerGui.HUD.Map.WavesAmount.Text) >= tonumber(SPD["Choose Wave Number"]) then
      Module:ClickIU(PlayerGui.Windows.Settings.Main.Settings.Misc.Settings.TeleportToLobby.Teleport.Button)
      PlayerGui:WaitForChild("PopupScreen"):WaitForChild("Background").Visible = false
      PlayerGui.PopupScreen.BaseConfirmationFrame.Size = UDim2.fromOffset(0.1, 0.1)
      PlayerGui.PopupScreen.BaseConfirmationFrame:WaitForChild("Main"):WaitForChild("Description").Visible = false
      Module:ClickIU(PlayerGui.PopupScreen.BaseConfirmationFrame.Main.Buttons:WaitForChild("Yes"):WaitForChild("Button"))
      wait(2)
    end
  end)

  Module:Run_Loop("Auto Upgrade On Wave", function() 
    if tonumber(PlayerGui.HUD.Map.WavesAmount.Text) >= tonumber(SPD["Choose Upgrade Wave Number"]) then
      for _, Unit in pairs(Workspace:FindFirstChild("Units"):GetChildren()) do
        if Unit then
          Networking.UnitEvent:FireServer("Upgrade", Unit.Name)
        end
      end

      wait(2)
    end
  end)

  Module:Run_Loop("Auto Sell On Wave", function()  
    if tonumber(PlayerGui.HUD.Map.WavesAmount.Text) >= tonumber(SPD["Choose Sell Wave Number"]) then
      for _, Unit in pairs(Workspace:FindFirstChild("Units"):GetChildren()) do
        if Unit then
          Networking.UnitEvent:FireServer("Sell", Unit.Name)
        end
      end

      wait(2)
    end
  end)
end)

task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  while true and wait(0.1) do
    if #workspace.Camera:GetChildren() > 0 then
      for _, ItemInfo in next, workspace.Camera:GetChildren() do
        if ItemInfo:IsA("Model") and #workspace.Camera:GetChildren() > 1 then
          VirtualInputManager:SendMouseButtonEvent(5, 5, 0, not UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1), game, 0)
        elseif not ItemInfo:IsA("Model") and #workspace.Camera:GetChildren() > 0 then
          VirtualInputManager:SendMouseButtonEvent(5, 5, 0, not UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1), game, 0)
        end
      end
    end
  end
end)

task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  Module:Run_Loop("Remove Map", function()
    for _, v in pairs(workspace.Map:GetChildren()) do
      if not v:IsA("SpawnLocation") then
        v:Destroy()workspace.Map.SpawnLocation.CanCollide = true
      end
    end
  end)
end)

task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  local Screen = Instance.new("ScreenGui")
  Screen.IgnoreGuiInset = true
  Screen.ResetOnSpawn = false
  Screen.Parent = PlayerGui

  local Frame = Instance.new("Frame")
  Frame.Size = UDim2.new(1, 0, 1, 0)
  Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  Frame.Parent = Screen
  Frame.Visible = false

  local TextLabel = Instance.new("TextLabel")
  TextLabel.Text = "NIL"
  TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel.Font = Enum.Font.SourceSansBold
  TextLabel.TextSize = 30
  TextLabel.Size = UDim2.new(1, 0, 1, 0)
  TextLabel.BackgroundTransparency = 1
  TextLabel.Parent = Frame

  Module:Run_Loop("Enable Screen Black / Stats", function()
    local startTime = tick()
    local initialGems = Player:GetAttribute("Gems") or 0 

    repeat wait()  
      if not Frame.Visible then Frame.Visible = true end
      TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
      Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        
      if PlayerGui:FindFirstChild("Hotbar") and PlayerGui:FindFirstChild("HUD") then
        local CurrentTime = tick() - startTime
        local CurrentGems = Player:GetAttribute("Gems") or 0
        local EarnedGems = CurrentGems - initialGems

        local Level = Player:GetAttribute("Level") or "N/A"
        local Gold = Player:GetAttribute("Gold") or "N/A"
        local Money = PlayerGui:FindFirstChild("Hotbar").Main.Yen.Text or "N/A"
        local Wave = PlayerGui:FindFirstChild("HUD").Map.WavesAmount.Text or "N/A"
        local Experience = Player:GetAttribute("Experience") or "N/A"

        TextLabel.Text = "Level : " .. Level ..
        "\n Money : " .. Money ..
        "\n Gold : " .. Gold ..
        "\n Gems : " .. CurrentGems ..
        "\n Earned Gems : " .. EarnedGems ..
        "\n Wave : " .. Wave ..
        "\n Experience : " .. Experience ..
        "\n Time Elapsed : " .. Format_Time(math.floor(CurrentTime))
      end
    until not SPD["Enable Screen Black / Stats"]

    if Frame.Visible then Frame.Visible = false end
  end)

  Module:Run_Loop("Enable Screen White / Stats", function()
    local startTime = tick()
    local initialGems = Player:GetAttribute("Gems") or 0 

    repeat wait()  
      if not Frame.Visible then Frame.Visible = true end
      TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
      Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        
      if PlayerGui:FindFirstChild("Hotbar") and PlayerGui:FindFirstChild("HUD") then
        local CurrentTime = tick() - startTime
        local CurrentGems = Player:GetAttribute("Gems") or 0
        local EarnedGems = CurrentGems - initialGems

        local Level = Player:GetAttribute("Level") or "N/A"
        local Gold = Player:GetAttribute("Gold") or "N/A"
        local Money = PlayerGui:FindFirstChild("Hotbar").Main.Yen.Text or "N/A"
        local Wave = PlayerGui:FindFirstChild("HUD").Map.WavesAmount.Text or "N/A"
        local Experience = Player:GetAttribute("Experience") or "N/A"

        TextLabel.Text = "Level : " .. Level ..
        "\n Money : " .. Money ..
        "\n Gold : " .. Gold ..
        "\n Gems : " .. CurrentGems ..
        "\n Earned Gems : " .. EarnedGems ..
        "\n Wave : " .. Wave ..
        "\n Experience : " .. Experience ..
        "\n Time Elapsed : " .. Format_Time(math.floor(CurrentTime))
      end
    until not SPD["Enable Screen White / Stats"]

    if Frame.Visible then Frame.Visible = false end
  end)
end)

task.spawn(function()
  if game.PlaceId == 16146832113 then return end

  local startTime = tick()
  local initialGold = Player:GetAttribute("Gold") or 0 
  local initialGems = Player:GetAttribute("Gems") or 0
  local initialMoney = tonumber(PlayerGui:FindFirstChild("Hotbar").Main.Yen.Text) or 0
  
  RunService.Heartbeat:Connect(function()
    if PlayerGui:FindFirstChild("Hotbar") and PlayerGui:FindFirstChild("HUD") then
      local Time = tick() - startTime 
  
      local Level = Player:GetAttribute("Level") or "N/A"
      local CurrentGold = Player:GetAttribute("Gold") or 0
      local CurrentGems = Player:GetAttribute("Gems") or 0
      local CurrentMoneyText = PlayerGui:FindFirstChild("Hotbar").Main.Yen.Text or "N/A"
      local CurrentMoney = tonumber(CurrentMoneyText) or 0
      local Wave = PlayerGui:FindFirstChild("HUD").Map.WavesAmount.Text or "N/A"
      local Experience = Player:GetAttribute("Experience") or "N/A"
  
      local EarnedGems = CurrentGems - initialGems
  
      LevelStatus:Set({["Title"] = "Level : " .. Level})
      GoldStatus:Set({["Title"] = "Gold : " .. CurrentGold})
      GemsStatus:Set({["Title"] = "Gems : " .. CurrentGems})
      MoneyStatus:Set({["Title"] = "Money : " .. CurrentMoneyText})
      WaveStatus:Set({["Title"] = "Wave : " .. Wave})
      ExperienceStatus:Set({["Title"] = "Experience : " .. Experience})
      TimeEStatus:Set({["Title"] = "Time Elapsed : " .. Format_Time(math.floor(Time))})
  
      GoldStatusEarned:Set({["Title"] = "Earned Gems : " .. EarnedGems})
      GemsStatusEarned:Set({["Title"] = "Earned Gems : " .. EarnedGems})
    end
  end)
end)
