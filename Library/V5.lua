local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local VirtualUser = game:GetService("VirtualUser")
local Player = Players.LocalPlayer

task.spawn(function()
  Player.Idled:connect(function()
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
  end)
end)

local SpeedHubX_Lib = {
  info = {
    Version = "5.0.0",
    PlaceName = ""
  },
  Themes = {
    ["Default"] = {
      ["Color Background 1"] = Color3.fromRGB(10, 10, 10),
      ["Color Background 2"] = Color3.fromRGB(30, 30, 30),
      ["Color Theme"] = Color3.fromRGB(247, 22, 22),
      ["Color Text"] = Color3.fromRGB(240, 240, 240),
      ["Color Dark Text"] = Color3.fromRGB(200, 200, 200),
      ["Color Stroke"] = Color3.fromRGB(247, 22, 22),
      ["Corner Radius"] = UDim.new(0, 5),
      ["Font"] = {
        Enum.Font.GothamBlack,
        Enum.Font.GothamBold,
        Enum.Font.GothamMedium
      },
      ["Stroke Thickness"] = .1,
      ["Tween Style"] = Enum.EasingStyle.Quad
    },
  },
  Flags = {},
  Save = {
    Theme = "Default",
    UISize = {600, 400},
    ScrollSize = 170,
    TransparencyHub = 0
  },
  Icons = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Icons.lua"))() ,
  SaveForTheme = {
    Stroke = {},
    Buttons = {},
    Images = {},
    Text = {},
    DarkText = {},
    Frames = {},
    Corner = {},
    Theme = {},
    Toggle = {}
  }
}

local function GetIcon(GetName)
  if #GetName:split("") < 1 then return GetName end
  for iconName,rbxassetid in pairs(SpeedHubX_Lib.Icons) do
    local Name1 = GetName:lower():gsub("lucide", ""):gsub("-", "")
    local Name2 = iconName:lower():gsub("lucide", ""):gsub("-", "")
    if Name1 == Name2 then
      return rbxassetid
    end
  end

  for iconName,rbxassetid in pairs(SpeedHubX_Lib.Icons) do
    local Name1 = GetName:lower():gsub("lucide", ""):gsub("-", "")
    local Name2 = iconName:lower():gsub("lucide", ""):gsub("-", "")
    if Name2:find(Name1) then
      return rbxassetid
    end
  end
  return GetName
end

local ViewportSize = workspace.CurrentCamera.ViewportSize
local UIScale = ViewportSize.Y / 550

local function SetProps(Instance, props)
  if props and typeof(props) == "table" then
    table.foreach(props, function(prop, value)
      Instance[prop] = value
    end)
  end
  return Instance
end

local function SetChildren(Instance, children)
  if children and typeof(children) == "table" then
    table.foreach(children, function(a, b)
      b.Parent = Instance
    end)
  end
  return Instance
end

local function Create(InstanceName, parent, props, Children)
  local New = Instance.new(InstanceName)
  if parent and typeof(parent) == "Instance" then 
  New.Parent = parent SetProps(New, props)SetChildren(New, Children)
  else SetProps(New, parent)SetChildren(New, props)end
  return New
end

local function FindTable(table, val)
  for i,_ in pairs(table) do
    if i == val then
      return true
    end
  end
end
local function VerifyTheme(ThemeName)
  for name,__ in pairs(SpeedHubX_Lib.Themes) do
    if name == ThemeName then
      return true
    end
  end
end

local function LoadSettings(FileName)
  if readfile and isfile and isfile(FileName) then
    local decode = HttpService:JSONDecode(readfile(FileName))
    if decode and typeof(decode) == "table" then
      if FindTable(decode, "ScrollSize") then SpeedHubX_Lib.Save["ScrollSize"] = decode["ScrollSize"]end
      if FindTable(decode, "UISize") then SpeedHubX_Lib.Save["UISize"] = decode["UISize"]end
      if FindTable(decode, "Theme") and VerifyTheme(decode["Theme"]) then SpeedHubX_Lib.Save["Theme"] = decode["Theme"]end
      if FindTable(decode, "TransparencyHub")then SpeedHubX_Lib.Save["TransparencyHub"] = decode["TransparencyHub"]end
    end
  end
end;LoadSettings("SpeedHubX_Lib")

local Theme = SpeedHubX_Lib.Themes[SpeedHubX_Lib.Save.Theme]
local function SaveSenttigs(FileName, save)
  if writefile then
    local json = HttpService:JSONEncode(save)
    writefile(FileName, json)
  end
end

local function CreateTween(Configs)
  local Instance = Configs[1] or Configs.Instance
  local Prop = Configs[2] or Configs.Prop
  local NewVal = Configs[3] or Configs.NewVal
  local Time = Configs[4] or Configs.Time or 0.5
  local TweenWait = Configs[5] or Configs.wait or false
  local TweenInfo = TweenInfo.new(Time, Theme["Tween Style"])
  local Tween = TweenService:Create(Instance, TweenInfo, {[Prop] = NewVal})
  Tween:Play()
  if TweenWait then
    Tween.Completed:Wait()
  end
  return Tween
end


local function MakeDrag(Instance)
	task.spawn(function()
		local DragStart, StartPos
		local UIScale = Instance.Parent:FindFirstChildWhichIsA("UIScale") and Instance.Parent.UIScale.Scale or 1
		
		local function Update(Input)
			local delta = Input.Position - DragStart
			local Position = UDim2.new(
				StartPos.X.Scale,
				StartPos.X.Offset + delta.X / UIScale,
				StartPos.Y.Scale,
				StartPos.Y.Offset + delta.Y / UIScale
			)
			Instance.Position = Position
		end

		Instance.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				StartPos = Instance.Position
				DragStart = Input.Position

				local Connection
				Connection = UserInputService.InputChanged:Connect(function(MoveInput)
					if MoveInput.UserInputType == Enum.UserInputType.MouseMovement or MoveInput.UserInputType == Enum.UserInputType.Touch then
						Update(MoveInput)
					end
				end)

				Instance.InputEnded:Connect(function(EndInput)
					if EndInput.UserInputType == Enum.UserInputType.MouseButton1 or EndInput.UserInputType == Enum.UserInputType.Touch then
						Connection:Disconnect()
					end
				end)
			end
		end)
	end)

	return Instance
end

local function insertTheme(instance, Theme)
  table.insert(SpeedHubX_Lib.SaveForTheme[Theme], instance)
  if typeof(instance) == "table" then
    return instance[1]
  end
  return instance
end

local function Corner(props, Circle)
  local New = Create("UICorner", {
    CornerRadius = Circle and UDim.new(0.5, 0) or Theme["Corner Radius"]
  })SetProps(New, props)
  if not Circle then table.insert(SpeedHubX_Lib.SaveForTheme.Corner, New)end
  return New
end

local function Stroke(props)
  local New = Create("UIStroke", {
    Color = Theme["Color Stroke"],
    Thickness = Theme["Stroke Thickness"],
    ApplyStrokeMode = "Border"
  })SetProps(New, props)
  table.insert(SpeedHubX_Lib.SaveForTheme.Stroke, New)
  return New
end

local function Button(parent, props, childrens)
  local New = Create("TextButton", parent, {
    Text = "",
    AutoButtonColor = false,
    BackgroundColor3 = Theme["Color Background 2"],
    BackgroundTransparency = Theme["Transparency"],
    Name = "Frame"
  }, {Corner()})SetProps(New, props)SetChildren(New, childrens)
  table.insert(SpeedHubX_Lib.SaveForTheme.Buttons, New)
  return New
end

local function AddConnection(Instance, Connection, func)
  Instance[Connection]:Connect(function()func(Instance)end)
  return Instance
end

local function ConnectSave(Instance, func)
  Instance.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
      while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
      end
    end
    func()
  end)
end

local ScreenGui = Create("ScreenGui", CoreGui, {
  Name = "SpeedHubX_Lib"
}, {
  Create("UIScale", {
    Scale = UIScale
  })
})

local ScreenFind = CoreGui:FindFirstChild(ScreenGui.Name)
if ScreenFind and ScreenFind ~= ScreenGui then
  ScreenFind:Destroy()
end

task.spawn(function()
  local NotifyContainer = Create("Frame", ScreenGui, {
    Size = UDim2.new(0, 300, 1),
    Position = UDim2.fromScale(1),
    AnchorPoint = Vector2.new(1),
    BackgroundTransparency = 1
  }, {
    Create("UIPadding", {
      PaddingLeft = UDim.new(0, 25),
      PaddingTop = UDim.new(0, 25),
      PaddingBottom = UDim.new(0, 30)
    }), Create("UIListLayout", {
      Padding = UDim.new(0, 15),
        VerticalAlignment = "Bottom"
    })
  })

  function SpeedHubX_Lib:MakeNotify(Configs)
    local NTitle = Configs[1] or Configs.Title or "Notification"
    local NText = Configs[2] or Configs.Text or ""
    local NTime = Configs[3] or Configs.Time or 5
    local NFrame = Create("Frame", NotifyContainer, {
      Size = UDim2.new(2, 0, 0, 0),
      BackgroundTransparency = 1,
      AutomaticSize = "Y",
      Name = "Title"
    })
    local RealNFrame = insertTheme(Create("Frame", NFrame, {
      Size = UDim2.new(0.5, -25),
      BackgroundColor3 = Theme["Color Background 1"],
      BackgroundTransparency = Theme["Transparency"],
      Position = UDim2.fromOffset(1),
      AutomaticSize = "Y",
      Active = true
    }, {
      Corner(),
      insertTheme(Create("TextLabel", {
        Size = UDim2.new(1, 0, 0, 15),
        Font = Theme["Font"][2],
        BackgroundTransparency = 1,
        Text = NTitle,
        TextSize = 12,
        Position = UDim2.new(0, 15, 0, 5),
        TextXAlignment = "Left",
        TextColor3 = Theme["Color Text"]
      }), "Text"),
      insertTheme(Create("TextLabel", {
        Size = UDim2.new(1, -25, 0, 0),
        Position = UDim2.new(0, 15, 0, 25),
        TextSize = 10,
        TextColor3 = Theme["Color Dark Text"],
        TextXAlignment = "Left",
        TextYAlignment = "Top",
        AutomaticSize = "Y",
        Text = NText,
        Font = Theme["Font"][3],
        BackgroundTransparency = 1,
        AutomaticSize = Enum.AutomaticSize.Y,
        TextWrapped = true
      }, {
        Create("Frame", {
          Size = UDim2.fromOffset(0, 8),
          Position = UDim2.fromScale(0, 1),
          BackgroundTransparency = 1
        })
      }), "DarkText")
    }), "Frames")
    local CloseNotify = Create("TextButton", RealNFrame, {
      Text = "X",
      Font = Enum.Font.FredokaOne,
      TextSize = 15,
      BackgroundTransparency = 1,
      TextColor3 = Color3.fromRGB(200, 200, 200),
      Position = UDim2.new(1, -5, 0, 2),
      AnchorPoint = Vector2.new(1, 0),
      Size = UDim2.fromOffset(15, 15)
    })
    local NotifyTimer = insertTheme(Create("Frame", RealNFrame, {
      Size = UDim2.new(1, 0, 0, 1.5),
      BackgroundColor3 = Theme["Color Stroke"],
      Position = UDim2.new(0, 2, 0, 20),
      BorderSizePixel = 0
    }, {
      Corner(),
      Create("Frame", {
        Size = UDim2.new(0, 0, 0, 5),
        Position = UDim2.new(0, 0, 1, 5),
        BackgroundTransparency = 1
      })
    }), "Stroke")
    local NotifyFinish, destroy
    CloseNotify.MouseButton1Click:Connect(function()
      if not destroy and not NotifyFinish and NFrame then
        NotifyFinish = true
        CreateTween({RealNFrame, "Position", UDim2.new(0, -50), 0.15, true})
        CreateTween({RealNFrame, "Position", UDim2.new(1), 0.50, true})
        NFrame:Destroy()
        destroy = true
      end
    end)  
    task.spawn(function()
      CreateTween({RealNFrame, "Position", UDim2.new(0, -50), 0.5, true})
      CreateTween({RealNFrame, "Position", UDim2.new(0, 0), 0.15, true})
      CreateTween({NotifyTimer, "Size", UDim2.new(0, 0, 0, 1.5), NTime, true})
      if not destroy and not NotifyFinish and NFrame then
        NotifyFinish = true
        CreateTween({RealNFrame, "Position", UDim2.new(0, -50), 0.15, true})
        CreateTween({RealNFrame, "Position", UDim2.new(1), 0.50, true})
        NFrame:Destroy()
        destroy = true
      end
    end)
    
    local Notify = {}
    function Notify:Destroy()destroy = true NFrame:Destroy()end
    function Notify:Visible(Bool)NFrame.Visible = Bool end
    function Notify:Wait()repeat task.wait()until not NFrame or NotifyFinish or destroy end
    return Notify
  end
end)

-- Themes
function SpeedHubX_Lib:GetIcon(IconName)
  return GetIcon(IconName)
end

function SpeedHubX_Lib:SetTransparency(NewVal)
  local NewVal = math.clamp(NewVal, 0, 0.5)
  SpeedHubX_Lib.Save.TransparencyHub = NewVal
  
  local Save = SpeedHubX_Lib.SaveForTheme
  table.foreach(Save.Frames, function(_,Intance)
    Intance.BackgroundTransparency = NewVal
  end)
  table.foreach(Save.Buttons, function(_,Intance)
    Intance.BackgroundTransparency = NewVal
  end)
end

function SpeedHubX_Lib:CreateTheme(ThemeName, Configs)
  SpeedHubX_Lib.Themes[ThemeName] = Configs
end

function SpeedHubX_Lib:SetTheme(themeName)
  if not VerifyTheme(themeName) then return end
  
  Theme, SpeedHubX_Lib.Save.Theme = SpeedHubX_Lib.Themes[themeName], themeName
  Theme["Transparency"] = SpeedHubX_Lib.Save.TransparencyHub
  
  local Save = SpeedHubX_Lib.SaveForTheme
  SaveSenttigs("SpeedHubX_Lib", SpeedHubX_Lib.Save)
  
  table.foreach(Save.Frames, function(_,Intance)
    if not Intance then return end
    Intance.BackgroundColor3 = Theme["Color Background 1"]
    Intance.BackgroundTransparency = Theme["Transparency"]
  end)
  table.foreach(Save.Buttons, function(_,Intance)
    if not Intance then return end
    Intance.BackgroundColor3 = Theme["Color Background 2"]
    Intance.BackgroundTransparency = Theme["Transparency"]
  end)
  table.foreach(Save.Stroke, function(_,Intance)
    if not Intance then return end
    if Intance:IsA("ImageLabel") then
      Intance.ImageColor3 = Theme["Color Stroke"]
    elseif Intance:IsA("UIStroke") then
      Intance.Color = Theme["Color Stroke"]
      Intance.Thickness = Theme["Stroke Thickness"]
    else
      Intance.BackgroundColor3 = Theme["Color Stroke"]
    end
  end)
  table.foreach(Save.Corner, function(_,Intance)
    if not Intance then return end
    Intance.CornerRadius = Theme["Corner Radius"]
  end)
  table.foreach(Save.Text, function(_,Intance)
    if not Intance then return end
    if Intance:IsA("ImageLabel") then
      Intance.ImageColor3 = Theme["Color Text"]
    else
      Intance.TextColor3 = Theme["Color Text"]
    end
  end)
  table.foreach(Save.DarkText, function(_,Intance)
    if not Intance then return end
    Intance.TextColor3 = Theme["Color Dark Text"]
  end)
  table.foreach(Save.Theme, function(_,Intance)
    if not Intance then return end
    Intance.BackgroundColor3 = Theme["Color Theme"]
  end)
  table.foreach(Save.Toggle, function(_,table)
    if not table[1] then return end
    if table[2]:GetToggle() then
      if table[1]:IsA("Frame") then
        table[1].BackgroundColor3 = Theme["Color Theme"]
      else
        table[1].Color = Theme["Color Theme"]
      end
    else
      if table[1]:IsA("Frame") then
        table[1].BackgroundColor3 = Theme["Color Stroke"]
      else
        table[1].Color = Theme["Color Stroke"]
      end
    end
  end)
end

function SpeedHubX_Lib:GetThemes()
  local Themes = {}
  table.foreach(SpeedHubX_Lib.Themes, function(ThemeName)
    table.insert(Themes, ThemeName)
  end)
  return Themes
end

-- Window
function SpeedHubX_Lib:Visible(Bool)ScreenGui.Enabled = Bool end
function SpeedHubX_Lib:Destroy()SreenGui:Destroy()end
function SpeedHubX_Lib:MakeWindow(Configs)
  local Minimized, WaitMinimize, SavedSize
  local WTitle = Configs[1] or Configs.Title or ""
  local SubTitle = Configs[2] or Configs.SubTitle or ""
  local LoadTitle = Configs[3] or Configs.LoadText or SubTitle
  local DefaultTheme = Configs[4] or Configs.DefaultTheme or false
  local SaveFolder = Configs[5] or Configs.SaveFolder or ""
  local SaveCfg = Configs[5] or Configs.Flags or ""
  local Flags = SpeedHubX_Lib.Flags
  
  if SaveCfg and typeof(SaveCfg) == "string" then
    SaveCfg = string.gsub(SaveCfg, "/", "|")
  end
  
  if DefaultTheme and typeof(DefaultTheme) == "string" and VerifyTheme(DefaultTheme) then
    SpeedHubX_Lib:SetTheme(DefaultTheme)
  end

  local function SaveFile(Name, Value)
    Flags[Name] = Value

    local Json = HttpService:JSONEncode(Flags)

    if writefile and isfolder and makefolder then
      if not isfolder(SaveFolder) then makefolder(SaveFolder) end
      writefile(SaveFolder .. [[/]] .. SaveCfg, json)
    end
  end

  local function LoadFile()
    if SaveCfg and typeof(SaveCfg) == "string" then
      if readfile and isfile and isfile(SaveCfg) then
        local decode = HttpService:JSONDecode(readfile(SaveCfg))
        
        if decode and typeof(decode) == "table" then
          Flags = decode
        end
      end
    end
  end;LoadFile()
  
  local MainFrame = MakeDrag(insertTheme(Create("Frame", ScreenGui, {
    Size = UDim2.fromOffset(unpack(SpeedHubX_Lib.Save.UISize)),
    Position = UDim2.new(0.5, -SpeedHubX_Lib.Save.UISize[1]/2, 0.5, -SpeedHubX_Lib.Save.UISize[2]/2),
    Active = true,
    BackgroundColor3 = Theme["Color Background 1"],
    BackgroundTransparency = .1
  }, {Corner()}), "Frames"))

  local UIStrokeMain = Create("UIStroke", MainFrame, {
    Thickness = 0.7,
    Color = Theme["Color Stroke"]
  })

  local Topbar = Create("Frame", MainFrame, {
    Size = UDim2.new(1, 0, 0, 28),
    BackgroundTransparency = 1
  })
  
  local MainScroll = Create("ScrollingFrame", MainFrame, {
    Size = UDim2.new(0, SpeedHubX_Lib.Save.ScrollSize, 1, -Topbar.Size.Y.Offset),
    Position = UDim2.new(0, 0, 1, 0),
    AnchorPoint = Vector2.new(0, 1),
    ScrollBarThickness = 1,
    BackgroundTransparency = 1,
    CanvasSize = UDim2.new(),
    AutomaticCanvasSize = "Y"
  }, {
    Create("UIPadding", {
      PaddingLeft = UDim.new(0, 10),
      PaddingRight = UDim.new(0, 10),
      PaddingTop = UDim.new(0, 10),
      PaddingBottom = UDim.new(0, 10)
    }), Create("UIListLayout", {
      Padding = UDim.new(0, 5)
    })
  })
  
  local Containers = Create("Frame", MainFrame, {
    Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -Topbar.Size.Y.Offset),
    AnchorPoint = Vector2.new(1, 1),
    Position = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1
  })
  
  local ControlSize1, ControlSize2 = MakeDrag(Create("Frame", MainFrame, {
    Size = UDim2.new(0, 35, 0, 35),
    Position = MainFrame.Size,
    Active = true,
    Draggable = true,
    AnchorPoint = Vector2.new(0.8, 0.8),
    BackgroundTransparency = 1
  })), MakeDrag(Create("Frame", MainFrame, {
    Size = UDim2.new(0, 20, 1, -30),
    Position = UDim2.new(0, MainScroll.Size.X.Offset, 1, 0),
    AnchorPoint = Vector2.new(0.5, 1),
    Active = true,
    BackgroundTransparency = 1
  }))
  
  local function ControlSize()
    local Pos1, Pos2 = ControlSize1.Position, ControlSize2.Position
    ControlSize1.Position = UDim2.fromOffset(math.clamp(Pos1.X.Offset, 400, 1000), math.clamp(Pos1.Y.Offset, 200, 500))
    ControlSize2.Position = UDim2.new(0, math.clamp(Pos2.X.Offset, 135, 250), 1, 0)
    
    MainScroll.Size = UDim2.new(0, ControlSize2.Position.X.Offset, 1, -Topbar.Size.Y.Offset)
    Containers.Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -Topbar.Size.Y.Offset)
    MainFrame.Size = ControlSize1.Position
  end
  
  ControlSize1:GetPropertyChangedSignal("Position"):Connect(ControlSize)
  ControlSize2:GetPropertyChangedSignal("Position"):Connect(ControlSize)
  
  ConnectSave(ControlSize1, function()
    if not Minimized then
      SpeedHubX_Lib.Save.UISize = {MainFrame.Size.X.Offset, MainFrame.Size.Y.Offset}
      SaveSenttigs("SpeedHubX_Lib", SpeedHubX_Lib.Save)
    end
  end)
  ConnectSave(ControlSize2, function()
    SpeedHubX_Lib.Save.ScrollSize = MainScroll.Size.X.Offset
    SaveSenttigs("SpeedHubX_Lib", SpeedHubX_Lib.Save)
  end)
  
  local DialogBackground = insertTheme(AddConnection(Create("TextButton", MainFrame, {
    BackgroundTransparency = 0.5,
    Text = "",
    BackgroundColor3 = Theme["Color Background 2"],
    Visible = false,
    AutoButtonColor = false,
    AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.fromScale(0.5, 0.5)
  }, {
    Corner()
  }), "MouseButton1Click", function(DialogBackground)
    CreateTween({DialogBackground, "Size", UDim2.new(), 0.7, true})
    DialogBackground.Visible = false
  end), "Stroke")
  
  local DialogFrame = insertTheme(Create("Frame", DialogBackground, {
    Size = UDim2.fromScale(0.65, 0.6),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.fromScale(0.5, 0.5),
    BackgroundColor3 = Theme["Color Background 1"],
    BackgroundTransparency = .1,
    Active = true
  }, {
    Corner(),
    Stroke()
  }), "Frames")
  
  local DialogTitle = insertTheme(Create("TextLabel", DialogFrame, {
    Size = UDim2.fromScale(0.6, 0.3),
    Position = UDim2.fromScale(0.5, 0.15),
    TextColor3 = Theme["Color Text"],
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    Font = Theme["Font"][1],
    TextScaled = true
  }), "Text")
  
  local DialogConfirm = insertTheme(Create("TextButton", DialogFrame, {
    Size = UDim2.fromScale(0.35, 0.20),
    Position = UDim2.fromScale(0.1, 0.65),
    BackgroundColor3 = Theme["Color Background 2"],
    TextColor3 = Color3.fromRGB(0, 200, 0),
    Font = Theme["Font"][2],
    TextSize = 18
  }, {
    Corner(),
    Stroke()
  }), "Buttons")
  
  local DialogCancel = insertTheme(Create("TextButton", DialogFrame, {
    Size = UDim2.fromScale(0.35, 0.20),
    Position = UDim2.fromScale(0.9, 0.65),
    AnchorPoint = Vector2.new(1, 0),
    BackgroundColor3 = Theme["Color Background 2"],
    TextColor3 = Color3.fromRGB(200, 0, 0),
    Font = Theme["Font"][2],
    TextSize = 18
  }, {
    Corner(),
    Stroke()
  }), "Buttons")
  local CloseBTN = insertTheme(Create("TextButton", Topbar, {
    Size = UDim2.fromOffset(20, 20),
    Position = UDim2.new(1, -10, 0.5, 1.5),
    AnchorPoint = Vector2.new(1, 0.5),
    Font = Enum.Font.FredokaOne,
    Text = "×",
    TextSize = 27,
    BackgroundTransparency = 1,
    TextColor3 = Theme["Color Text"],
    AutoButtonColor = false,
    TextYAlignment = "Bottom"
  }), "Text")
  local LabelTitle = insertTheme(Create("TextLabel", Topbar, {
    Font = Theme["Font"][1],
    TextSize = 16,
    TextColor3 = Theme["Color Text"],
    Text = WTitle,
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 20, 0, 0),
    Size = UDim2.fromScale(0, 1),
    AutomaticSize = "X",
    TextXAlignment = "Left"
  }, {
    insertTheme(Create("TextLabel", {
      TextSize = 10,
      Font = Theme["Font"][2],
      TextColor3 = Theme["Color Dark Text"],
      Position = UDim2.new(1, 5, 0, 2),
      Text = SubTitle,
      Size = UDim2.new(1, 0, 1, 0),
      BackgroundTransparency = 1,
      TextXAlignment = "Left"
    }), "DarkText")
  }), "Text")
  
  local IsFirst
  local Window = {Dialog = {}}
  CloseBTN["MouseButton1Click"]:Connect(function()
    if not WaitMinimize then
      WaitMinimize = true
      Window.Dialog:Create({
        Title = "Are you sure you want to close this script?",
        Confirm = {
          Text = "Yes",
          Callback = function()
            CreateTween({ScreenGui.UIScale, "Scale", 0, 0.3, true})
            ScreenGui:Destroy()
          end
        },
        Cancel = {
          Cancel = "Cancel"
        }
      })
      WaitMinimize = false
    end
  end)
  function Window.Dialog:Wait()
    repeat task.wait()
    until not DialogBackground or not DialogBackground.Visible
  end
  function Window.Dialog:Create(Configs)
    local Dialog = {
      Title = Configs[1] or Configs.Title or "Dialog",
      Confirm = {
        Text = Configs.Confirm[1] or Configs.Confirm.Text or "Confirm",
        Callback = Configs.Confirm[2] or Configs.Confirm.Callback or function()end
      },
      Cancel = {
        Text = Configs.Cancel[1] or Configs.Cancel.Text or "Cancel",
        Callback = Configs.Cancel[2] or Configs.Cancel.Callback or function()end
      },
    }
    
    local connect1, connect2
    local function disconnect()
      connect1:Disconnect()
      connect2:Disconnect()
    end
    
    DialogTitle.Text = Dialog.Title
    DialogCancel.Text = Dialog.Cancel.Text
    DialogConfirm.Text = Dialog.Confirm.Text
    
    connect1 = DialogCancel.MouseButton1Click:Connect(function()disconnect()
      task.spawn(Dialog.Cancel.Callback)
      CreateTween({DialogBackground, "Size", UDim2.new(), 0.3, true})
      DialogBackground.Visible = false
    end)
    
    connect2 = DialogConfirm.MouseButton1Click:Connect(function()disconnect()
      task.spawn(Dialog.Confirm.Callback)
      CreateTween({DialogBackground, "Size", UDim2.new(), 0.3, true})
      DialogBackground.Visible = false
    end)
    
    DialogBackground.Visible = true
    if Minimized then
      CreateTween({MainFrame, "Size", SavedSize, 0.3})
      MinimizeBTN.Text = "-"
      Minimized = false
    end
    CreateTween({DialogBackground, "Size", UDim2.fromScale(1, 1), 0.2, true})
  end
  function Window:Destroy()MainFrame:Destroy()end
  function Window:Visible(Bool)MainFrame.Visible = Bool end
  function Window:Set(NewVal)
    if typeof(NewVal) == "string" then
      LabelTitle.Text = NewVal
    elseif typeof(NewVal) == "number" then
      SpeedHubX_Lib:SetTransparency(NewVal)
    end
  end
  function Window:MakeTab(Configs)
    local TName = Configs[1] or Configs.Name or "Tab"
    local TImage = Configs[2] or Configs.Icon or "rbxassetid://"
    
    if not TImage:find("rbxassetid://") then
      TImage = GetIcon(TImage)
    end
    if not TImage:find("rbxassetid://") or #TImage:gsub("rbxassetid://", ""):split("") < 5 then
      TImage = false
    end
    
    local Container = Create("ScrollingFrame", Containers, {
      Size = UDim2.new(1, 0, 1, 0),
      ScrollBarThickness = 1,
      BackgroundTransparency = 1,
      AutomaticCanvasSize = "Y",
      CanvasSize = UDim2.new(),
      Visible = not IsFirst
    }, {
      Create("UIPadding", {
        PaddingLeft = UDim.new(0, 10),
        PaddingRight = UDim.new(0, 10),
        PaddingTop = UDim.new(0, 10),
        PaddingBottom = UDim.new(0, 10)
      }), Create("UIListLayout", {
        Padding = UDim.new(0, 5)
      })
    })
    
    local FrameC = Button(MainScroll, {
      Size = UDim2.new(1, 0, 0, 20),
    })
    
    local Text = insertTheme(Create("TextLabel", FrameC, {
      Font = Theme["Font"][3],
      Text = TName,
      Size = UDim2.new(1, -20, 1, 0),
      Position = UDim2.fromOffset(TImage and 38 or 18, 0),
      TextXAlignment = "Left",
      BackgroundTransparency = 1,
      TextColor3 = Theme["Color Text"],
      TextTransparency = IsFirst and 0.4 or 0,
      TextSize = 12,
      TextTruncate = "AtEnd"
    }), "DarkText")
    
    local Selected = insertTheme(Create("Frame", FrameC, {
      Size = UDim2.new(0, 5, 1, -6),
      Position = UDim2.new(0, 8, 0.5, 0),
      AnchorPoint = Vector2.new(0, 0.5),
      BackgroundTransparency = 1,
      BackgroundColor3 = Theme["Color Theme"]
    }, {
      Corner()
    }), "Theme")
    
    local Image = insertTheme(Create("ImageLabel", FrameC, {
      Size = UDim2.new(0, 15, 0, 15),
      Position = UDim2.new(0, 18, 0.5, 0),
      AnchorPoint = Vector2.new(0, 0.5),
      BackgroundTransparency = 1,
      Image = TImage or "",
      ImageTransparency = IsFirst and 0.4 or 0,
      ImageColor3 = Theme["Color Text"]
    }), "Text")
    
    FrameC.MouseButton1Click:Connect(function()
      for _,instance in pairs(Containers:GetChildren()) do
        if instance ~= Container and instance:IsA(Container.ClassName) then
          instance.Visible = false
        end
      end
      for _,instance in pairs(MainScroll:GetChildren()) do
        if instance ~= FrameC and instance:IsA(FrameC.ClassName) then
          CreateTween({instance["TextLabel"], "TextTransparency", 0.4, 0.3})
          CreateTween({instance["Frame"], "BackgroundTransparency", 1, 0.3})
          CreateTween({instance["ImageLabel"], "ImageTransparency", 0.4, 0.3})
        end
      end
      CreateTween({Text, "TextTransparency", 0, 0.3})
      CreateTween({Selected, "BackgroundTransparency", 1, 1})
      CreateTween({Image, "ImageTransparency", 0, 0.3})
      Container.Visible = true
    end)
    
    IsFirst = true
    local Tab = {}
    function UpdateTabText()
      Text.Text = TName
    end
    spawn(function()
      while true do wait(.0)
        UpdateTabText()
      end
    end)
    function Tab:Set(val1, val2)
      if val1 and typeof(val1) == "string" then
        if val2 then
          Text.Text = val1
          Image.Image = val2
        elseif val1:find("rbxassetid://") then
          Image.Image = val1
        else
          Text.Text = val1
        end
      end
    end
    function Tab:Visible(Bool)
      FrameC.Visible = Bool
      Container.Visible = Bool
    end
    function Tab:Destroy()
      FrameC:Destroy()
      Container:Destroy()
    end
    function Tab:AddSection(Configs)
      local SName = Configs[1] or Configs.Name or "Section"
      
      local Frame = Create("Frame", Container, {
        Size = UDim2.new(1, 0, 0, 15),
        BackgroundTransparency = 1
      })
      local Text = insertTheme(Create("TextLabel", Frame, {
        Font = Theme["Font"][2],
        Text = SName,
        TextSize = 11,
        Size = UDim2.new(1, -20, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Dark Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "DarkText")
      
      local Section = {}
      function Section:Set(NewVal)Text.Text = NewVal end
      function Section:Destroy()Frame:Destroy()end
      function Section:Visible(Bool)Frame.Visible = Bool end
      return Section
    end
    function Tab:AddLabel(Configs)
      local Type = Configs[1] or Configs.Type or ""
      local NameI = Configs[2] or Configs.Name or ""
      local ImageI = Configs[3] or Configs.Image or "rbxassetid://"
      
      local Frame = Button(Container, {
        Size = UDim2.new(1, 0, 0, 25)
      }, {
        Corner()
      })

      local Bagulho1, Bagulho2
      if Type == "Image" then
        Frame.Size = UDim2.new(1, 0, 0, 160)
        Bagulho1 = insertTheme(Create("TextLabel", Frame, {
          Font = Theme["Font"][2],
          Text = NameI,
          TextSize = 13,
          Size = UDim2.new(1, -25, 0, 25),
          Position = UDim2.new(0, 15, 0, 0),
          BackgroundTransparency = 1,
          TextColor3 = Theme["Color Text"],
          TextXAlignment = "Left",
          TextTruncate = "AtEnd"
        }), "Text")
        
        Bagulho2 = Create("ImageLabel", Frame, {
          Size = UDim2.new(0, 125, 0, 125),
          Position = UDim2.new(0, 15, 0, 25),
          BackgroundTransparency = 1,
          Image = ImageI
        })
      else
        Bagulho1 = insertTheme(Create("TextLabel", Frame, {
          Font = Theme["Font"][2],
          Text = NameI,
          TextSize = 13,
          Size = UDim2.new(1, -25, 1, 0),
          Position = UDim2.new(0, 15, 0, 0),
          BackgroundTransparency = 1,
          TextColor3 = Theme["Color Text"],
          TextXAlignment = "Left",
          TextTruncate = "AtEnd"
        }), "Text")
      end
      
      local Label = {}
      function UpdateLabelText()
        Bagulho1.Text = NameI
      end
      spawn(function()
        while true do wait(.0)
          UpdateLabelText()
        end
      end)
      function Label:Visible(Bool)Frame.Visible = Bool end
      function Label:Destroy()Frame:Destroy()end
      function Label:Set(NewValue1, NewValue2)
        if Type == "Image" then
          if typeof(NewValue1) == "string" then
            if string.find(NewValue1, "rbxassetid://") then
              Bagulho2.Image = NewValue1
            else
              Bagulho1.Text = NewValue1
            end
            if NewValue2 and string.find(NewValue2, "rbxassetid://") then
              Bagulho2.Image = NewValue2
            end
          end
        else
          if typeof(NewValue1) == "string" then
            Bagulho1.Text = NewValue1
          end
        end
      end
      return Label
    end
    function Tab:AddParagraph(Configs)
      local ParagraphName1 = Configs[1] or Configs.Name or ""
      local ParagraphName2 = Configs[2] or Configs.Text or ""
      
      local Frame = Button(Container, {
        Size = UDim2.new(1, 0, 0, 25),
        AutomaticSize = "Y"
      }, {
        Corner(),
        Create("UIListLayout"),
        Create("UIPadding", {
          PaddingLeft = UDim.new(0, 15),
          PaddingRight = UDim.new(0, 10),
          PaddingTop = UDim.new(0, 5),
          PaddingBottom = UDim.new(0, 5)
        }),
        Create("UIStroke", {
            Thickness = 1,
            Color = Theme["Color Stroke"]
        })
      })
      local TextLabel1 = Create("TextLabel", Frame, {
        TextSize = 13,
        TextColor3 = Theme["Color Text"],
        Text = ParagraphName1,
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = "Y",
        BackgroundTransparency = 1,
        TextXAlignment = "Left",
        TextYAlignment = "Top",
        Font = Theme["Font"][2],
        TextWrapped = true
      })
      local TextLabel2 = Create("TextLabel", Frame, {
        Size = UDim2.new(1, 0, 0, 0),
        BackgroundTransparency = 1,
        AutomaticSize = "Y",
        TextXAlignment = "Left",
        TextYAlignment = "Top",
        TextColor3 = Theme["Color Dark Text"],
        TextSize = 11,
        Text = ParagraphName2,
        Font = Theme["Font"][3],
        TextWrapped = true
      })
      local Paragraph = {}
      function UpdateParagraphText()
        TextLabel2.Text = ParagraphName1
      end
      spawn(function()
        while true do wait()
          UpdateParagraphText()
        end
      end)
      function Paragraph:Set(val1, val2)
        if not val2 then
          TextLabel2.Text = val1
        else
          TextLabel1.Text = val1
          TextLabel2.Text = val2
        end
      end
      function Paragraph:Visible(Bool)Frame.Visible = Bool end
      function Paragraph:Destroy()Frame:Destroy()end
      return Paragraph
    end
    function Tab:AddButton(Configs)
      local BName = Configs[1] or Configs.Name or ""
      local Callback = Configs[2] or Configs.Callback or function()end
      local Frame = Button(Container, {Size = UDim2.new(1, 0, 0, 25), AutomaticSize = "Y"})
      local Text = insertTheme(Create("TextLabel", Frame, {
        Font = Theme["Font"][2],
        Text = BName,
        TextSize = 13,
        Size = UDim2.new(1, -50, 0, 25),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "Text")
      local ButtonIcon = insertTheme(Create("ImageLabel", Frame, {
        Size = UDim2.new(0, 16, 0, 16),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -10, 0.5, 0),
        BackgroundTransparency = 1,
        Image = "rbxassetid://15458295336",
        ImageColor3 = Color3.fromRGB(200, 200, 200)
      }), "Stroke")
      local WaitClick
      Frame.MouseButton1Click:Connect(function()
        task.spawn(Callback, "Click")
        if not WaitClick then
          WaitClick = true
          CreateTween({ButtonIcon, "ImageColor3", Theme["Color Theme"], 0.5})
          CreateTween({Text, "TextColor3", Theme["Color Theme"], 0.5, true})
          CreateTween({ButtonIcon, "ImageColor3", Theme["Color Stroke"], 0.5})
          CreateTween({Text, "TextColor3", Theme["Color Text"], 0.5, true})
          WaitClick = false
        end
      end)
      local Button = {}
      function UpdateButtonText()
        Text.Text = BName
      end
      spawn(function()
        while true do wait(.0)
          UpdateButtonText()
        end
      end)
      function Button:Callback(func)
        Frame.MouseButton1Click:Connect(function()
          task.spawn(func, "Click")
        end)
      end
      function Button:Visible(Bool)Frame.Visible = Bool end
      function Button:Destroy()Frame:Deztroy()end
      function Button:Set(Configs)
        if typeof(Configs) == "string" then Text.Text = Configs
        elseif typeof(Configs) == "function" then Callback = Configs end
      end
      return Button
    end
    function Tab:AddToggle(Configs)
      local TName = Configs[1] or Configs.Name or ""
      local Default = Configs[2] or Configs.Default or false
      local Callback = Configs[3] or Configs.Callback or function()end
      local Flag = Configs[4] or Configs.Flag or false
      local ToggleCallback, ToggleTable = {}, {}
      function ToggleTable:GetToggle()return Default end
      
      if Flag and typeof(Flag) == "string" and FindTable(Flags, Flag) then Default = Flags[Flag]end

      local Frame = Button(Container, {Size = UDim2.new(1, 0, 0, 25)})
      local Text = insertTheme(Create("TextLabel", Frame, {
        Font = Theme["Font"][2],
        Text = TName,
        TextSize = 13,
        Size = UDim2.new(1, -70, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "Text")
      local ToggleFrame = insertTheme(Create("Frame", Frame, {
        Size = UDim2.new(0, 35, 0, 16),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -10, 0.5, 0),
        BackgroundTransparency = 1
      }, {
        Corner({}, true)
      }), "Theme")
      local ToggleIcon = insertTheme({Create("Frame", ToggleFrame, {
        Size = UDim2.new(0.6, 0, 0.4, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme["Color Stroke"]
      }, {
        Corner({}, true)
      }), ToggleTable}, "Toggle")
      local function SaveToggle()
        if Flag and typeof(Flag) == "string" then
          SaveFile(Flag, Default)
        end
      end
      local TweenWait
      local function SetToggle(NewVal)
        if not TweenWait then
          TweenWait = true
          Default = NewVal
          task.spawn(Callback, Default)
          SaveToggle()
          table.foreach(ToggleCallback, function(_,func)task.spawn(func, Default)end)
          if Default then
            CreateTween({ToggleIcon, "BackgroundColor3", Color3.fromRGB(48, 222, 29), 0.3})
          else
            CreateTween({ToggleIcon, "BackgroundColor3", Theme["Color Stroke"], 0.3})
          end
          TweenWait = false
        end
      end;task.spawn(SetToggle, Default, true)
      Frame.MouseButton1Click:Connect(function()
        SetToggle(not Default)
      end)
      local Toggle = {}
      function Toggle:Callback(func)
        Frame.MouseButton1Click:Connect(function()
          if not TweenWait then
            task.spawn(func, not NewVal)
          end
        end)
      end
      function UpdateTextToggle()
        Text.Text = TName
      end
      spawn(function()
        while true do wait(.0)
          UpdateTextToggle()
        end
      end)
      function Toggle:Set(newVal)
        if typeof(newVal) == "boolean" then SetToggle(newVal)
        elseif typeof(newVal) == "function" then Callback = (newVal)
        elseif typeof(newVal) == "string" then Text.Text = (newVal)
        end
      end
      function Toggle:Visible(Bool)Frame.Visible = Bool end
      function Toggle:Destroy()Frame:Destroy()end
      return Toggle
    end
    function Tab:AddSlider(Configs)
      local SName = Configs[1] or Configs.Name or ""
      local Increase = Configs[5] or Configs.Increase or 1
      local Min = Configs[2] and Configs[2] / Increase or Configs.MinValue and Configs.MinValue / Increase or 10 / Increase
      local Max = Configs[3] and Configs[3] / Increase or Configs.MaxValue and Configs.MaxValue / Increase or 100 / Increase
      local Default = Configs[4] or Configs.Default or 25
      local Callback = Configs[6] or Configs.Callback or function()end
      local Save = Configs[7] or Configs.Flag or false
      local SliderCallback = {}
      if Save and typeof(Save) == "string" and FindTable(Flags, Save) then
        Default = Flags[Save]
      end
      local Frame = Button(Container, {Size = UDim2.new(1, 0, 0, 25)})
      local Text = insertTheme(Create("TextLabel", Frame, {
        Font = Theme["Font"][2],
        Text = SName,
        TextSize = 13,
        Size = UDim2.new(0.55, -15, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "Text")
      local SliderPart = Create("TextButton", Frame, {
        Size = UDim2.new(0.45, 0, 1, 0),
        Position = UDim2.new(1, 0, 0, 0),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundTransparency = 1,
        AutoButtonColor = false,
        Text = ""
      })
      local SliderBar = insertTheme(Create("Frame", SliderPart, {
        Size = UDim2.new(1, -20, 0, 8),
        Position = UDim2.new(0.5, 0, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme["Color Stroke"]
      }, {
        Corner({}, true)
      }), "Stroke")
      local Indicator = insertTheme(Create("Frame", SliderBar, {
        Size = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = Theme["Color Theme"]
      }, {
        Corner({}, true)
      }), "Theme")
      local SliderIcon = insertTheme(Create("Frame", SliderBar, {
        Size = UDim2.new(0, 15, 0, 15),
        BackgroundColor3 = Theme["Color Stroke"],
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5)
      }, {
        Corner({}, true)
      }), "Stroke")
      local LabelVal = insertTheme(Create("TextLabel", SliderPart, {
        Size = UDim2.new(0, 18, 0, 18),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(0, 0, 0.5, 0),
        TextColor3 = Theme["Color Text"],
        BackgroundTransparency = 1,
        TextScaled = true,
        Font = Enum.Font.FredokaOne
      }), "Text")
      local BaseMousePos = Create("Frame", SliderBar, {
        Position = UDim2.new(0, 0, 0.5, 0),
        Visible = false
      })
      local function SaveSlider()
        if Save and typeof(Save) == "string" then
          SaveFile(Save, Default)
        end
      end
      local function UpdateLabel(NewValue)
        local Number = tostring(NewValue * Increase)
        LabelVal.Text = Number
        Default = tonumber(Number)
        task.spawn(Callback, tonumber(Number))
      end
      local function ControlPos()
        local MousePos = Player:GetMouse()
        local APos = MousePos.X - BaseMousePos.AbsolutePosition.X
        local ConfigureDpiPos = APos / SliderBar.AbsoluteSize.X
        SliderIcon.Position = UDim2.new(math.clamp(ConfigureDpiPos, 0, 1), 0, 0.5, 0)
      end
      SliderPart.MouseButton1Down:Connect(function()
        Container.ScrollingEnabled = false
        while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
          ControlPos()
        end
        table.foreach(SliderCallback, function(_,func)
          task.spawn(func, Default)
        end)
        SaveSlider()
        Container.ScrollingEnabled = true
      end)
      SliderIcon:GetPropertyChangedSignal("Position"):Connect(function()
        Indicator.Size = UDim2.new(SliderIcon.Position.X.Scale, 0, 1, 0)
        local SliderPos = SliderIcon.Position.X.Scale
        local NewValue = math.floor(((SliderPos * Max) / Max) * (Max - Min) + Min)
        UpdateLabel(NewValue)
      end)
		function SetSlider(NewValue)
        local Min, Max = Min * Increase, Max * Increase
        local SliderPos = (NewValue - Min) / (Max - Min)
        CreateTween({SliderIcon, "Position", UDim2.fromScale(math.clamp(SliderPos, 0, 1), 0.5), 0.3})
			end SetSlider(Default)
      local Slider = {}
      function Slider:Callback(func)
        func(Default)
        table.insert(SliderCallback, func)
      end
      function UpdateSliderText()
        Text.Text = SName
      end
      spawn(function()
        while true do wait(.0)
          UpdateSliderText()
        end
      end)
      function Slider:Set(val1)
        if typeof(val1) == "function" then Callback = val1
        elseif typeof(val1) == "string" then Text.Text = val1
        elseif typeof(val1) == "number" then SetSlider(val1) end
      end
      function Slider:Visible(Bool)Frame.Visible = Bool end
      function Slider:Destroy()Frame:Destroy()end
      return Slider
    end
    function Tab:AddColorpicker(Configs)
      local CName = Configs[1] or Configs.Name or ""
      local DefaultColor = Configs[2] or Configs.Default or Color3.fromRGB(0, 120, 50)
      local Callback = Configs[3] or Configs.Callback or function()end
      local Save = Configs[4] or Configs.Flag or false
      if Save and typeof(Save) == "string" and FindTable(Flags, Save) then
        DefaultColor = Color3.fromRGB(unpack(Flags[Save]))
      end
      local ColorH, ColorS, ColorV = Color3.toHSV(DefaultColor)
      local Frame = Button(Container, {Size = UDim2.new(1, 0, 0, 25)})
      local MainContainer = Create("Frame", Frame, {Size = UDim2.new(1, 0, 0, 25),BackgroundTransparency = 1})
      local Text = insertTheme(Create("TextLabel", MainContainer, {
        Font = Theme["Font"][2],
        Text = CName,
        TextSize = 13,
        Size = UDim2.new(0.55, -15, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "Text")
      
      local ColorSelected = Create("Frame", MainContainer, {
        Size = UDim2.new(0, 60, 1, -5),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -10, 0.5, 0)
      }, {
        Corner()
      })
      
      local function SaveColorpicker()
        if Save and typeof(Save) == "string" then
          local str = string.split(tostring(ColorSelected.BackgroundColor3))
          local Color = {
            tonumber(str[1]) * 255,
            tonumber(str[2]) * 255,
            tonumber(str[3]) * 255
          }
          SaveFile(Save, Color)
        end
      end
      
      local ColorpickerC = Create("Frame", Frame, {
        Size = UDim2.new(1, 0, 1, -25),
        Position = UDim2.new(0, 0, 0, 25),
        BackgroundTransparency = 1,
        ClipsDescendants = true
      })
      
      local Select1 = Create("ImageButton", ColorpickerC, {
        Size = UDim2.new(0, 180, 1, -20),
        Position = UDim2.new(0, 10, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        AutoButtonColor = false,
        Image = "rbxassetid://4155801252"
      }, {
        Corner()
      })
      
      local Select2 = Create("ImageButton", ColorpickerC, {
        Size = UDim2.new(1, -210, 0, 20),
        Position = UDim2.new(1, -10, 0, 10),
        AnchorPoint = Vector2.new(1, 0),
        AutoButtonColor = false
      }, {
        Corner(),
        Create("UIGradient", {
          Rotation = 0,
          Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
            ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
            ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
            ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
            ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
            ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
          })
        })
      })
      
      local BaseMousePos1, BaseMousePos2 = Create("Frame", Select1, {Visible = false}), Create("Frame", Select2, {Visible = false})
      
      local Label1, Label2, Label3
      local S1 = insertTheme(Create("TextBox", ColorpickerC, {
        Size = UDim2.new(0, 40, 0, 20),
        Position = UDim2.new(1, -10, 0, 35),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundColor3 = Theme["Color Background 2"],
        Font = Theme["Font"][3],
        TextColor3 = Theme["Color Text"],
        TextScaled = true,
        ClearTextOnFocus = false
      }, {
        Corner(),
        Create("TextLabel", {
          Size = UDim2.new(0, 20, 0, 20),
          AnchorPoint = Vector2.new(1, 0),
          TextColor3 = Color3.fromRGB(255, 0, 0),
          TextScaled = true,
          BackgroundTransparency = 1,
          Text = "R",
          Font = Theme["Font"][3]
        })
      }), "Text")
      
      local S2 = insertTheme(Create("TextBox", ColorpickerC, {
        Size = UDim2.new(0, 40, 0, 20),
        Position = UDim2.new(1, -10, 0, 60),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundColor3 = Theme["Color Background 2"],
        Font = Theme["Font"][3],
        TextColor3 = Theme["Color Text"],
        TextScaled = true,
        ClearTextOnFocus = false
      }, {
        Corner(),
        Create("TextLabel", {
          Size = UDim2.new(0, 20, 0, 20),
          AnchorPoint = Vector2.new(1, 0),
          TextColor3 = Color3.fromRGB(0, 255, 0),
          TextScaled = true,
          BackgroundTransparency = 1,
          Text = "G",
          Font = Theme["Font"][3]
        })
      }), "Text")
    
      local S3 = insertTheme(Create("TextBox", ColorpickerC, {
        Size = UDim2.new(0, 40, 0, 20),
        Position = UDim2.new(1, -10, 0, 85),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundColor3 = Theme["Color Background 2"],
        Font = Theme["Font"][3],
        TextColor3 = Theme["Color Text"],
        TextScaled = true,
        ClearTextOnFocus = false
      }, {
        Corner(),
        Create("TextLabel", {
          Size = UDim2.new(0, 20, 0, 20),
          AnchorPoint = Vector2.new(1, 0),
          TextColor3 = Color3.fromRGB(0, 0, 255),
          TextScaled = true,
          BackgroundTransparency = 1,
          Text = "B",
          Font = Theme["Font"][3]
        })
      }), "Text")
      
      local Mouse1 = Create("Frame", Select1, {
        Size = UDim2.new(0, 15, 0, 15),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(1 - ColorS, 0, 1 - ColorV, 0),
        BackgroundTransparency = 1
      }, {
        Corner({}, true),
        Create("UIStroke", {
          Thickness = 1.2,
          Color = Color3.fromRGB(255, 255, 255)
        })
      })
      
      local Mouse2 = Create("Frame", Select2, {
        Size = UDim2.new(0, 8, 1, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(ColorH, 0, 0.5, 0),
        BackgroundTransparency = 1
      }, {
        Corner({}, true),
        Create("UIStroke", {
          Thickness = 1.2,
          Color = Color3.fromRGB(255, 255, 255)
        })
      })
      
      local function ConfigureColor()
        ColorH = Mouse2.Position.X.Scale
        ColorS = 1 - Mouse1.Position.X.Scale
        ColorV = 1 - Mouse1.Position.Y.Scale
        
        Select1.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
        ColorSelected.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
        task.spawn(Callback, Color3.fromHSV(ColorH, ColorS, ColorV))
      end;ConfigureColor()
      
      local Mouse1Input, Mouse2Input, Minimized, WaitClick
      Select1.InputBegan:Connect(function(Input)
        if Minimized and not WaitClick and not Mouse2Input then
          if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
            Container.ScrollingEnabled, Mouse1Input = false, true
            while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
              local MousePos = Player:GetMouse()
              local APosX = MousePos.X - BaseMousePos1.AbsolutePosition.X
              local APosY = MousePos.Y - BaseMousePos1.AbsolutePosition.Y
              local BPosX = APosX / Select1.AbsoluteSize.X
              local BPosY = APosY / Select1.AbsoluteSize.Y
              
              Mouse1.Position = UDim2.new(math.clamp(BPosX, 0, 1), 0, math.clamp(BPosY, 0, 1), 0)
              ConfigureColor()
            end
            Container.ScrollingEnabled, Mouse1Input = true, false
            SaveColorpicker()
          end
        end
      end)
      
      Select2.InputBegan:Connect(function(Input)
        if Minimized and not WaitClick and not Mouse1Input then
          if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
            Container.ScrollingEnabled, Mouse2Input = false, true
            while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
              local MousePos = Player:GetMouse()
              local APosX = MousePos.X - BaseMousePos2.AbsolutePosition.X
              local BPosX = APosX / Select2.AbsoluteSize.X
              
              Mouse2.Position = UDim2.new(math.clamp(BPosX, 0, 1), 0, 0.5, 0)
              ConfigureColor()
            end
            Container.ScrollingEnabled, Mouse2Input = true, false
            SaveColorpicker()
          end
        end
      end)
      
      Frame.MouseButton1Click:Connect(function()
        if not WaitClick then
          WaitClick = true
          if not Minimized then
            CreateTween({Frame, "Size", UDim2.new(1, 0, 0, 135), 0.3, true})
          else
            CreateTween({Frame, "Size", UDim2.new(1, 0, 0, 25), 0.3, true})
          end
          WaitClick = false
          Minimized = not Minimized
        end
      end)
      
      local function SetColor(Color)
        local H, S, V = Color3.toHSV(Color)
        
        ColorH = H
        ColorS = 1 - S
        ColorV = 1 - V
        
        CreateTween({Mouse1, "Position", UDim2.new(ColorS, 0, ColorV, 0), 0.3})
        CreateTween({Mouse2, "Position", UDim2.new(ColorH, 0, 0.5, 0), 0.3})
        CreateTween({ColorSelected, "BackgroundColor3", Color, 0.3})
        CreateTween({Select1, "ImageColor3", Color3.fromHSV(ColorH, 1, 1), 0.3})
        task.spawn(Callback, Color)
      end
      
      task.spawn(function()
        local Saved1, Saved2, Saved3
        local function UPD()
          SetColor(Color3.fromRGB(Saved1, Saved2, Saved3))
        end
        
        local function UPD1()if tonumber(S1.Text) then local number = math.clamp(tonumber(S1.Text), 0, 255)
        S1.Text = tostring(number)Saved1 = S1.Text else S1.Text = Saved1 end UPD()end
        local function UPD2()if tonumber(S2.Text) then local number = math.clamp(tonumber(S2.Text), 0, 255)
        S2.Text = tostring(number)Saved2 = S2.Text else S2.Text = Saved2 end UPD()end
        local function UPD3()if tonumber(S3.Text) then local number = math.clamp(tonumber(S3.Text), 0, 255)
        S3.Text = tostring(number)Saved3 = S3.Text else S3.Text = Saved3 end UPD()end
        
        local function SetToColor()
          local str = tostring((ColorSelected.BackgroundColor3)):gsub(" ", "")
          local color = str:split(",")
          
          color[1] = tostring(math.ceil(tonumber(color[1] * 255)))
          color[2] = tostring(math.ceil(tonumber(color[2] * 255)))
          color[3] = tostring(math.ceil(tonumber(color[3] * 255)))
          
          S1.Text = color[1]
          S2.Text = color[2]
          S3.Text = color[3]
        end
        
        S1.FocusLost:Connect(UPD1)
        S2.FocusLost:Connect(UPD2)
        S3.FocusLost:Connect(UPD3)
        
        local str = tostring((DefaultColor)):gsub(" ", "")
        local color = str:split(",")
        
        color[1] = tostring(math.ceil(tonumber(color[1] * 255)))
        color[2] = tostring(math.ceil(tonumber(color[2] * 255)))
        color[3] = tostring(math.ceil(tonumber(color[3] * 255)))
        
        S1.Text = color[1]
        S2.Text = color[2]
        S3.Text = color[3]
        
        ColorSelected:GetPropertyChangedSignal("BackgroundColor3"):Connect(SetToColor)
      end)
      
      local Colorpicker = {}
      
      function Colorpicker:Set(val1)
        if typeof(val1) == "function" then Callback = val1
        elseif typeof(val1) == "Color3" then SetColor(val1)
        elseif typreof(val1) == "string" then TextLabel1.Text = val1 end
      end
      function Colorpicker:Destroy()Frame:Destroy()end
      function Colorpicker:Visible(Bool)Frame.Visible = Bool end
      return Colorpicker
    end
    function Tab:AddDropdown(Configs)
      local DName = Configs[1] or Configs.Name or ""
      local Options = Configs[2] or Configs.Options or {"1", "2", "3"}
      local Default = Configs[3] or Configs.Default or {"2"}
      local MultSelect = Configs[4] or Configs.MultSelect or false
      local Callback = Configs[5] or Configs.Callback or function()end
      local Save = Configs[6] or Configs.Flag or false
      
      if Save and typeof(Save) == "string" and FindTable(Flags, Save) then
        Default = Flags[Save]
      end
      local Frame = Button(Container, {Size = UDim2.new(1, 0, 0, 25)}, {Corner()})
      local MainContainer = Create("Frame", Frame, {
        Size = UDim2.new(1, 0, 0, 25),
        BackgroundTransparency = 1
      })
      local Text = insertTheme(Create("TextLabel", MainContainer, {
        Font = Theme["Font"][2],
        Text = DName,
        TextSize = 13,
        Size = UDim2.new(0.5, 0, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "Text")
      local TextLabel2 = insertTheme(Create("TextLabel", MainContainer, {
        Size = UDim2.new(0.45, -18, 0, 20),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -8, 0.5, 0),
        BackgroundTransparency = 0.8,
        TextColor3 = Theme["Color Text"],
        Font = Theme["Font"][2],
        TextScaled = true,
        Text = "..."
      }, {Corner()}), "Text")
      local Arrow = insertTheme(Create("ImageLabel", TextLabel2, {
        Size = UDim2.new(0, 16, 0, 16),
        Position = UDim2.new(0, -5, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        Image = "rbxassetid://16157040227",
        BackgroundTransparency = 1,
        Rotation = 180,
        ImageColor3 = Color3.fromRGB(200, 200, 200)
      }), "Stroke")
      local ContainerList = Create("ScrollingFrame", Frame, {
        Size = UDim2.new(1, 0, 1, -25),
        Position = UDim2.new(0, 0, 0, 25),
        ScrollBarThickness = 2,
        ScrollingDirection = "Y",
        AutomaticCanvasSize = "Y",
        CanvasSize = UDim2.new(),
        BackgroundTransparency = 1
      }, {
        Create("UIPadding", {
          PaddingLeft = UDim.new(0, 10),
          PaddingRight = UDim.new(0, 10),
          PaddingTop = UDim.new(0, 10),
          PaddingBottom = UDim.new(0, 10)
        }), Create("UIListLayout", {
          Padding = UDim.new(0, 4)
        })
      })
      local OptionsC, SelectedOption, SelectedOptionT = {}, "", {}
      local function SaveDropdown()
        if Save and typeof(Save) == "string" then
          if MultSelect then
            SaveFile(Save, {SelectedOptionT})
          else
            SaveFile(Save, {SelectedOption})
          end
        end
      end
      local function Void()
        table.foreach(ContainerList:GetChildren(), function(a, b)
          if b:IsA("TextButton") then
            b:Destroy()
          end
        end)
        TextLabel2.Text = "..."
        SelectedOptionT = {}
        OptionsC = {}
      end
      local function SetLabelTable()
        local str, first = ""
        table.foreach(SelectedOptionT, function(a, b)
          if first then
            str = str .. ", "
          end
          str = str .. b
          first = true
        end)
        TextLabel2.Text = str
      end
      local function RemoveOption(name)
        local Option = ContainerList:FindFirstChild(name)
        if Option then
          Option:Destroy()
          table.foreach(OptionsC, function(a, b)
            if b == name then
              table.remove(OptionsC, a)
            end
          end)
        end
      end
      local function AddOption(val, void)
        local function CreateButton(name)
          table.insert(OptionsC, name)
          local Frame = Create("TextButton", ContainerList, {
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 0.9,
            BackgroundColor3 = Color3.fromRGB(8, 8, 8),
            AutoButtonColor = false,
            Text = ""
          }, {
            Corner()
          })
          
          local TextLabel = insertTheme(Create("TextLabel", Frame, {
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 20, 0, 0),
            Text = name,
            TextColor3 = Theme["Color Text"],
            TextTransparency = 0.4,
            Font = Theme["Font"][3],
            TextSize = 14,
            BackgroundTransparency = 1,
            TextXAlignment = "Left"
          }), "Text")

          local Selected = insertTheme(Create("Frame", Frame, {
            Size = UDim2.new(0, 5, 0, 10),
            Position = UDim2.new(0, 10, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundTransparency = 1,
            BackgroundColor3 = Color3.fromRGB(8, 8, 8)
          }, {
            Corner(Selected)
          }), "Theme")
          
          if typeof(Default) == "table" and Default[1] == name or Default == name and name == SelectedOption then
            CreateTween({Selected, "BackgroundTransparency", 1, 1})
            CreateTween({TextLabel, "TextTransparency", 0, 0.2})
            CreateTween({Frame, "BackgroundTransparency", 0.7, 0.2})
            SelectedOption = name
            TextLabel2.Text = name
            task.spawn(Callback, name)
          end
          
          Frame.MouseButton1Click:Connect(function()
            for _,option in pairs(ContainerList:GetChildren()) do
              if option ~= Frame and option:IsA("TextButton") then
                CreateTween({option.Frame, "BackgroundTransparency", 0.8, 0.2})
                CreateTween({option.TextLabel, "TextTransparency", 0.4, 0.2})
                CreateTween({option, "BackgroundTransparency", 0.9, 0.2})
              end
            end
            CreateTween({Selected, "BackgroundTransparency", 1, 1})
            CreateTween({TextLabel, "TextTransparency", 0, 0.2})
            CreateTween({Frame, "BackgroundTransparency", 0.7, 0.2})
            SelectedOption = name
            TextLabel2.Text = name
            task.spawn(Callback, name)
            SaveDropdown()
          end)
        end
        local function CreateToggle(name)
          table.insert(OptionsC, name)
          local Frame = Create("TextButton", ContainerList, {
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 0.9,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            AutoButtonColor = false,
            Text = ""
          }, {
            Corner()
          })
          
          local TextLabel = insertTheme(Create("TextLabel", Frame, {
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 20, 0, 0),
            Text = name,
            TextColor3 = Theme["Color Dark Text"],
            Font = Theme["Font"][3],
            TextSize = 14,
            BackgroundTransparency = 1,
            TextXAlignment = "Left"
          }), "DarkText")
          
          local Selected = insertTheme(Create("Frame", Frame, {
            Size = UDim2.new(0, 5, 0, 10),
            Position = UDim2.new(0, 10, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundTransparency = 0.8,
            BackgroundColor3 = Theme["Color Theme"]
          }, {
            Corner()
          }), "Theme")
          
          local OnOff
          if table.find(Default, name) or table.find(SelectedOptionT, name) then
            CreateTween({Selected, "BackgroundTransparency", 1, 1})
            CreateTween({TextLabel, "TextColor3", Theme["Color Text"], 0.2})
            CreateTween({Frame, "BackgroundTransparency", 0.7, 0.2})
            if not table.find(SelectedOptionT, name) then
              table.insert(SelectedOptionT, name)
            end
            task.spawn(Callback, name, true)
            OnOff = true
            SetLabelTable()
          end
          
          Frame.MouseButton1Click:Connect(function()
            OnOff = not OnOff
            if OnOff then
              CreateTween({Selected, "BackgroundTransparency", 1, 1})
              CreateTween({TextLabel, "TextColor3", Theme["Color Text"], 0.2})
              CreateTween({Frame, "BackgroundTransparency", 0.7, 0.2})
              if not table.find(SelectedOptionT, name) then
                table.insert(SelectedOptionT, name)
              end
              task.spawn(Callback, name, true)
              SetLabelTable()
            else
              CreateTween({Selected, "BackgroundTransparency", 1, 1})
              CreateTween({TextLabel, "TextColor3", Theme["Color Dark Text"], 0.2})
              CreateTween({Frame, "BackgroundTransparency", 0.9, 0.2})
              table.foreach(SelectedOptionT, function(a, b)
                if b == name then
                  table.remove(SelectedOptionT, a)
                end
              end)
              task.spawn(Callback, name, false)
              SetLabelTable()
            end
            SaveDropdown()
          end)
        end

        if typeof(val) == "table" then
          if void then
            Void()
          end
          table.foreach(val, function(a, b)
            if not table.find(OptionsC, b) then
              if MultSelect then
                CreateToggle(b)
              else
                CreateButton(b)
              end
            end
          end)
        end
      end;AddOption(Options, true)
      local function GetNumber()
        local counter = 0
        for _,v in pairs(ContainerList:GetChildren()) do
          if v:IsA("TextButton") then
            counter = counter + 1
          end
        end
        return counter
      end
      local Minimized, WaitPress
      Frame.MouseButton1Click:Connect(function()
        if not WaitPress then
          local SizeY
          if GetNumber() >= 1 then
            SizeY = (35 + math.clamp(GetNumber(), 1, 5) * 20)
          else
            SizeY = 25
          end
          WaitPress = true
          if not Minimized then
            CreateTween({Arrow, "Rotation", 0, 0.3})
            CreateTween({Arrow, "ImageColor3", Theme["Color Theme"], 0.3})
            CreateTween({Frame, "Size", UDim2.new(1, 0, 0, SizeY), 0.3, true})
          else
            CreateTween({Arrow, "Rotation", 180, 0.3})
            CreateTween({Arrow, "ImageColor3", Color3.fromRGB(200, 200, 200), 0.3})
            CreateTween({Frame, "Size", UDim2.new(1, 0, 0, 25), 0.3, true})
          end
          Minimized = not Minimized
          WaitPress = false
        end
      end)
      local DropdownF = {}
      function DropdownF:Void()
        Void()
      end
      function UpdateDropdownText()
        Text.Text = DName
      end
      spawn(function()
        while true do wait(.0) 
          UpdateDropdownText()
        end
      end)
      function DropdownF:Set(val1, val2)
        if val1 and typeof(val1) == "string" then Text.Text = val1
        elseif val1 and typeof(val1) == "function" then Callback = val1
        elseif val1 and val2 and typeof(val1) == "table" then AddOption(val1, val2) end
      end
      function DropdownF:Visible(Bool)Frame.Visible = Bool end
      function DropdownF:Destroy()Frame:Destroy()end
      return DropdownF
    end
    function Tab:AddTextBox(Configs)
      local TName = Configs[1] or Configs.Name or "Text Box"
      local Default = Configs[2] or Configs.Default or ""
      local PHText = Configs[3] or Configs.PlaceholderText or "< input >"
      local ClearOnFocus = Configs[4] or Configs.ClearText or false
      local Callback = Configs[5] or Configs.Callback or function()end
      local Save = Configs[6] or Configs.Flag or false
      local TextBoxCallback = {}
      
      if Save and typeof(Save) == "string" and FindTable(Flags, Save) then
        Default = Flags[Save]
      end
      
      local Frame = Button(Container, {
        Size = UDim2.new(1, 0, 0, 25)
      }, {
        Corner(),
        insertTheme(Create("TextLabel", {
          Font = Theme["Font"][2],
          Text = TName,
          TextSize = 13,
          Size = UDim2.new(0.5, 0, 1, 0),
          Position = UDim2.new(0, 15, 0, 0),
          BackgroundTransparency = 1,
          TextColor3 = Theme["Color Text"],
          TextXAlignment = "Left",
          TextTruncate = "AtEnd"
        }), "Text")
      })
      
      local TextBox = insertTheme(Create("TextBox", Frame, {
        Size = UDim2.new(0.45, -18, 0, 20),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -8, 0.5, 0),
        BackgroundTransparency = 0.8,
        TextColor3 = Theme["Color Text"],
        Font = Theme["Font"][3],
        TextScaled = true,
        ClearTextOnFocus = ClearOnFocus,
        PlaceholderText = PHText,
        Text = Default
      }, {
        Corner()
      }), "Text")
      
      local Pencil = insertTheme(Create("ImageLabel", TextBox, {
        Size = UDim2.new(0, 16, 0, 16),
        Position = UDim2.new(0, -5, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        Image = "rbxassetid://15637081879",
        BackgroundTransparency = 1,
        ImageColor3 = Theme["Color Stroke"]
      }), "Stroke")
      
      local function SetBox(NewText)
        TextBox.Text = NewText
        Default = NewText
        table.foreach(TextBoxCallback, function(_,func)
          task.spawn(func, NewText)
        end)
        task.spawn(Callback, NewText)
        if Save and typeof(Save) == "string" then
          SaveFile(Save, Default)
        end
      end
      TextBox.MouseEnter:Connect(function()
        CreateTween({Pencil, "ImageColor3", Theme["Color Theme"], 0.5, true})
        CreateTween({Pencil, "ImageColor3", Theme["Color Stroke"], 0.5, true})
      end)
      TextBox.FocusLost:Connect(function()
        SetBox(TextBox.Text)
        CreateTween({Pencil, "ImageColor3", Theme["Color Theme"], 0.5, true})
        CreateTween({Pencil, "ImageColor3", Theme["Color Stroke"], 0.5, true})
      end)
      local TextBoxF = {}
      function TextBoxF:Set()
        if typeof(val1) == "function" then Callback = val1
        elseif typeof(val1) == "string" then SetBox(val1) end
      end
      function TextBoxF:Callback(func)table.insert(TextBoxCallback, func)end
      function TextBoxF:Destroy()Frame:Destroy()end
      function TextBoxF:Visible(Bool)Frame.Visible = Value end
      return TextBoxF
    end
    function Tab:AddDiscordInvite(Configs)
      local DiscordLink = Configs[1] or Configs.DiscordLink or "https://discord.gg/"
      local DiscordIcon = Configs[2] or Configs.DiscordIcon or "rbxassetid://"
      local DiscordTitle = Configs[3] or Configs.DiscordTitle or ""
      local Frame1 = Create("Frame", Container, {
        Size = UDim2.new(1, 0, 0, 110),
        BackgroundTransparency = 1
      }) 
      local Frame2 = insertTheme(Create("Frame", Frame1, {
        Size = UDim2.new(1, 0, 0, 110 - 25),
        BackgroundColor3 = Color3.fromRGB(30, 30, 30),
        Position = UDim2.new(0, 0, 0, 25),
        BackgroundColor3 = Theme["Color Background 2"]
      }, {
        Corner()
      }), "Buttons")
      local LinkLabel = Create("TextLabel", Frame1, {
        Size = UDim2.new(1, 0, 0, 25),
        Text = "",
        TextXAlignment = "Left",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 12, 0, 0),
        TextColor3 = Color3.fromRGB(30, 160, 255),
        Font = Enum.Font.GothamBold,
        TextSize = 14
      })
      local TitleLabel = insertTheme(Create("TextLabel", Frame2, {
        Size = UDim2.new(1, 0, 0, 20),
        Text = DiscordTitle,
        TextXAlignment = "Left",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 60, 0, 5),
        TextColor3 = Theme["Color Text"],
        Font = Enum.Font.GothamBold,
        TextSize = 14
      }), "Text")
      local IconLabel = Create("ImageLabel", Frame2, {
        Size = UDim2.new(0, 40, 0, 40),
        Position = UDim2.new(0, 12, 0, 5),
        Image = DiscordIcon
      }, {
        Corner({
          CornerRadius = UDim.new(0, 8)
        })
      })
      local JoinButton = Create("TextButton", Frame2, {
        Size = UDim2.new(1, -24, 0, 25),
        AnchorPoint = Vector2.new(0.5, 1),
        Position = UDim2.new(0.5, 0, 1, -8),
        Text = "Join Server",
        Font = Enum.Font.GothamBold,
        TextSize = 15,
        TextColor3 = Color3.fromRGB(220, 220, 220),
        BackgroundColor3 = Color3.fromRGB(247, 22, 22)
      }, {
        Corner()
      })
      local JoinClick
      JoinButton.MouseButton1Click:Connect(function()
        setclipboard(DiscordLink)
        if not JoinClick then
          JoinClick = true
          JoinButton.Text = "Copied to Clipboard"
          JoinButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
          JoinButton.TextColor3 = Color3.fromRGB(150, 150, 150)
          task.wait(5)
          JoinButton.Text = "Join Server"
          JoinButton.BackgroundColor3 = Color3.fromRGB(44, 10, 168)
          JoinButton.TextColor3 = Color3.fromRGB(220, 220, 220)
          JoinClick = false
        end
      end)
      local DiscordInvite = {}
      function DiscordInvite:Set(NewVal)
        if typeof(NewVal) == "string" then
          if string.find(NewVal, "https://discord.gg/") then LinkLabel.Text = NewVal
          elseif string.find(NewVal, "rbxassetid://") then IconLabel.Image = NewVal
          else TitleLabel.Text = NewVal end
        end
      end
      function DiscordInvite:Visible(Bool)Frame1.Visible = Bool end
      function DiscordInvite:Destroy()Frame1:Destroy()end
      return DiscordInvite
    end
    function Tab:AddYoutube(Configs)
        local YouTubeLink = Configs[1] or Configs.YouTubeLink or "https://www.youtube.com//"
        local YoutubeIcon = Configs[2] or Configs.YoutubeIcon or "rbxassetid://"
        local YoutubeTitle = Configs[3] or Configs.YoutubeTitle or ""
        local Frame1 = Create("Frame", Container, {
          Size = UDim2.new(1, 0, 0, 110),
          BackgroundTransparency = 1
        }) 
        local Frame2 = insertTheme(Create("Frame", Frame1, {
          Size = UDim2.new(1, 0, 0, 110 - 25),
          BackgroundColor3 = Color3.fromRGB(30, 30, 30),
          Position = UDim2.new(0, 0, 0, 25),
          BackgroundColor3 = Theme["Color Background 2"]
        }, {
          Corner()
        }), "Buttons")
        local LinkLabel = Create("TextLabel", Frame1, {
          Size = UDim2.new(1, 0, 0, 25),
          Text = "",
          TextXAlignment = "Left",
          BackgroundTransparency = 1,
          Position = UDim2.new(0, 12, 0, 0),
          TextColor3 = Color3.fromRGB(30, 160, 255),
          Font = Enum.Font.GothamBold,
          TextSize = 14
        })
        local TitleLabel = insertTheme(Create("TextLabel", Frame2, {
          Size = UDim2.new(1, 0, 0, 20),
          Text = YoutubeTitle,
          TextXAlignment = "Left",
          BackgroundTransparency = 1,
          Position = UDim2.new(0, 60, 0, 5),
          TextColor3 = Theme["Color Text"],
          Font = Enum.Font.GothamBold,
          TextSize = 14
        }), "Text")
        local IconLabel = Create("ImageLabel", Frame2, {
          Size = UDim2.new(0, 40, 0, 40),
          Position = UDim2.new(0, 12, 0, 5),
          Image = YoutubeIcon
        }, {
          Corner({
            CornerRadius = UDim.new(0, 8)
          })
        })
        local JoinButton = Create("TextButton", Frame2, {
          Size = UDim2.new(1, -24, 0, 25),
          AnchorPoint = Vector2.new(0.5, 1),
          Position = UDim2.new(0.5, 0, 1, -8),
          Text = "Subscribe",
          Font = Enum.Font.GothamBold,
          TextSize = 15,
          TextColor3 = Color3.fromRGB(220, 220, 220),
          BackgroundColor3 = Color3.fromRGB(44, 10, 168)
        }, {
          Corner()
        })
        local JoinClick
        JoinButton.MouseButton1Click:Connect(function()
          setclipboard(YouTubeLink)
          if not JoinClick then
            JoinClick = true
            JoinButton.Text = "Copied to Clipboard"
            JoinButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
            JoinButton.TextColor3 = Color3.fromRGB(150, 150, 150)
            task.wait(5)
            JoinButton.Text = "Subscribe"
            JoinButton.BackgroundColor3 = Color3.fromRGB(44, 10, 168)
            JoinButton.TextColor3 = Color3.fromRGB(220, 220, 220)
            JoinClick = false
          end
        end)
        local YouTubeUrl = {}
        function YouTubeUrl:Set(NewVal)
          if typeof(NewVal) == "string" then
            if string.find(NewVal, "https://www.youtube.com//") then LinkLabel.Text = NewVal
            elseif string.find(NewVal, "rbxassetid://") then IconLabel.Image = NewVal
            else TitleLabel.Text = NewVal end
          end
        end
        function YouTubeUrl:Visible(Bool)Frame1.Visible = Bool end
        function YouTubeUrl:Destroy()Frame1:Destroy()end
        return YouTubeUrl
    end
    return Tab
  end
  function Window:AddMinimizeButton(Configs)
    local ButtonProps = Configs[1] or Configs.Button or {}
    local UICorner = Configs[2] or Configs.UICorner or {true, {CornerRadius = UDim.new(0.5, 0)}}
    local UIStroke = Configs[3] or Configs.UIStroke or {false, {Color = Theme["Color Stroke"]}}
    UICorner[2] = UICorner[2] or {}
    UIStroke[2] = UIStroke[2] or {}
    
    local ButtonMinimize = SetProps(MakeDrag(Create("ImageButton", ScreenGui, {
      Size = UDim2.fromOffset(70, 70),
      Active = true,
      Position = UDim2.fromScale(0.15, 0.15),
      BackgroundColor3 = Theme["Color Background 1"],
      Image = GetIcon("home")
    })), ButtonProps)
    
    local MinimizeBool
    ButtonMinimize.MouseButton1Click:Connect(function()
      MainFrame.Visible = MinimizeBool
      MinimizeBool = not MinimizeBool
    end)
    
    local StrokeBTN, CornerBTN
    if UICorner[1] then
      CornerBTN = Create("UICorner", ButtonMinimize)
      SetProps(CornerBTN, UICorner[2])
    end
    if UIStroke[1] then
      StrokeBTN = Create("UIStroke", ButtonMinimize)
      SetProps(StrokeBTN, UIStroke[2])
    end
    local Minimize = {
      Button = ButtonMinimize,
      Stroke = StrokeBTN,
      Corner = CornerBTN
    }
    function Minimize:Visible(Bool)
      ButtonMinimize.Visible = Bool
    end
    function Minimize:Destroy()
      ButtonMinimize:Destroy()
    end
    return Minimize
  end
  return Window
end

return SpeedHubX_Lib
