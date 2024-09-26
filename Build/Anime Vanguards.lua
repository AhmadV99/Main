repeat task.wait() until game:IsLoaded() and not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") and not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LobbyLoadingScreen")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/V3.5"))()
local FileSys = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/File_System.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Settings.lua"))()

local Window = Library:Start({
  ["Name"] = "Speed Hub X | " .. Version,
  ["SaveFolder"] = "Speed Hub X | Anime Van"
})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local Networking = ReplicatedStorage:WaitForChild("Networking")

local Player = Players.LocalPlayer

local _env = getgenv and getgenv() or {}

local CodeList = {
  "SLAYER",
  "LATEUPDATESORRY",
  "THXFOR1MLIKES",
  "ROST10K",
  "TIKTOK50K"
}

do
  FileSys:GetFolder("Speed Hub X - Macros")
  FileSys:GetFolder("Speed Hub X - Macros/Anime Vanguards")
  FileSys:DeleteFile("Speed Hub X - Macros/Anime Vanguards/Ability")
end

local _isfile = isfile or function()end
local _isfolder = isfolder or function()end
local _delfolder = delfolder or function()end
local _delfile = delfile or function()end
local _setclipboard = setclipboard or function()end
local _require = require or function()end
local _readfile = readfile or function()end

local function GetCountUnits()
  local ListCount = {"All"}
  local UnitsFolder = workspace:FindFirstChild("Units")

  if UnitsFolder and #UnitsFolder:GetChildren() > 0 then
    for Count, Unit in pairs(UnitsFolder:GetChildren()) do
      table.insert(ListCount, Count)
    end
  end

  return ListCount
end

local function GetNameUnits()
  if game.PlaceId == 16146832113 then
    local ListName = {}
    local UnitsFolder = Player.PlayerGui.Windows.Units.Holder.Main.Units
  
    if UnitsFolder and #UnitsFolder:GetChildren() > 0 then
      for _, Unit in pairs(UnitsFolder:GetChildren()) do
        if Unit:IsA("Frame") then
          local Holder = Unit:FindFirstChild("Holder")
          if Holder then
            local Main = Holder:FindFirstChild("Main")
            if Main then
              local UnitName = Main:FindFirstChild("UnitName")
              if UnitName then
                table.insert(ListName, UnitName.Text)
              end
            end
          end
        end
      end
    end
  
    return ListName
  end

  return {""}
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
      ["Callback"] = (not Callback and SpeedHubX[Name] or Callback)
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

  local _MoreFPS = _home:Section({["Title"] = "More FPS", ["Content"] = ""}) do
    Funcs:AddButton(_MoreFPS, "Anti-Crash", "", function()
      local function reduce(v)
        if v:IsA("Part") then
          v.Material = Enum.Material.Plastic
        elseif v:IsA("Light") or v:IsA("Effect") then
          v:Destroy()
        elseif v:IsA("Texture") then
          v:Destroy()
        end
      end
      local Descendants = function(v)
        for _, v in pairs(v:GetDescendants()) do
          reduce(v)
        end
        container.DescendantAdded:Connect(reduce)
      end
      Descendants(Lighting)Descendants(workspace)
    end)
    Funcs:AddButton(_MoreFPS, "Reduce Lag", "", function()
      local function reduce(v)
        if v:IsA("Part") then
          v.Material = Enum.Material.Plastic
        elseif v:IsA("Light") or v:IsA("Effect") then
          v:Destroy()
        elseif v:IsA("Texture") then
          v:Destroy()
        end
      end
      for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
          v.Material = Enum.Material.SmoothPlastic
          reduce(v)
        end
      end
    end)

    Funcs:AddToggle(_MoreFPS, "Remove Map", "", false)
  end

  local _settings = _home:Section({["Title"] = "Settings", ["Content"] = ""}) do
    Funcs:AddButton(_settings, "Reset Script Saver", "", function()
      if _isfile("Speed Hub X | Anime Van") then
        _delfile("Speed Hub X | Anime Van")
      end
    end)
    Funcs:AddButton(_settings, "Rejoin", "", function()
      TeleportService:Teleport(game.PlaceId, Player)
    end)
  end
end

local _main = Window:MakeTab("Main") do
  local _Maps = _main:Section({["Title"] = "Maps", ["Content"] = ""}) do
    _Maps:Seperator("Config")
    Funcs:AddDropdown(_Maps, "Choose Map", false, {"Story", "LegendStage", "Raid"}, {"Story"})
    Funcs:AddDropdown(_Maps, "Choose Stage", false, {"1", "2","3"}, {"1"})
    Funcs:AddDropdown(_Maps, "Choose Act Number", false, {"1", "2", "3", "4", "5", "6", "Infinite"}, {"1"})
    Funcs:AddDropdown(_Maps, "Choose Mode", false, {"Normal", "Nightmare"}, {"Normal"})
    Funcs:AddToggle(_Maps, "Allow Friends", "", false)
    Funcs:AddDropdown(_Maps, "Teleport Mode", false, {"Walk", "Instant", "Tween"}, {"Instant"})
    Funcs:AddToggle(_Maps, "Auto Click Start", "", true)
    _Maps:Seperator("Join")
    Funcs:AddToggle(_Maps, "Auto Join Maps", "", false)
    _Maps:Seperator("Challenge")
    Funcs:AddToggle(_Maps, "Auto Join Challenge", "", false)
    _Maps:Seperator("Raids")
    Funcs:AddToggle(_Maps, "Auto Join Raids", "", false)
    _Maps:Seperator("Boss Event")
    Funcs:AddToggle(_Maps, "Auto Join Boss Event", "", false)
  end
  local _Game = _main:Section({["Title"] = "Game", ["Content"] = ""}) do
    Funcs:AddToggle(_Game, "Auto Click Leave", "", false)
    Funcs:AddToggle(_Game, "Auto Click Next", "", false)
    Funcs:AddToggle(_Game, "Auto Click Retry", "", false)
  end
  local _Misc = _main:Section({["Title"] = "Miscellaneous", ["Content"] = ""}) do
    _Misc:Seperator("Speed")
    Funcs:AddDropdown(_Misc, "Set WalkSpeed", false, {"100", "200", "300", "400", "500"}, {"300"})
    Funcs:AddToggle(_Misc, "Enable WalkSpeed", "", false)
    _Misc:Seperator("Teleport")
    Funcs:AddToggle(_Misc, "CTRL + Click to Teleport", "", false)
    _Misc:Seperator("Other")
    Funcs:AddToggle(_Misc, "Infinite Jump", "", false)
    Funcs:AddToggle(_Misc, "Enable Screen Black / Stats", "", false)
    Funcs:AddToggle(_Misc, "Enable Screen White / Stats", "", false)
  end
  local _Macros = _main:Section({["Title"] = "Macros / Play", ["Content"] = ""}) do
    _Macros:Seperator("Create File Config")
    Funcs:AddTextbox(_Macros, "File Name", "", "", true)
    Funcs:AddButton(_Macros, "Create On File Name", "", function()
      FileSys:GetFile("Speed Hub X - Macros/Anime Vanguards/" .. SpeedHubX["File Name"] .. ".json", {})
    end)
    _Macros:Seperator("File Config")
    local UpdateFile = Funcs:AddDropdown(_Macros, "Select File", false, FileSys:ListFiles("Speed Hub X - Macros/Anime Vanguards", "json"), {""})
    Funcs:AddButton(_Macros, "Refersh Select File", "", function()
      UpdateFile:Clear()UpdateFile:Refresh(FileSys:ListFiles("Speed Hub X - Macros/Anime Vanguards", "json"), {""})
    end)
    Funcs:AddButton(_Macros, "Delete On Select File", "", function()
      FileSys:DeleteFile("Speed Hub X - Macros/Anime Vanguards/" .. SpeedHubX["Select File"] .. ".json")
    end)
    _Macros:Seperator("Import")
    _env.ImportMacroName = Funcs:AddTextbox(_Macros, "Import Macro Name", "", "", true)
    _env.ImportMacroURL = Funcs:AddTextbox(_Macros, "Import Macro URL", "Only Url Raw Or Discord Link", "", true)
    Funcs:AddButton(_Macros, "Create Import Macro", "", function()
      local ImportUrl = SpeedHubX["Import Macro URL"]
      local ImportContent = nil

      if string.find(ImportUrl, "https://raw.githubusercontent.com/") or string.find(ImportUrl, "https://cdn.discordapp.com/attachments/") or string.find(ImportUrl, "https://pastebin.com/raw/") then
        ImportContent = game:HttpGet(ImportUrl)
      end

      if ImportContent then
        FileSys:GetFile("Speed Hub X - Macros/Anime Vanguards/" .. SpeedHubX["Import Macro Name"] .. ".json", ImportContent)
        game.StarterGui:SetCore("SendNotification", {Title = "Speed Hub X", Text = "Successfully Imported Macro : " .. SpeedHubX["Import Macro Name"] .. ".json",Icon = "rbxassetid://0",Duration = 3})
        ImportMacroName:Set("")ImportMacroURL:Set("")
      else
        game.StarterGui:SetCore("SendNotification", {Title = "Speed Hub X",Text = "Failed to import macro content.",Icon = "rbxassetid://0",Duration = 3})
      end
    end)
    _Macros:Seperator("Export Macros")
    Funcs:AddButton(_Macros, "Export Macro", "", function()
      local Success, Message = pcall(function()
        local MacroName = SpeedHubX["Select File"]
        local FilePath = "Speed Hub X - Macros/Anime Vanguards/" .. MacroName .. ".json"
  
        if FilePath and _readfile(FilePath) then
          _setclipboard(_readfile(FilePath))
        else
          game.StarterGui:SetCore("SendNotification", {Title = "Speed Hub X",Text = "File not found: " .. MacroName .. ".json",Icon = "rbxassetid://0",Duration = 3})
        end
      end)
  
      if Success then
        game.StarterGui:SetCore("SendNotification", {Title = "Speed Hub X",Text = "Successfully exported macro: " .. SpeedHubX["Select File"] .. ".json. Copied to your clipboard!",Icon = "rbxassetid://0",Duration = 3})
      else
        game.StarterGui:SetCore("SendNotification", {Title = "Speed Hub X",Text = Message,Icon = "rbxassetid://0",Duration = 3})
      end
    end)
    _Macros:Seperator("Macros")
    Funcs:AddToggle(_Macros, "Allow Ability In Start Record Macro", "", true)
    Funcs:AddToggle(_Macros, "Start Record Macro", "", false)
    _Macros:Seperator("Play Macros")
    _env.LoopPlayMacro = Funcs:AddToggle(_Macros, "Start Play", "", false)
    Funcs:AddToggle(_Macros, "Auto Use Ability In Macros", "", false)
  end
  local _Unit = _main:Section({["Title"] = "Units", ["Content"] = ""}) do
    _Unit:Seperator("Config")
    local UpdateCount = Funcs:AddDropdown(_Unit, "Select Unit Count", false, GetCountUnits(), {"1"})
    Funcs:AddButton(_Unit, "Refersh Select Unit Count", "", function()
      UpdateCount:Clear()UpdateCount:Refresh(GetCountUnits(), {"1"})
    end)
    Funcs:AddDropdown(_Unit, "Choose Upgrade Or Sell", false, {"Upgrade", "Sell"}, {"Upgrade"})
    Funcs:AddDropdown(_Unit, "Delay To Click", false, {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}, {"0"})
    _Unit:Seperator("Unit")
    Funcs:AddToggle(_Unit, "Auto Click Unit", "", false)
  end
  local _Status = _main:Section({["Title"] = "Status", ["Content"] = ""}) do
    if game.PlaceId == 16146832113 then
      _Status:Paragraph({["Title"] = "This game is Not Supported, Please Go Play"})
    else
      _Status:Seperator("Status")
      _env.LevelStatus = _Status:Paragraph({["Title"] = "Level"})
      _env.GoldStatus = _Status:Paragraph({["Title"] = "Gold"})
      _env.GemsStatus = _Status:Paragraph({["Title"] = "Gems"})
      _env.MoneyStatus = _Status:Paragraph({["Title"] = "Money"})
      _env.WaveStatus = _Status:Paragraph({["Title"] = "Wave"})
      _env.ExperienceStatus = _Status:Paragraph({["Title"] = "Experience"})
      _env.TimeEStatus = _Status:Paragraph({["Title"] = "Time Elapsed"})
      _Status:Seperator("Status Earned")
      _env.GoldStatusEarned = _Status:Paragraph({["Title"] = "Earned Gold"})
      _env.GemsStatusEarned = _Status:Paragraph({["Title"] = "Earned Gems"})
    end
  end
  local _Wave = _main:Section({["Title"] = "Wave", ["Content"] = ""}) do
    _Wave:Seperator("Config")
    Funcs:AddDropdown(_Wave, "Delay To Click ", false, {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}, {"0"})
    _Wave:Seperator("Wave")
    Funcs:AddToggle(_Wave, "Auto Click Skip Wave", "", false)
    _Wave:Seperator("Leave Wave")
    Funcs:AddTextbox(_Wave, "Choose Leave Wave Number", "", "", true)
    Funcs:AddToggle(_Wave, "Auto Leave On Wave", "", false)
    _Wave:Seperator("Upgrade Wave")
    Funcs:AddTextbox(_Wave, "Choose Upgrade Wave Number", "", "", true)
    Funcs:AddToggle(_Wave, "Auto Upgrade On Wave", "", false)
    _Wave:Seperator("Sell Wave")
    Funcs:AddTextbox(_Wave, "Choose Sell Wave Number", "", "", true)
    Funcs:AddToggle(_Wave, "Auto Sell On Wave", "", false)
  end
  local _Claim = _main:Section({["Title"] = "Claim", ["Content"] = ""}) do
    Funcs:AddToggle(_Claim, "Auto Click Claim Daily Reward", "", false)
    Funcs:AddToggle(_Claim, "Auto Click Claim Quest", "", false)
    Funcs:AddToggle(_Claim, "Auto Click Claim BattlePass", "", false)
    Funcs:AddToggle(_Claim, "Auto Click Claim Achievement", "", false)
    Funcs:AddToggle(_Claim, "Auto Click Claim Collection Units", "", false)
    Funcs:AddToggle(_Claim, "Auto Click Claim Enemy Index", "", false)
  end
  local _Traits = _main:Section({["Title"] = "Traits", ["Content"] = ""}) do
    _Traits:Seperator("Config")
    Funcs:AddDropdown(_Traits, "Choose WhiteList Traits", false, {"Range", "Range I", "Range II", "Range III", "Swift", "Swift I", "Swift II", "Swift III", "Vigor", "Vigor I", "Vigor II", "Vigor III", "Scholar", "Marksman", "Fortune", "Blitz", "Solar", "Deadeye", "Ethereal", "Monarch"}, {""})
    Funcs:AddDropdown(_Traits, "Choose Units", false, GetNameUnits(), {""})
    local UpdateUnit = Funcs:AddButton(_Unit, "Refersh Choose Units", "", function()
      UpdateUnit:Clear()UpdateUnit:Refresh(GetNameUnits(), {""})
    end)
    _Traits:Seperator("Traits")
    _env.ChancesTraits = _Traits:Paragraph({["Title"] = "You have Chance : N/A"})
    Funcs:AddToggle(_Traits, "Auto Reroll Units", "If WhiteListed Traits, Will be Stopping Auto Reroll Units", false)
  end
  local _Webhook = _main:Section({["Title"] = "Webhook", ["Content"] = ""}) do
    _Webhook:Seperator("Config")
    Funcs:AddTextbox(_Webhook, "Webhook URL", "", "", true)
    Funcs:AddTextbox(_Webhook, "Ping Message/ID", "", "", false)
    Funcs:AddToggle(_Webhook, "Allow Ping On Ping Message/ID", "", false)
    _Webhook:Seperator("Webhook Stage Finished")
    Funcs:AddToggle(_Webhook, "Send Webhook If Stage Finished", "", false)
    _Webhook:Seperator("Webhook Summon")
    Funcs:AddDropdown(_Webhook, "Select WhiteList Rarity", true, {"Mythic", "Legendary", "Secret"}, {"Mythic"})
    Funcs:AddToggle(_Webhook, "Send Webhook If Summoned Unit Rarity", "", false)
    Funcs:AddToggle(_Webhook, "Send Webhook If Summoned Unit", "", false)
  end
  local _Summon = _main:Section({["Title"] = "Summon", ["Content"] = ""}) do
    Funcs:AddToggle(_Summon, "Auto Click Summon X1", "", false)
    Funcs:AddToggle(_Summon, "Auto Click Summon X10", "", false)
  end
  local _RCode = _main:Section({["Title"] = "Redeem Code", ["Content"] = ""}) do
    Funcs:AddButton(_RCode, "Redeem Code", "", function()
      for _, Code in next, CodeList do
        Networking.CodesEvent:FireServer(Code)
      end
    end)
  end
end

return SpeedHubX
