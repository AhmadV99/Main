-- Library Hop Library

local env = getgenv and getgenv() or {}
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")

local Player = game.Players.LocalPlayer

local HopGui = {} do
  HopGui.CreateGui = function(Reason, Time)
    Reason = Reason or "None"
    Time = Time or 5
    local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    local screenGui = Instance.new("ScreenGui")
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.Parent = PlayerGui

    local blur = Instance.new("BlurEffect")
    blur.Size = 1
    blur.Parent = game.Lighting
    blur.Enabled = true

    local hopText = Instance.new("TextLabel")
    hopText.Name = "hoptext"
    hopText.Text = "Speed Hub X | Hop Server"
    hopText.FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json")
    hopText.TextColor3 = Color3.fromRGB(237, 21, 9)
    hopText.TextSize = 45
    hopText.BackgroundTransparency = 1
    hopText.Size = UDim2.new(0, 200, 0, 50)
    hopText.Position = UDim2.new(0.5, 0, 0.1, 0) 
    hopText.AnchorPoint = Vector2.new(0.5, 0.5)
    hopText.Parent = screenGui

    local hopTextStroke = Instance.new("UIStroke")
    hopTextStroke.Thickness = 1.5
    hopTextStroke.Parent = hopText

    local secondText = Instance.new("TextLabel")
    secondText.Name = "secondtext"
    secondText.Text = "Hopping to New Server in: 5s"
    secondText.FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json")
    secondText.TextColor3 = Color3.fromRGB(255, 255, 255)
    secondText.TextSize = 32
    secondText.BackgroundTransparency = 1
    secondText.Size = UDim2.new(0, 200, 0, 50)
    secondText.Position = UDim2.new(0.5, 0, 0.46154, 0)
    secondText.AnchorPoint = Vector2.new(0.5, 0.5)
    secondText.TextTransparency = 1 
    secondText.Parent = screenGui

    local secondTextStroke = Instance.new("UIStroke")
    secondTextStroke.Thickness = 1.5
    secondTextStroke.Parent = secondText

    local reason = Instance.new("TextLabel")
    reason.Name = "reason"
    reason.Text = "Reason: None"
    reason.FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json")
    reason.TextColor3 = Color3.fromRGB(255, 255, 255)
    reason.TextSize = 32
    reason.BackgroundTransparency = 1
    reason.Size = UDim2.new(0, 200, 0, 50)
    reason.Position = UDim2.new(-0.5, 0, 0.58502, 0) 
    reason.AnchorPoint = Vector2.new(0.5, 0.5)
    reason.Parent = screenGui

    local reasonStroke = Instance.new("UIStroke")
    reasonStroke.Thickness = 1.5
    reasonStroke.Parent = reason

    local dbclick = Instance.new("TextLabel")
    dbclick.Name = "dbclick"
    dbclick.Text = "Double Click for increase speed"
    dbclick.FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json")
    dbclick.TextColor3 = Color3.fromRGB(255, 255, 255)
    dbclick.TextSize = 24
    dbclick.BackgroundTransparency = 1
    dbclick.Size = UDim2.new(0, 200, 0, 50)
    dbclick.Position = UDim2.new(-0.5, 0, 0.72672, 0)
    dbclick.AnchorPoint = Vector2.new(0.5, 0.5)
    dbclick.Parent = screenGui

    local dbclickStroke = Instance.new("UIStroke")
    dbclickStroke.Thickness = 1.5
    dbclickStroke.Parent = dbclick

    local TweenService = game:GetService("TweenService")
    local IncreaseClick = false 
    local UserInputService = game:GetService("UserInputService")
    local doubleClickEnabled = true 

    local function handleDoubleClick()
      if doubleClickEnabled then 
        IncreaseClick = true
        doubleClickEnabled = false  
        game:GetService("TweenService"):Create(secondText, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
          TextColor3 = Color3.fromRGB(255, 255, 255),
        }):Play() 
        secondText.Text = 'Hopping to new Server in: '..tostring(0)..'s' 
        TweenService:Create(blur, TweenInfo.new(3, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size = 1}):Play()
        task.wait(1.5)
        screenGui:Destroy() 
        blur:Destroy() 
      end
    end
    dbclick.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 then
        handleDoubleClick()
      end
    end)

    UserInputService.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 then
        handleDoubleClick()
      end
    end)
    task.spawn(function()
      TweenService:Create(blur, TweenInfo.new(Time/2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size = 100}):Play()
      TweenService:Create(hopText, TweenInfo.new(Time/5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.34615, 0)}):Play()
      TweenService:Create(secondText, TweenInfo.new(Time/2.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
      TweenService:Create(reason, TweenInfo.new(Time/5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.58502, 0)}):Play()
      wait(.3)
      TweenService:Create(dbclick, TweenInfo.new(Time/5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.72672, 0)}):Play()
    end)

    reason.Text = 'Reason: '..tostring(Reason)
    for Time = Time,0,-1 do   
      if IncreaseClick then break; end
      game:GetService("TweenService"):Create(secondText, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 0, 0)}):Play() 
      TweenService:Create(blur, TweenInfo.new(Time/2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size = 0}):Play()
      secondText.Text = 'Hopping to new Server in: '..tostring(Time)..'s' 
      wait(.5) 
      if IncreaseClick then break; end 
      game:GetService("TweenService"):Create(secondText, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play() 
      TweenService:Create(blur, TweenInfo.new(Time/2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size = 100}):Play()
      wait(.5)
    end

    handleDoubleClick()
  end
end

local function Hop()
  local _servers = "https://games.roblox.com/v1/games/" .. game.PlaceId .."/servers/Public?sortOrder=Asc&limit=100"
  function ListServers(cursor)
    return Http:JSONDecode(game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or "")))
  end
  local Server, Next
  repeat task.wait()
    local Servers = Http:JSONDecode(game:HttpGet(_servers .. ((Next and "&cursor="..Next) or "")))
    Server = Servers.data[1] 
    Next = Servers.nextPageCursor
  until Server TPS:TeleportToPlaceInstance(game.PlaceId, Server.id, Player)
end

env.Server = function(Gui, Reason, Time)
  if Gui then
    HopGui.CreateGui(Reason, Time)
    wait(Time)
    Hop()
  else
    Hop()
  end
end
