repeat task.wait() until game:IsLoaded()

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

local Networking = ReplicatedStorage:WaitForChild("Networking")

local Player = Players.LocalPlayer

local CodeList = {
  "DELAY",
  "RELEASE",
  "10KLIKES", 
  "100KLIKES",
  "200KLIKES",
  "300KLIKES",
  "10MVISITS",
  "400KLIKES",
  "25MVISITS",
  "AV500KLIKES",
  "AV50MIL",
  "600KLIKES",
  "70MVISITS"
}

do
  FileSys:GetFolder("Speed Hub X - Macros")
  FileSys:GetFolder("Speed Hub X - Macros/Anime Vanguards")
end

local _isfile = isfile or function(f)return f end
local _isfolder = isfolder or function(f)return f end
local _delfolder = delfolder or function(f)return f end
local _delfile = delfile or function(f)return f end
local _setclipboard = setclipboard or function()end

local function GetCountUnits()
  local ListCount = {"All"}
  local UnitsFolder = workspace:FindFirstChild("Units")

  if UnitsFolder then
    for Count, Unit in pairs(UnitsFolder:GetChildren()) do
      table.insert(ListCount, Count)
    end
  end

  return ListCount
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
    Funcs:AddDropdown(_Maps, "Choose Map", false, {"Story", "LegendStage"}, {"Story"})
    Funcs:AddDropdown(_Maps, "Choose Stage", false, {"1", "2","3"}, {"1"})
    Funcs:AddDropdown(_Maps, "Choose Act Number", false, {"1", "2", "3", "4", "5", "6", "Infinite"}, {"1"})
    Funcs:AddDropdown(_Maps, "Choose Mode", false, {"Normal", "Nightmare"}, {"Normal"})
    Funcs:AddToggle(_Maps, "Allow Friends", "", false)
    _Maps:Seperator("Join")
    Funcs:AddToggle(_Maps, "Auto Join Maps", "", false)
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
    _Macros:Seperator("Macros")
    Funcs:AddDropdown(_Macros, "Delay To Macro", false, {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}, {"0"})
    Funcs:AddToggle(_Macros, "Start Record Macro", "", false)
    _Macros:Seperator("Play")
    Funcs:AddToggle(_Macros, "Start Play", "", false)
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
  local _Wave = _main:Section({["Title"] = "Wave", ["Content"] = ""}) do
    _Wave:Seperator("Config")
    Funcs:AddDropdown(_Wave, "Delay To Click ", false, {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}, {"0"})
    _Wave:Seperator("Wave")
    Funcs:AddToggle(_Wave, "Auto Click Skip Wave", "", false)
  end
  local _Claim = _main:Section({["Title"] = "Claim", ["Content"] = ""}) do
    Funcs:AddToggle(_Claim, "Auto Click Claim Daily Reward", "", false)
    Funcs:AddToggle(_Claim, "Auto Click Claim Quest", "", false)
    Funcs:AddToggle(_Claim, "Auto Click Claim BattlePass", "", false)
	Funcs:AddToggle(_Claim, "Auto Click Claim Achievement", "", false)
	Funcs:AddToggle(_Claim, "Auto Click Claim Collection Units", "", false)
  end
  local _Webhook = _main:Section({["Title"] = "Webhook", ["Content"] = ""}) do
    _Webhook:Seperator("Config")
    Funcs:AddTextbox(_Webhook, "Webhook URL", "", "", true)
    Funcs:AddToggle(_Webhook, "Allow Ping", "", false)
    _Webhook:Seperator("Webhook Stage Finished")
    Funcs:AddToggle(_Webhook, "Send Webhook If Stage Finished", "", false)
    _Webhook:Seperator("Webhook Summon")
    Funcs:AddDropdown(_Webhook, "Select WhiteList Rarity", true, {"Mythic", "Legendary", "Secret"}, {"Mythic"})
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
