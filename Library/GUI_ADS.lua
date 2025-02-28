local ScreenGui = Instance.new("ScreenGui")
local AdFrame = Instance.new("Frame")
local DiscordLabel = Instance.new("TextLabel")
local CopyButton = Instance.new("TextButton")
local ExitButton = Instance.new("TextButton")
local WaitButton = Instance.new("TextButton")

ScreenGui.Name = "AdsGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

AdFrame.Name = "AdFrame"
AdFrame.Parent = ScreenGui
AdFrame.Size = UDim2.new(0.4, 0, 0.3, 0)
AdFrame.Position = UDim2.new(0.5, 0, 0.35, 0)
AdFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AdFrame.BorderSizePixel = 2
AdFrame.Draggable = true
AdFrame.Active = true
AdFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)

DiscordLabel.Name = "DiscordLabel"
DiscordLabel.Parent = AdFrame
DiscordLabel.Size = UDim2.new(1, 0, 0.6, 0)
DiscordLabel.BackgroundTransparency = 1
DiscordLabel.Text = "Speed Hub X | Ad"
DiscordLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordLabel.TextSize = 22
DiscordLabel.TextWrapped = true

CopyButton.Name = "CopyButton"
CopyButton.Parent = AdFrame
CopyButton.Size = UDim2.new(0.4, 0, 0.2, 0)
CopyButton.Position = UDim2.new(0.1, 0, 0.7, 0)
CopyButton.Text = "Copy Link Discord"
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)

ExitButton.Name = "ExitButton"
ExitButton.Parent = AdFrame
ExitButton.Size = UDim2.new(0.4, 0, 0.2, 0)
ExitButton.Position = UDim2.new(0.5, 0, 0.7, 0)
ExitButton.Text = "Exit"
ExitButton.Visible = false
ExitButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ExitButton.TextColor3 = Color3.fromRGB(255, 0, 0)

WaitButton.Name = "WaittoExit"
WaitButton.Parent = AdFrame
WaitButton.Size = UDim2.new(0.4, 0, 0.2, 0)
WaitButton.Position = UDim2.new(0.5, 0, 0.7, 0)
WaitButton.Text = "Waitting Delay Exit"
WaitButton.Visible = true
WaitButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
WaitButton.TextColor3 = Color3.fromRGB(255, 0, 0)

task.delay(5, function()
    WaitButton.Visible = false
    ExitButton.Visible = true
end)

CopyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://discord.gg/speedhubx")
        task.wait()
        CopyButton.Text = "Copied To Discord Link"
        task.wait(0.6)
        CopyButton.Text = "Copy Link Discord"
    end
end)

ExitButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

task.spawn(function()
    pcall(function()
        (loadstring or load)(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Library/Execution.lua"))()
    end)
end)
