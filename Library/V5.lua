local S1_ = game:GetService("UserInputService")
local S2_ = game:GetService("TweenService")
local S3_ = game:GetService("Players").LocalPlayer
local S4_ = game:GetService("RunService")
local S5_ = game:GetService("VirtualUser")

S3_.Idled:Connect(function()
	S5_:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	task.wait(1)
	S5_:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local function S6_func()
	local S10_ = Instance.new("UIStroke")
	local S11_ = Instance.new("UICorner")

	local S12_ = Instance.new("ScreenGui")
	local S13_ = Instance.new("ImageButton")

	S12_.Name = "OpenClose"
	S12_.Parent = S4_:IsStudio() and S3_.PlayerGui or (gethui() or cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui"))
	S12_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	S13_.Parent = S12_
	S13_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S13_.BorderColor3 = Color3.fromRGB(255, 0, 0)
	S13_.Position = UDim2.new(0.1021, 0, 0.0743, 0)
	S13_.Size = UDim2.new(0, 59, 0, 49)
	S13_.Image = "rbxassetid://82140212012109"
	S13_.Visible = false

	S11_.Name = "MainCorner"
	S11_.CornerRadius = UDim.new(0, 9)
	S11_.Parent = S13_

	local S14_ = false
	local S15_ = nil
	local S16_ = nil

	local function S17_func(S18_arg0)
		local S19_ = S18_arg0.Position - S15_
		S13_.Position = UDim2.new(S16_.X.Scale, S16_.X.Offset + S19_.X, S16_.Y.Scale, S16_.Y.Offset + S19_.Y)
	end

	S13_.InputBegan:Connect(function(S20_arg0)
		if S20_arg0.UserInputType == Enum.UserInputType.Touch or S20_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
			S14_ = true
			S15_ = S20_arg0.Position
			S16_ = S13_.Position

			S20_arg0.Changed:Connect(function()
				if S20_arg0.UserInputState == Enum.UserInputState.End then
					S14_ = false
				end
			end)
		end
	end)

	S13_.InputChanged:Connect(function(S21_arg0)
		if S14_ and (S21_arg0.UserInputType == Enum.UserInputType.MouseMovement or S21_arg0.UserInputType == Enum.UserInputType.Touch) then
			S17_func(S21_arg0)
		end
	end)

	return S13_
end

local S7_ = S6_func()

local function S8_func(S22_arg0, S23_arg1)

	local function S24_func(S26_arg0, S27_arg1)
		local S28_ = nil
		local S29_ = nil
		local S30_ = nil
		local S31_ = nil

		local function S32_func(S33_arg0)
			local S34_ = S33_arg0.Position - S30_
			local S35_ = UDim2.new(S31_.X.Scale, S31_.X.Offset + S34_.X, S31_.Y.Scale, S31_.Y.Offset + S34_.Y)
			S27_arg1.Position = S35_
		end

		S26_arg0.InputBegan:Connect(function(S36_arg0)
			if S36_arg0.UserInputType == Enum.UserInputType.MouseButton1 or S36_arg0.UserInputType == Enum.UserInputType.Touch then
				S28_ = true
				S30_ = S36_arg0.Position
				S31_ = S27_arg1.Position

				S36_arg0.Changed:Connect(function()
					if S36_arg0.UserInputState == Enum.UserInputState.End then
						S28_ = false
					end
				end)
			end
		end)

		S26_arg0.InputChanged:Connect(function(S37_arg0)
			if S37_arg0.UserInputType == Enum.UserInputType.MouseMovement or S37_arg0.UserInputType == Enum.UserInputType.Touch then
				S29_ = S37_arg0
			end
		end)

		S1_.InputChanged:Connect(function(S38_arg0)
			if S38_arg0 == S29_ and S28_ then
				S32_func(S38_arg0)
			end
		end)
	end
	
	local function S25_func(S39_arg0)
		local S40_ = false
		local S41_ = nil
		local S42_ = nil
		local S43_ = nil
		local S44_ = S39_arg0.Size.X.Offset
		if S44_ < 399 then
			S44_ = 399
		end
		local S45_ = S44_ - 100
		S39_arg0.Size = UDim2.new(0, S44_, 0, S45_)
		local S46_ = Instance.new("Frame")
	
		S46_.AnchorPoint = Vector2.new(1, 1)
		S46_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S46_.BackgroundTransparency = 0.999
		S46_.BorderSizePixel = 0
		S46_.Position = UDim2.new(1, 20, 1, 20)
		S46_.Size = UDim2.new(0, 40, 0, 40)
		S46_.Name = "changesizeobject"
		S46_.Parent = S39_arg0
	
		local function S47_func(S48_arg0)
			local S49_ = S48_arg0.Position - S42_
			local S50_ = S43_.X.Offset + S49_.X
			local S51_ = S43_.Y.Offset + S49_.Y
			S50_ = math.max(S50_, S44_)
			S51_ = math.max(S51_, S45_)
			local S52_ = S2_:Create(S39_arg0, TweenInfo.new(0.2), {
				Size = UDim2.new(0, S50_, 0, S51_)
			})
			S52_:Play()
		end
	
		S46_.InputBegan:Connect(function(S53_arg0)
			if S53_arg0.UserInputType == Enum.UserInputType.MouseButton1 or S53_arg0.UserInputType == Enum.UserInputType.Touch then
				S40_ = true
				S42_ = S53_arg0.Position
				S43_ = S39_arg0.Size
				S53_arg0.Changed:Connect(function()
					if S53_arg0.UserInputState == Enum.UserInputState.End then
						S40_ = false
					end
				end)
			end
		end)
	
		S46_.InputChanged:Connect(function(S54_arg0)
			if S54_arg0.UserInputType == Enum.UserInputType.MouseMovement or S54_arg0.UserInputType == Enum.UserInputType.Touch then
				S41_ = S54_arg0
			end
		end)
	
		S1_.InputChanged:Connect(function(S55_arg0)
			if S55_arg0 == S41_ and S40_ then
				S47_func(S55_arg0)
			end
		end)
	end	
	S25_func(S23_arg1)
	S24_func(S22_arg0, S23_arg1)
end

function CircleClick(S56_arg0, S57_arg1, S58_arg2)
	spawn(function()
		S56_arg0.ClipsDescendants = true
		local S59_ = Instance.new("ImageLabel")
		S59_.Image = "rbxassetid://266543268"
		S59_.ImageColor3 = Color3.fromRGB(80, 80, 80)
		S59_.ImageTransparency = 0.8999999761581421
		S59_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S59_.BackgroundTransparency = 1
		S59_.ZIndex = 10
		S59_.Name = "Circle"
		S59_.Parent = S56_arg0
		
		local S60_ = S57_arg1 - S59_.AbsolutePosition.X
		local S61_ = S58_arg2 - S59_.AbsolutePosition.Y
		S59_.Position = UDim2.new(0, S60_, 0, S61_)
		local S62_ = 0
		if S56_arg0.AbsoluteSize.X > S56_arg0.AbsoluteSize.Y then
			S62_ = S56_arg0.AbsoluteSize.X * 1.5
		elseif S56_arg0.AbsoluteSize.X < S56_arg0.AbsoluteSize.Y then
			S62_ = S56_arg0.AbsoluteSize.Y * 1.5
		elseif S56_arg0.AbsoluteSize.X == S56_arg0.AbsoluteSize.Y then
			S62_ = S56_arg0.AbsoluteSize.X * 1.5
		end

		local S63_ = 0.5
		S59_:TweenSizeAndPosition(UDim2.new(0, S62_, 0, S62_), UDim2.new(0.5, - S62_ / 2, 0.5, - S62_ / 2), "Out", "Quad", S63_, false, nil)
		for S64_forvar0 = 1, 10 do
			S59_.ImageTransparency = S59_.ImageTransparency + 0.01
			wait(S63_ / 10)
		end
		S59_:Destroy()
	end)
end

local S9_ = {}
S9_.Unloaded = false

function S9_:MakeNotify(S65_arg0)
	local S66_ = S65_arg0 or {}
	S66_.Title = S66_.Title or "SpeedHubX"
	S66_.Description = S66_.Description or "Notification"
	S66_.Content = S66_.Content or "Content"
	S66_.Color = S66_.Color or Color3.fromRGB(255, 0, 255)
	S66_.Time = S66_.Time or 0.5
	S66_.Delay = S66_.Delay or 5
	local S67_ = {}
	spawn(function()
		if not game:GetService("CoreGui"):FindFirstChild("NotifyGui") then
			local S84_ = Instance.new("ScreenGui");
			S84_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			S84_.Name = "NotifyGui"
			S84_.Parent = game:GetService("CoreGui")
		end
		if not game:GetService("CoreGui").NotifyGui:FindFirstChild("NotifyLayout") then
			local S85_ = Instance.new("Frame");
			S85_.AnchorPoint = Vector2.new(1, 1)
			S85_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S85_.BackgroundTransparency = 0.9990000128746033
			S85_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S85_.BorderSizePixel = 0
			S85_.Position = UDim2.new(1, -30, 1, -30)
			S85_.Size = UDim2.new(0, 320, 1, 0)
			S85_.Name = "NotifyLayout"
			S85_.Parent = game:GetService("CoreGui").NotifyGui
			local S86_ = 0
			game:GetService("CoreGui").NotifyGui.NotifyLayout.ChildRemoved:Connect(function()
				S86_ = 0
				for S87_forvar0, S88_forvar1 in game:GetService("CoreGui").NotifyGui.NotifyLayout:GetChildren() do
					S2_:Create(
						S88_forvar1, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
						Position = UDim2.new(0, 0, 1, - ((S88_forvar1.Size.Y.Offset + 12) * S86_))
					}):Play()
					S86_ = S86_ + 1
				end
			end)
		end
		local S68_ = 0
		for S89_forvar0, S90_forvar1 in game:GetService("CoreGui").NotifyGui.NotifyLayout:GetChildren() do
			S68_ = - (S90_forvar1.Position.Y.Offset) + S90_forvar1.Size.Y.Offset + 12
		end
		local S69_ = Instance.new("Frame");
		local S70_ = Instance.new("Frame");
		local S71_ = Instance.new("UICorner");
		local S72_ = Instance.new("Frame");
		local S73_ = Instance.new("ImageLabel");
		local S74_ = Instance.new("Frame");
		local S75_ = Instance.new("TextLabel");
		local S76_ = Instance.new("UIStroke");
		local S77_ = Instance.new("UICorner");
		local S78_ = Instance.new("TextLabel");
		local S79_ = Instance.new("UIStroke");
		local S80_ = Instance.new("TextButton");
		local S81_ = Instance.new("ImageLabel");
		local S82_ = Instance.new("TextLabel");

		S69_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		S69_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S69_.BorderSizePixel = 0
		S69_.Size = UDim2.new(1, 0, 0, 150)
		S69_.Name = "NotifyFrame"
		S69_.BackgroundTransparency = 1
		S69_.Parent = game:GetService("CoreGui").NotifyGui.NotifyLayout
		S69_.AnchorPoint = Vector2.new(0, 1)
		S69_.Position = UDim2.new(0, 0, 1, - (S68_))

		S70_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		S70_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S70_.BorderSizePixel = 0
		S70_.Position = UDim2.new(0, 400, 0, 0)
		S70_.Size = UDim2.new(1, 0, 1, 0)
		S70_.Name = "NotifyFrameReal"
		S70_.Parent = S69_

		S71_.Parent = S70_
		S71_.CornerRadius = UDim.new(0, 8)

		S72_.BackgroundTransparency = 1
		S72_.BorderSizePixel = 0
		S72_.Size = UDim2.new(1, 0, 1, 0)
		S72_.ZIndex = 0
		S72_.Name = "DropShadowHolder"
		S72_.Parent = S70_

		S73_.Image = "rbxassetid://6015897843"
		S73_.ImageColor3 = Color3.fromRGB(0, 0, 0)
		S73_.ImageTransparency = 0.5
		S73_.ScaleType = Enum.ScaleType.Slice
		S73_.SliceCenter = Rect.new(49, 49, 450, 450)
		S73_.AnchorPoint = Vector2.new(0.5, 0.5)
		S73_.BackgroundTransparency = 1
		S73_.BorderSizePixel = 0
		S73_.Position = UDim2.new(0.5, 0, 0.5, 0)
		S73_.Size = UDim2.new(1, 47, 1, 47)
		S73_.ZIndex = 0
		S73_.Name = "DropShadow"
		S73_.Parent = S72_

		S74_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		S74_.BackgroundTransparency = 0.9990000128746033
		S74_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S74_.BorderSizePixel = 0
		S74_.Size = UDim2.new(1, 0, 0, 36)
		S74_.Name = "Top"
		S74_.Parent = S70_

		S75_.Font = Enum.Font.GothamBold
		S75_.Text = S66_.Title
		S75_.TextColor3 = Color3.fromRGB(255, 255, 255)
		S75_.TextSize = 14
		S75_.TextXAlignment = Enum.TextXAlignment.Left
		S75_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S75_.BackgroundTransparency = 0.9990000128746033
		S75_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S75_.BorderSizePixel = 0
		S75_.Size = UDim2.new(1, 0, 1, 0)
		S75_.Parent = S74_
		S75_.Position = UDim2.new(0, 10, 0, 0)

		S76_.Color = Color3.fromRGB(255, 255, 255)
		S76_.Thickness = 0.30000001192092896
		S76_.Parent = S75_

		S77_.Parent = S74_
		S77_.CornerRadius = UDim.new(0, 5)

		S78_.Font = Enum.Font.GothamBold
		S78_.Text = S66_.Description
		S78_.TextColor3 = S66_.Color
		S78_.TextSize = 14
		S78_.TextXAlignment = Enum.TextXAlignment.Left
		S78_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S78_.BackgroundTransparency = 0.9990000128746033
		S78_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S78_.BorderSizePixel = 0
		S78_.Size = UDim2.new(1, 0, 1, 0)
		S78_.Position = UDim2.new(0, S75_.TextBounds.X + 15, 0, 0)
		S78_.Parent = S74_

		S79_.Color = S66_.Color
		S79_.Thickness = 0.4000000059604645
		S79_.Parent = S78_

		S80_.Font = Enum.Font.SourceSans
		S80_.Text = ""
		S80_.TextColor3 = Color3.fromRGB(0, 0, 0)
		S80_.TextSize = 14
		S80_.AnchorPoint = Vector2.new(1, 0.5)
		S80_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S80_.BackgroundTransparency = 0.9990000128746033
		S80_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S80_.BorderSizePixel = 0
		S80_.Position = UDim2.new(1, -5, 0.5, 0)
		S80_.Size = UDim2.new(0, 25, 0, 25)
		S80_.Name = "Close"
		S80_.Parent = S74_

		S81_.Image = "rbxassetid://9886659671"
		S81_.AnchorPoint = Vector2.new(0.5, 0.5)
		S81_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S81_.BackgroundTransparency = 0.9990000128746033
		S81_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S81_.BorderSizePixel = 0
		S81_.Position = UDim2.new(0.49000001, 0, 0.5, 0)
		S81_.Size = UDim2.new(1, -8, 1, -8)
		S81_.Parent = S80_

		S82_.Font = Enum.Font.GothamBold
		S82_.TextColor3 = Color3.fromRGB(255, 255, 255)
		S82_.TextSize = 13
		S82_.Text = S66_.Content
		S82_.TextXAlignment = Enum.TextXAlignment.Left
		S82_.TextYAlignment = Enum.TextYAlignment.Top
		S82_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S82_.BackgroundTransparency = 0.9990000128746033
		S82_.TextColor3 = Color3.fromRGB(150.0000062584877, 150.0000062584877, 150.0000062584877)
		S82_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S82_.BorderSizePixel = 0
		S82_.Position = UDim2.new(0, 10, 0, 27)
		S82_.Parent = S70_
		S82_.Size = UDim2.new(1, -20, 0, 13)

		S82_.Size = UDim2.new(1, -20, 0, 13 + (13 * (S82_.TextBounds.X // S82_.AbsoluteSize.X)))
		S82_.TextWrapped = true

		if S82_.AbsoluteSize.Y < 27 then
			S69_.Size = UDim2.new(1, 0, 0, 65)
		else
			S69_.Size = UDim2.new(1, 0, 0, S82_.AbsoluteSize.Y + 40)
		end
		local S83_ = false
		function S67_:Close()
			if S83_ then
				return false
			end
			S83_ = true
			S2_:Create(
				S70_, TweenInfo.new(tonumber(S66_.Time), Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
				Position = UDim2.new(0, 400, 0, 0)
			}):Play()
			task.wait(tonumber(S66_.Time) / 1.2)
			S69_:Destroy()
		end
		S80_.Activated:Connect(function()
			S67_:Close()
		end)
		S2_:Create(
			S70_, TweenInfo.new(tonumber(S66_.Time), Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
			Position = UDim2.new(0, 0, 0, 0)
		}):Play()
		task.wait(tonumber(S66_.Delay))
		S67_:Close()
	end)
	return S67_
end

function S9_:MakeGui(S91_arg0)
	local S92_ = S91_arg0 or {}

	S92_.NameHub = S92_.NameHub or ""
	S92_.Description = S92_.Description or ""
	S92_.Color = S92_.Color or Color3.fromRGB(255, 0, 255)
	S92_["Tab Width"] = S92_["Tab Width"] or 120
	S92_["Size UI"] = S92_["Size UI"] or UDim2.fromOffset(550, 315)
	
	local S93_ = {}

	local S94_ = Instance.new("ScreenGui");
	local S95_ = Instance.new("Frame");
	local S96_ = Instance.new("ImageLabel");
	local S97_ = Instance.new("Frame");
	local S98_ = Instance.new("UICorner");
	local S99_ = Instance.new("UIStroke");
	local S100_ = Instance.new("Frame");
	local S101_ = Instance.new("TextLabel");
	local S102_ = Instance.new("UICorner");
	local S103_ = Instance.new("TextLabel");
	local S104_ = Instance.new("UIStroke");
	local S105_ = Instance.new("TextButton");
	local S106_ = Instance.new("ImageLabel");
	local S107_ = Instance.new("TextButton");
	local S108_ = Instance.new("ImageLabel");
	local S109_ = Instance.new("TextButton");
	local S110_ = Instance.new("ImageLabel");
	local S111_ = Instance.new("Frame");
	local S112_ = Instance.new("UICorner");
	local S113_ = Instance.new("Frame");
	local S114_ = Instance.new("UIStroke");
	local S115_ = Instance.new("Frame");
	local S116_ = Instance.new("UICorner");
	local S117_ = Instance.new("TextLabel");
	local S118_ = Instance.new("Frame");
	local S119_ = Instance.new("Folder");
	local S120_ = Instance.new("UIPageLayout");

	S94_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	S94_.Name = "SpeedHubXGui"
	S94_.Parent = S4_:IsStudio() and S3_.PlayerGui or (gethui() or cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui"))

	S95_.BackgroundTransparency = 1
	S95_.BorderSizePixel = 0
	S95_.Size = UDim2.new(0, 455, 0, 350)
	S95_.ZIndex = 0
	S95_.Name = "DropShadowHolder"
	S95_.Parent = S94_
	
	S95_.Position = UDim2.new(0, (S94_.AbsoluteSize.X // 2 - S95_.Size.X.Offset // 2), 0, (S94_.AbsoluteSize.Y // 2 - S95_.Size.Y.Offset // 2))
	S96_.Image = "rbxassetid://6015897843"
	S96_.ImageColor3 = Color3.fromRGB(15, 15, 15)
	S96_.ImageTransparency = 0.5
	S96_.ScaleType = Enum.ScaleType.Slice
	S96_.SliceCenter = Rect.new(49, 49, 450, 450)
	S96_.AnchorPoint = Vector2.new(0.5, 0.5)
	S96_.BackgroundTransparency = 1
	S96_.BorderSizePixel = 0
	S96_.Position = UDim2.new(0.5, 0, 0.5, 0)
	S96_.Size = S92_["Size UI"]
	S96_.ZIndex = 0
	S96_.Name = "DropShadow"
	S96_.Parent = S95_

	S97_.AnchorPoint = Vector2.new(0.5, 0.5)
	S97_.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	S97_.BackgroundTransparency = 0.1
	S97_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S97_.BorderSizePixel = 0
	S97_.Position = UDim2.new(0.5, 0, 0.5, 0)
	S97_.Size = S92_["Size UI"]
	S97_.Name = "Main"
	S97_.Parent = S96_

	S98_.Parent = S97_

	S99_.Color = Color3.fromRGB(50, 50, 50)
	S99_.Thickness = 1.600000023841858
	S99_.Parent = S97_

	S100_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S100_.BackgroundTransparency = 0.9990000128746033
	S100_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S100_.BorderSizePixel = 0
	S100_.Size = UDim2.new(1, 0, 0, 38)
	S100_.Name = "Top"
	S100_.Parent = S97_

	S101_.Font = Enum.Font.GothamBold
	S101_.Text = S92_.NameHub
	S101_.TextColor3 = Color3.fromRGB(255, 255, 255)
	S101_.TextSize = 14
	S101_.TextXAlignment = Enum.TextXAlignment.Left
	S101_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S101_.BackgroundTransparency = 0.9990000128746033
	S101_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S101_.BorderSizePixel = 0
	S101_.Size = UDim2.new(1, -100, 1, 0)
	S101_.Position = UDim2.new(0, 10, 0, 0)
	S101_.Parent = S100_

	S102_.Parent = S100_

	S103_.Font = Enum.Font.GothamBold
	S103_.Text = S92_.Description
	S103_.TextColor3 = S92_.Color
	S103_.TextSize = 14
	S103_.TextXAlignment = Enum.TextXAlignment.Left
	S103_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S103_.BackgroundTransparency = 0.9990000128746033
	S103_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S103_.BorderSizePixel = 0
	S103_.Size = UDim2.new(1, - (S101_.TextBounds.X + 104), 1, 0)
	S103_.Position = UDim2.new(0, S101_.TextBounds.X + 15, 0, 0)
	S103_.Parent = S100_

	S104_.Color = S92_.Color
	S104_.Thickness = 0.4000000059604645
	S104_.Parent = S103_

	S105_.Font = Enum.Font.SourceSans
	S105_.Text = ""
	S105_.TextColor3 = Color3.fromRGB(0, 0, 0)
	S105_.TextSize = 14
	S105_.AnchorPoint = Vector2.new(1, 0.5)
	S105_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S105_.BackgroundTransparency = 0.9990000128746033
	S105_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S105_.BorderSizePixel = 0
	S105_.Position = UDim2.new(1, -42, 0.5, 0)
	S105_.Size = UDim2.new(0, 25, 0, 25)
	S105_.Name = "MaxRestore"
	S105_.Parent = S100_

	S106_.Image = "rbxassetid://9886659406"
	S106_.AnchorPoint = Vector2.new(0.5, 0.5)
	S106_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S106_.BackgroundTransparency = 0.9990000128746033
	S106_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S106_.BorderSizePixel = 0
	S106_.Position = UDim2.new(0.5, 0, 0.5, 0)
	S106_.Size = UDim2.new(1, -8, 1, -8)
	S106_.Parent = S105_

	S107_.Font = Enum.Font.SourceSans
	S107_.Text = ""
	S107_.TextColor3 = Color3.fromRGB(0, 0, 0)
	S107_.TextSize = 14
	S107_.AnchorPoint = Vector2.new(1, 0.5)
	S107_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S107_.BackgroundTransparency = 0.9990000128746033
	S107_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S107_.BorderSizePixel = 0
	S107_.Position = UDim2.new(1, -8, 0.5, 0)
	S107_.Size = UDim2.new(0, 25, 0, 25)
	S107_.Name = "Close"
	S107_.Parent = S100_

	S108_.Image = "rbxassetid://9886659671"
	S108_.AnchorPoint = Vector2.new(0.5, 0.5)
	S108_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S108_.BackgroundTransparency = 0.9990000128746033
	S108_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S108_.BorderSizePixel = 0
	S108_.Position = UDim2.new(0.49, 0, 0.5, 0)
	S108_.Size = UDim2.new(1, -8, 1, -8)
	S108_.Parent = S107_

	S109_.Font = Enum.Font.SourceSans
	S109_.Text = ""
	S109_.TextColor3 = Color3.fromRGB(0, 0, 0)
	S109_.TextSize = 14
	S109_.AnchorPoint = Vector2.new(1, 0.5)
	S109_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S109_.BackgroundTransparency = 0.9990000128746033
	S109_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S109_.BorderSizePixel = 0
	S109_.Position = UDim2.new(1, -78, 0.5, 0)
	S109_.Size = UDim2.new(0, 25, 0, 25)
	S109_.Name = "Min"
	S109_.Parent = S100_

	S110_.Image = "rbxassetid://9886659276"
	S110_.AnchorPoint = Vector2.new(0.5, 0.5)
	S110_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S110_.BackgroundTransparency = 0.9990000128746033
	S110_.ImageTransparency = 0.2
	S110_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S110_.BorderSizePixel = 0
	S110_.Position = UDim2.new(0.5, 0, 0.5, 0)
	S110_.Size = UDim2.new(1, -9, 1, -9)
	S110_.Parent = S109_

	S111_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S111_.BackgroundTransparency = 0.9990000128746033
	S111_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S111_.BorderSizePixel = 0
	S111_.Position = UDim2.new(0, 9, 0, 50)
	S111_.Size = UDim2.new(0, S92_["Tab Width"], 1, -59)
	S111_.Name = "LayersTab"
	S111_.Parent = S97_

	S112_.CornerRadius = UDim.new(0, 2)
	S112_.Parent = S111_

	S113_.AnchorPoint = Vector2.new(0.5, 0)
	S113_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S113_.BackgroundTransparency = 0.85
	S113_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S113_.BorderSizePixel = 0
	S113_.Position = UDim2.new(0.5, 0, 0, 38)
	S113_.Size = UDim2.new(1, 0, 0, 1)
	S113_.Name = "DecideFrame"
	S113_.Parent = S97_

	S115_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S115_.BackgroundTransparency = 0.9990000128746033
	S115_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S115_.BorderSizePixel = 0
	S115_.Position = UDim2.new(0, S92_["Tab Width"] + 18, 0, 50)
	S115_.Size = UDim2.new(1, - (S92_["Tab Width"] + 9 + 18), 1, -59)
	S115_.Name = "Layers"
	S115_.Parent = S97_

	S116_.CornerRadius = UDim.new(0, 2)
	S116_.Parent = S115_

	S117_.Font = Enum.Font.GothamBold
	S117_.Text = ""
	S117_.TextColor3 = Color3.fromRGB(255, 255, 255)
	S117_.TextSize = 24
	S117_.TextWrapped = true
	S117_.TextXAlignment = Enum.TextXAlignment.Left
	S117_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S117_.BackgroundTransparency = 0.9990000128746033
	S117_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S117_.BorderSizePixel = 0
	S117_.Size = UDim2.new(1, 0, 0, 30)
	S117_.Name = "NameTab"
	S117_.Parent = S115_

	S118_.AnchorPoint = Vector2.new(0, 1)
	S118_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S118_.BackgroundTransparency = 0.9990000128746033
	S118_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S118_.BorderSizePixel = 0
	S118_.ClipsDescendants = true
	S118_.Position = UDim2.new(0, 0, 1, 0)
	S118_.Size = UDim2.new(1, 0, 1, -33)
	S118_.Name = "LayersReal"
	S118_.Parent = S115_

	S119_.Name = "LayersFolder"
	S119_.Parent = S118_

	S120_.SortOrder = Enum.SortOrder.LayoutOrder
	S120_.Name = "LayersPageLayout"
	S120_.Parent = S119_
	S120_.TweenTime = 0.5
	S120_.EasingDirection = Enum.EasingDirection.InOut
	S120_.EasingStyle = Enum.EasingStyle.Quad
	--// Layer Tabs
	local S121_ = Instance.new("ScrollingFrame");
	local S122_ = Instance.new("UIListLayout");

	S121_.CanvasSize = UDim2.new(0, 0, 1.10000002, 0)
	S121_.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	S121_.ScrollBarThickness = 0
	S121_.Active = true
	S121_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S121_.BackgroundTransparency = 0.9990000128746033
	S121_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S121_.BorderSizePixel = 0
	S121_.Size = UDim2.new(1, 0, 1, -10)
	S121_.Name = "ScrollTab"
	S121_.Parent = S111_

	S122_.Padding = UDim.new(0, 3)
	S122_.SortOrder = Enum.SortOrder.LayoutOrder
	S122_.Parent = S121_

	local function S123_func()
		local S140_ = 0
		for S141_forvar0, S142_forvar1 in S121_:GetChildren() do
			if S142_forvar1.Name ~= "UIListLayout" then
				S140_ = S140_ + 3 + S142_forvar1.Size.Y.Offset
			end
		end
		S121_.CanvasSize = UDim2.new(0, 0, 0, S140_)
	end

	S121_.ChildAdded:Connect(S123_func)
	S121_.ChildRemoved:Connect(S123_func)

	function S93_:DestroyGui()
		if S94_ then 
			S94_:Destroy()
		end
	end

	local S124_ = S95_.Position
	local S125_ = S95_.Size

	S105_.Activated:Connect(function()
		CircleClick(S105_, S3_:GetMouse().X, S3_:GetMouse().Y)
		if S106_.Image == "rbxassetid://9886659406" then
			S106_.Image = "rbxassetid://9886659001"
			S124_ = S95_.Position
			S125_ = S95_.Size
			S2_:Create(S95_, TweenInfo.new(0.2), {
				Position = UDim2.new(0, 0, 0, 0)
			}):Play()
			S2_:Create(S95_, TweenInfo.new(0.2), {
				Size = UDim2.new(1, 0, 1, 0)
			}):Play()
		else
			S106_.Image = "rbxassetid://9886659406"
			S2_:Create(S95_, TweenInfo.new(0.2), {
				Position = S124_
			}):Play()
			S2_:Create(S95_, TweenInfo.new(0.2), {
				Size = S125_
			}):Play()
		end
	end)

	S109_.Activated:Connect(function()
		CircleClick(S109_, S3_:GetMouse().X, S3_:GetMouse().Y)
		S95_.Visible = false
		if not S7_.Visible then
			S7_.Visible = true
		end
	end)

	S7_.Activated:Connect(function()
		S95_.Visible = true
		if S7_.Visible then
			S7_.Visible = false
		end
	end)

	S107_.Activated:Connect(function()
		CircleClick(S107_, S3_:GetMouse().X, S3_:GetMouse().Y)
		S93_:DestroyGui()
		if not S9_.Unloaded then
			S9_.Unloaded = true
		end
	end)

	S95_.Size = UDim2.new(0, 115 + S101_.TextBounds.X + 1 + S103_.TextBounds.X, 0, 350)
	S8_func(S100_, S95_)

	--// Blur
	local S126_ = Instance.new("Frame");
	local S127_ = Instance.new("Frame");
	local S128_ = Instance.new("ImageLabel");
	local S129_ = Instance.new("UICorner");
	local S130_ = Instance.new("TextButton");
	
	S126_.AnchorPoint = Vector2.new(1, 1)
	S126_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S126_.BackgroundTransparency = 0.999
	S126_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S126_.BorderSizePixel = 0
	S126_.ClipsDescendants = true
	S126_.Position = UDim2.new(1, 8, 1, 8)
	S126_.Size = UDim2.new(1, 154, 1, 54)
	S126_.Visible = false
	S126_.Name = "MoreBlur"
	S126_.Parent = S115_

	S127_.BackgroundTransparency = 1
	S127_.BorderSizePixel = 0
	S127_.Size = UDim2.new(1, 0, 1, 0)
	S127_.ZIndex = 0
	S127_.Name = "DropShadowHolder"
	S127_.Parent = S126_

	S128_.Image = "rbxassetid://6015897843"
	S128_.ImageColor3 = Color3.fromRGB(0, 0, 0)
	S128_.ImageTransparency = 0.5
	S128_.ScaleType = Enum.ScaleType.Slice
	S128_.SliceCenter = Rect.new(49, 49, 450, 450)
	S128_.AnchorPoint = Vector2.new(0.5, 0.5)
	S128_.BackgroundTransparency = 1
	S128_.BorderSizePixel = 0
	S128_.Position = UDim2.new(0.5, 0, 0.5, 0)
	S128_.Size = UDim2.new(1, 35, 1, 35)
	S128_.ZIndex = 0
	S128_.Name = "DropShadow"
	S128_.Parent = S127_

	S129_.Parent = S126_

	S130_.Font = Enum.Font.SourceSans
	S130_.Text = ""
	S130_.TextColor3 = Color3.fromRGB(0, 0, 0)
	S130_.TextSize = 14
	S130_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S130_.BackgroundTransparency = 0.999
	S130_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S130_.BorderSizePixel = 0
	S130_.Size = UDim2.new(1, 0, 1, 0)
	S130_.Name = "ConnectButton"
	S130_.Parent = S126_

	local S131_ = Instance.new("Frame");
	local S132_ = Instance.new("UICorner");
	local S133_ = Instance.new("UIStroke");
	local S134_ = Instance.new("Frame");
	local S135_ = Instance.new("Folder");
	local S136_ = Instance.new("UIPageLayout");

	S131_.AnchorPoint = Vector2.new(1, 0.5)
	S131_.BackgroundColor3 = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871)
	S131_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S131_.BorderSizePixel = 0
	S131_.LayoutOrder = 1
	S131_.Position = UDim2.new(1, 172, 0.5, 0)
	S131_.Size = UDim2.new(0, 160, 1, -16)
	S131_.Name = "DropdownSelect"
	S131_.ClipsDescendants = true
	S131_.Parent = S126_

	S130_.Activated:Connect(function()
		if S126_.Visible then
			S2_:Create(S126_, TweenInfo.new(0.2), {
				BackgroundTransparency = 0.999
			}):Play()
			S2_:Create(S131_, TweenInfo.new(0.2), {
				Position = UDim2.new(1, 172, 0.5, 0)
			}):Play()
			task.wait(0.3)
			S126_.Visible = false
		end
	end)

	S132_.CornerRadius = UDim.new(0, 3)
	S132_.Parent = S131_

	S133_.Color = Color3.fromRGB(255, 255, 255)
	S133_.Thickness = 2.5
	S133_.Transparency = 0.8
	S133_.Parent = S131_

	S134_.AnchorPoint = Vector2.new(0.5, 0.5)
	S134_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S134_.BackgroundTransparency = 0.9990000128746033
	S134_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	S134_.BorderSizePixel = 0
	S134_.LayoutOrder = 1
	S134_.Position = UDim2.new(0.5, 0, 0.5, 0)
	S134_.Size = UDim2.new(1, -10, 1, -10)
	S134_.Name = "DropdownSelectReal"
	S134_.Parent = S131_

	S135_.Name = "DropdownFolder"
	S135_.Parent = S134_

	S136_.EasingDirection = Enum.EasingDirection.InOut
	S136_.EasingStyle = Enum.EasingStyle.Quad
	S136_.TweenTime = 0.009999999776482582
	S136_.SortOrder = Enum.SortOrder.LayoutOrder
	S136_.Archivable = false
	S136_.Name = "DropPageLayout"
	S136_.Parent = S135_
	--// Tabs
	local S137_ = {}
	local S138_ = 0
	local S139_ = 0
	function S137_:CreateTab(S143_arg0)
		local S144_ = S143_arg0 or {}
		S144_.Name = S144_.Name or "Tab"
		S144_.Icon = S144_.Icon or ""

		local S145_ = Instance.new("ScrollingFrame");
		local S146_ = Instance.new("UIListLayout");

		S145_.ScrollBarImageColor3 = Color3.fromRGB(80.00000283122063, 80.00000283122063, 80.00000283122063)
		S145_.ScrollBarThickness = 0
		S145_.Active = true
		S145_.LayoutOrder = S138_
		S145_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S145_.BackgroundTransparency = 0.9990000128746033
		S145_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S145_.BorderSizePixel = 0
		S145_.Size = UDim2.new(1, 0, 1, 0)
		S145_.Name = "ScrolLayers"
		S145_.Parent = S119_

		S146_.Padding = UDim.new(0, 3)
		S146_.SortOrder = Enum.SortOrder.LayoutOrder
		S146_.Parent = S145_

		local S147_ = Instance.new("Frame");
		local S148_ = Instance.new("UICorner");
		local S149_ = Instance.new("TextButton");
		local S150_ = Instance.new("TextLabel")
		local S151_ = Instance.new("ImageLabel");
		local S152_ = Instance.new("UIStroke");
		local S153_ = Instance.new("UICorner");

		S147_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		if S138_ == 0 then
			S147_.BackgroundTransparency = 0.9200000166893005
		else
			S147_.BackgroundTransparency = 0.9990000128746033
		end
		S147_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S147_.BorderSizePixel = 0
		S147_.LayoutOrder = S138_
		S147_.Size = UDim2.new(1, 0, 0, 30)
		S147_.Name = "Tab"
		S147_.Parent = S121_

		S148_.CornerRadius = UDim.new(0, 4)
		S148_.Parent = S147_

		S149_.Font = Enum.Font.GothamBold
		S149_.Text = ""
		S149_.TextColor3 = Color3.fromRGB(255, 255, 255)
		S149_.TextSize = 13
		S149_.TextXAlignment = Enum.TextXAlignment.Left
		S149_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S149_.BackgroundTransparency = 0.9990000128746033
		S149_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S149_.BorderSizePixel = 0
		S149_.Size = UDim2.new(1, 0, 1, 0)
		S149_.Name = "TabButton"
		S149_.Parent = S147_

		S150_.Font = Enum.Font.GothamBold
		S150_.Text = S144_.Name
		S150_.TextColor3 = Color3.fromRGB(255, 255, 255)
		S150_.TextSize = 13
		S150_.TextXAlignment = Enum.TextXAlignment.Left
		S150_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S150_.BackgroundTransparency = 0.9990000128746033
		S150_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S150_.BorderSizePixel = 0
		S150_.Size = UDim2.new(1, 0, 1, 0)
		S150_.Position = UDim2.new(0, 30, 0, 0)
		S150_.Name = "TabName"
		S150_.Parent = S147_

		S151_.Image = S144_.Icon
		S151_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S151_.BackgroundTransparency = 0.9990000128746033
		S151_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S151_.BorderSizePixel = 0
		S151_.Position = UDim2.new(0, 9, 0, 7)
		S151_.Size = UDim2.new(0, 16, 0, 16)
		S151_.Name = "FeatureImg"
		S151_.Parent = S147_
		if S138_ == 0 then
			S120_:JumpToIndex(0)
			S117_.Text = S144_.Name
			local S156_ = Instance.new("Frame");
			S156_.BackgroundColor3 = S92_.Color
			S156_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S156_.BorderSizePixel = 0
			S156_.Position = UDim2.new(0, 2, 0, 9)
			S156_.Size = UDim2.new(0, 1, 0, 12)
			S156_.Name = "ChooseFrame"
			S156_.Parent = S147_

			S152_.Color = S92_.Color
			S152_.Thickness = 1.600000023841858
			S152_.Parent = S156_

			S153_.Parent = S156_
		end
		S149_.Activated:Connect(function()
			CircleClick(S149_, S3_:GetMouse().X, S3_:GetMouse().Y)
			local S157_
			for S158_forvar0, S159_forvar1 in S121_:GetChildren() do
				for S160_forvar0, S161_forvar1 in S159_forvar1:GetChildren() do
					if S161_forvar1.Name == "ChooseFrame" then
						S157_ = S161_forvar1
						break
					end
				end
			end
			if S157_ ~= nil and S147_.LayoutOrder ~= S120_.CurrentPage.LayoutOrder then
				for S162_forvar0, S163_forvar1 in S121_:GetChildren() do
					if S163_forvar1.Name == "Tab" then
						S2_:Create(
							S163_forvar1, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
							BackgroundTransparency = 0.9990000128746033
						}):Play()
					end    
				end
				S2_:Create(
					S147_, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
					BackgroundTransparency = 0.9200000166893005
				}):Play()
				S2_:Create(
					S157_, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Position = UDim2.new(0, 2, 0, 9 + (33 * S147_.LayoutOrder))
				}):Play()
				S120_:JumpToIndex(S147_.LayoutOrder)
				task.wait(0.05)
				S117_.Text = S144_.Name
				S2_:Create(
					S157_, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Size = UDim2.new(0, 1, 0, 20)
				}):Play()
				task.wait(0.2)
				S2_:Create(
					S157_, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Size = UDim2.new(0, 1, 0, 12)
				}):Play()
			end
		end)
		--// Section 
		local S154_ = {}
		local S155_ = 0
		function S154_:AddSection(S164_arg0, S165_arg1)
			local S166_ = S164_arg0 or "Title"
			local S167_ = S165_arg1 or false

			local S168_ = Instance.new("Frame");
			local S169_ = Instance.new("Frame");
			local S170_ = Instance.new("UICorner");
			local S171_ = Instance.new("UIGradient");

			S168_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S168_.BackgroundTransparency = 0.9990000128746033
			S168_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S168_.BorderSizePixel = 0
			S168_.LayoutOrder = S155_
			S168_.ClipsDescendants = true
			S168_.LayoutOrder = 1
			S168_.Size = UDim2.new(1, 0, 0, 30)
			S168_.Name = "Section"
			S168_.Parent = S145_

			local S172_ = Instance.new("Frame");
			local S173_ = Instance.new("UICorner");
			local S174_ = Instance.new("UIStroke");
			local S175_ = Instance.new("TextButton");
			local S176_ = Instance.new("Frame");
			local S177_ = Instance.new("ImageLabel");
			local S178_ = Instance.new("TextLabel");

			S172_.AnchorPoint = Vector2.new(0.5, 0)
			S172_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S172_.BackgroundTransparency = 0.9350000023841858
			S172_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S172_.BorderSizePixel = 0
			S172_.LayoutOrder = 1
			S172_.Position = UDim2.new(0.5, 0, 0, 0)
			S172_.Size = UDim2.new(1, 1, 0, 30)
			S172_.Name = "SectionReal"
			S172_.Parent = S168_

			S173_.CornerRadius = UDim.new(0, 4)
			S173_.Parent = S172_

			S175_.Font = Enum.Font.SourceSans
			S175_.Text = ""
			S175_.TextColor3 = Color3.fromRGB(0, 0, 0)
			S175_.TextSize = 14
			S175_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S175_.BackgroundTransparency = 0.9990000128746033
			S175_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S175_.BorderSizePixel = 0
			S175_.Size = UDim2.new(1, 0, 1, 0)
			S175_.Name = "SectionButton"
			S175_.Parent = S172_

			S176_.AnchorPoint = Vector2.new(1, 0.5)
			S176_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			S176_.BackgroundTransparency = 0.9990000128746033
			S176_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S176_.BorderSizePixel = 0
			S176_.Position = UDim2.new(1, -5, 0.5, 0)
			S176_.Size = UDim2.new(0, 20, 0, 20)
			S176_.Name = "FeatureFrame"
			S176_.Parent = S172_

			S177_.Image = "rbxassetid://16851841101"
			S177_.AnchorPoint = Vector2.new(0.5, 0.5)
			S177_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S177_.BackgroundTransparency = 0.9990000128746033
			S177_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S177_.BorderSizePixel = 0
			S177_.Position = UDim2.new(0.5, 0, 0.5, 0)
			S177_.Rotation = -90
			S177_.Size = UDim2.new(1, 6, 1, 6)
			S177_.Name = "FeatureImg"
			S177_.Parent = S176_

			S178_.Font = Enum.Font.GothamBold
			S178_.Text = S166_
			S178_.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
			S178_.TextSize = 13
			S178_.TextXAlignment = Enum.TextXAlignment.Left
			S178_.TextYAlignment = Enum.TextYAlignment.Top
			S178_.AnchorPoint = Vector2.new(0, 0.5)
			S178_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S178_.BackgroundTransparency = 0.9990000128746033
			S178_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S178_.BorderSizePixel = 0
			S178_.Position = UDim2.new(0, 10, 0.5, 0)
			S178_.Size = UDim2.new(1, -50, 0, 13)
			S178_.Name = "SectionTitle"
			S178_.Parent = S172_

			S169_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S169_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S169_.AnchorPoint = Vector2.new(0.5, 0)
			S169_.BorderSizePixel = 0
			S169_.Position = UDim2.new(0.5, 0, 0, 33)
			S169_.Size = UDim2.new(0, 0, 0, 2)
			S169_.Name = "SectionDecideFrame"
			S169_.Parent = S168_

			S170_.Parent = S169_

			S171_.Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
				ColorSequenceKeypoint.new(0.5, S92_.Color),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20))
			}
			S171_.Parent = S169_
			--// Section Add
			local S179_ = Instance.new("Frame");
			local S180_ = Instance.new("UICorner");
			local S181_ = Instance.new("UIListLayout");

			S179_.AnchorPoint = Vector2.new(0.5, 0)
			S179_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S179_.BackgroundTransparency = 0.9990000128746033
			S179_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S179_.BorderSizePixel = 0
			S179_.ClipsDescendants = true
			S179_.LayoutOrder = 1
			S179_.Position = UDim2.new(0.5, 0, 0, 38)
			S179_.Size = UDim2.new(1, 0, 0, 100)
			S179_.Name = "SectionAdd"
			S179_.Parent = S168_

			S180_.CornerRadius = UDim.new(0, 2)
			S180_.Parent = S179_

			S181_.Padding = UDim.new(0, 3)
			S181_.SortOrder = Enum.SortOrder.LayoutOrder
			S181_.Parent = S179_

			local function S182_func()
				local S186_ = 0
				for S187_forvar0, S188_forvar1 in S145_:GetChildren() do
					if S188_forvar1.Name ~= "UIListLayout" then
						S186_ = S186_ + 3 + S188_forvar1.Size.Y.Offset
					end
				end
				S145_.CanvasSize = UDim2.new(0, 0, 0, S186_)
			end
			local function S183_func()
				if S167_ then
					local S189_ = 38
					for S190_forvar0, S191_forvar1 in S179_:GetChildren() do
						if S191_forvar1.Name ~= "UIListLayout" and S191_forvar1.Name ~= "UICorner" then
							S189_ = S189_ + S191_forvar1.Size.Y.Offset + 3
						end
					end
					S2_:Create(S176_, TweenInfo.new(0.2), {
						Rotation = 90
					}):Play()
					S2_:Create(S168_, TweenInfo.new(0.2), {
						Size = UDim2.new(1, 1, 0, S189_)
					}):Play()
					S2_:Create(S179_, TweenInfo.new(0.2), {
						Size = UDim2.new(1, 0, 0, S189_ - 38)
					}):Play()
					S2_:Create(S169_, TweenInfo.new(0.2), {
						Size = UDim2.new(1, 0, 0, 2)
					}):Play()
					task.wait(0.5)
					S182_func()
				end
			end
			S175_.Activated:Connect(function()
				CircleClick(S175_, S3_:GetMouse().X, S3_:GetMouse().Y)
				if S167_ then
					S2_:Create(S176_, TweenInfo.new(0.2), {
						Rotation = 0
					}):Play()
					S2_:Create(S168_, TweenInfo.new(0.2), {
						Size = UDim2.new(1, 1, 0, 30)
					}):Play()
					S2_:Create(S169_, TweenInfo.new(0.2), {
						Size = UDim2.new(0, 0, 0, 2)
					}):Play()
					S167_ = false
					task.wait(0.2)
					S182_func()
				else
					S167_ = true
					S183_func()
				end
			end)
			S179_.ChildAdded:Connect(S183_func)
			S179_.ChildRemoved:Connect(S183_func)
			S182_func()
			
			local S184_ = {}
			local S185_ = 0
			function S184_:AddParagraph(S192_arg0)
				local S193_ = S192_arg0 or {}
				S193_.Title = S193_.Title or "Title"
				S193_.Content = S193_.Content or "Content"
				local S194_ = {}
				
				local S195_ = Instance.new("Frame");
				local S196_ = Instance.new("UICorner");
				local S197_ = Instance.new("TextLabel");
				local S198_ = Instance.new("TextLabel");

				S195_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S195_.BackgroundTransparency = 0.9350000023841858
				S195_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S195_.BorderSizePixel = 0
				S195_.LayoutOrder = S185_
				S195_.Size = UDim2.new(1, 0, 0, 46)
				S195_.Name = "Paragraph"
				S195_.Parent = S179_

				S196_.CornerRadius = UDim.new(0, 4)
				S196_.Parent = S195_

				S197_.Font = Enum.Font.GothamBold
				S197_.Text = S193_.Title
				S197_.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				S197_.TextSize = 13
				S197_.TextXAlignment = Enum.TextXAlignment.Left
				S197_.TextYAlignment = Enum.TextYAlignment.Top
				S197_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S197_.BackgroundTransparency = 0.9990000128746033
				S197_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S197_.BorderSizePixel = 0
				S197_.Position = UDim2.new(0, 10, 0, 10)
				S197_.Size = UDim2.new(1, -16, 0, 13)
				S197_.Name = "ParagraphTitle"
				S197_.Parent = S195_

				S198_.Font = Enum.Font.GothamBold
				S198_.Text = S193_.Content
				S198_.TextColor3 = Color3.fromRGB(255, 255, 255)
				S198_.TextSize = 12
				S198_.TextTransparency = 0.6000000238418579
				S198_.TextXAlignment = Enum.TextXAlignment.Left
				S198_.TextYAlignment = Enum.TextYAlignment.Bottom
				S198_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S198_.BackgroundTransparency = 0.9990000128746033
				S198_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S198_.BorderSizePixel = 0
				S198_.Position = UDim2.new(0, 10, 0, 23)
				S198_.Name = "ParagraphContent"
				S198_.Parent = S195_

				S198_.Size = UDim2.new(1, -16, 0, 12 + (12 * (S198_.TextBounds.X // S198_.AbsoluteSize.X)))
				S198_.TextWrapped = true
				S195_.Size = UDim2.new(1, 0, 0, S198_.AbsoluteSize.Y + 33)

				S198_:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					S198_.TextWrapped = false
					S198_.Size = UDim2.new(1, -16, 0, 12 + (12 * (S198_.TextBounds.X // S198_.AbsoluteSize.X)))
					S195_.Size = UDim2.new(1, 0, 0, S198_.AbsoluteSize.Y + 33)
					S198_.TextWrapped = true
					S183_func()
				end)

				function S194_:Set(S199_arg0)
					local S200_ = S199_arg0 or {}
					S200_.Title = S200_.Title or "Title"
					S200_.Content = S200_.Content or "Content"

					S197_.Text = S200_.Title
					S198_.Text = S200_.Content
					S198_.TextWrapped = false
					S198_.Size = UDim2.new(1, -16, 0, 12 + (12 // S198_.AbsoluteSize.X))
					S198_.TextWrapped = true
					S195_.Size = UDim2.new(1, 0, 0, S198_.AbsoluteSize.Y + 33)
				end
				S185_ = S185_ + 1
				return S194_
			end
			function S184_:AddButton(S201_arg0)
				local S202_ = S201_arg0 or {}
				S202_.Title = S202_.Title or "Title"
				S202_.Content = S202_.Content or "Content"
				S202_.Icon = S202_.Icon or "rbxassetid://16932740082"
				S202_.Callback = S202_.Callback or function()
				end
				local S203_ = {}

				local S204_ = Instance.new("Frame");
				local S205_ = Instance.new("UICorner");
				local S206_ = Instance.new("TextLabel");
				local S207_ = Instance.new("TextLabel");
				local S208_ = Instance.new("TextButton");
				local S209_ = Instance.new("Frame");
				local S210_ = Instance.new("ImageLabel");

				S204_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S204_.BackgroundTransparency = 0.9350000023841858
				S204_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S204_.BorderSizePixel = 0
				S204_.LayoutOrder = S185_
				S204_.Size = UDim2.new(1, 0, 0, 46)
				S204_.Name = "Button"
				S204_.Parent = S179_

				S205_.CornerRadius = UDim.new(0, 4)
				S205_.Parent = S204_

				S206_.Font = Enum.Font.GothamBold
				S206_.Text = S202_.Title
				S206_.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				S206_.TextSize = 13
				S206_.TextXAlignment = Enum.TextXAlignment.Left
				S206_.TextYAlignment = Enum.TextYAlignment.Top
				S206_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S206_.BackgroundTransparency = 0.9990000128746033
				S206_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S206_.BorderSizePixel = 0
				S206_.Position = UDim2.new(0, 10, 0, 10)
				S206_.Size = UDim2.new(1, -100, 0, 13)
				S206_.Name = "ButtonTitle"
				S206_.Parent = S204_

				S207_.Font = Enum.Font.GothamBold
				S207_.Text = S202_.Content
				S207_.TextColor3 = Color3.fromRGB(255, 255, 255)
				S207_.TextSize = 12
				S207_.TextTransparency = 0.6000000238418579
				S207_.TextXAlignment = Enum.TextXAlignment.Left
				S207_.TextYAlignment = Enum.TextYAlignment.Bottom
				S207_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S207_.BackgroundTransparency = 0.9990000128746033
				S207_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S207_.BorderSizePixel = 0
				S207_.Position = UDim2.new(0, 10, 0, 23)
				S207_.Name = "ButtonContent"
				S207_.Parent = S204_
				S207_.Size = UDim2.new(1, -100, 0, 12)

				S207_.Size = UDim2.new(1, -100, 0, 12 + (12 * (S207_.TextBounds.X // S207_.AbsoluteSize.X)))
				S207_.TextWrapped = true
				S204_.Size = UDim2.new(1, 0, 0, S207_.AbsoluteSize.Y + 33)

				S207_:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					S207_.TextWrapped = false
					S207_.Size = UDim2.new(1, -100, 0, 12 + (12 * (S207_.TextBounds.X // S207_.AbsoluteSize.X)))
					S204_.Size = UDim2.new(1, 0, 0, S207_.AbsoluteSize.Y + 33)
					S207_.TextWrapped = true
					S183_func()
				end)

				S208_.Font = Enum.Font.SourceSans
				S208_.Text = ""
				S208_.TextColor3 = Color3.fromRGB(0, 0, 0)
				S208_.TextSize = 14
				S208_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				S208_.BackgroundTransparency = 0.9990000128746033
				S208_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S208_.BorderSizePixel = 0
				S208_.Size = UDim2.new(1, 0, 1, 0)
				S208_.Name = "ButtonButton"
				S208_.Parent = S204_

				S209_.AnchorPoint = Vector2.new(1, 0.5)
				S209_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				S209_.BackgroundTransparency = 0.9990000128746033
				S209_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S209_.BorderSizePixel = 0
				S209_.Position = UDim2.new(1, -15, 0.5, 0)
				S209_.Size = UDim2.new(0, 25, 0, 25)
				S209_.Name = "FeatureFrame"
				S209_.Parent = S204_

				S210_.Image = S202_.Icon
				S210_.AnchorPoint = Vector2.new(0.5, 0.5)
				S210_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S210_.BackgroundTransparency = 0.9990000128746033
				S210_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S210_.BorderSizePixel = 0
				S210_.Position = UDim2.new(0.5, 0, 0.5, 0)
				S210_.Size = UDim2.new(1, 0, 1, 0)
				S210_.Name = "FeatureImg"
				S210_.Parent = S209_

				S208_.Activated:Connect(function()
					CircleClick(S208_, S3_:GetMouse().X, S3_:GetMouse().Y)
					S202_.Callback()
				end)
				S185_ = S185_ + 1
				return S203_
			end
			function S184_:AddToggle(S211_arg0)
				local S212_ = S211_arg0 or {}
				S212_.Title = S212_.Title or "Title"
				S212_.Content = S212_.Content or "Content"
				S212_.Default = S212_.Default or false
				S212_.Callback = S212_.Callback or function()
				end
				local S213_ = {
					Value = S212_.Default,
					Options = S212_.Options,
					Selecting = S212_.Selecting
				}

				local S214_ = Instance.new("Frame");
				local S215_ = Instance.new("UICorner");
				local S216_ = Instance.new("TextLabel");
				local S217_ = Instance.new("TextLabel");
				local S218_ = Instance.new("TextButton");
				local S219_ = Instance.new("Frame");
				local S220_ = Instance.new("ImageLabel");
				local S221_ = Instance.new("UICorner");
				local S222_ = Instance.new("TextButton");
				local S223_ = Instance.new("Frame");
				local S224_ = Instance.new("UICorner");
				local S225_ = Instance.new("UIStroke");
				local S226_ = Instance.new("Frame");
				local S227_ = Instance.new("UICorner");

				S214_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S214_.BackgroundTransparency = 0.9350000023841858
				S214_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S214_.BorderSizePixel = 0
				S214_.LayoutOrder = S185_
				S214_.Size = UDim2.new(1, 0, 0, 46)
				S214_.Name = "Toggle"
				S214_.Parent = S179_

				S215_.CornerRadius = UDim.new(0, 4)
				S215_.Parent = S214_

				S216_.Font = Enum.Font.GothamBold
				S216_.Text = S212_.Title
				S216_.TextSize = 13
				S216_.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				S216_.TextXAlignment = Enum.TextXAlignment.Left
				S216_.TextYAlignment = Enum.TextYAlignment.Top
				S216_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S216_.BackgroundTransparency = 0.9990000128746033
				S216_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S216_.BorderSizePixel = 0
				S216_.Position = UDim2.new(0, 10, 0, 10)
				S216_.Size = UDim2.new(1, -100, 0, 13)
				S216_.Name = "ToggleTitle"
				S216_.Parent = S214_

				S217_.Font = Enum.Font.GothamBold
				S217_.Text = S212_.Content
				S217_.TextColor3 = Color3.fromRGB(255, 255, 255)
				S217_.TextSize = 12
				S217_.TextTransparency = 0.6000000238418579
				S217_.TextXAlignment = Enum.TextXAlignment.Left
				S217_.TextYAlignment = Enum.TextYAlignment.Bottom
				S217_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S217_.BackgroundTransparency = 0.9990000128746033
				S217_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S217_.BorderSizePixel = 0
				S217_.Position = UDim2.new(0, 10, 0, 23)
				S217_.Size = UDim2.new(1, -100, 0, 12)
				S217_.Name = "ToggleContent"
				S217_.Parent = S214_
				
				S217_.Size = UDim2.new(1, -100, 0, 12 + (12 * (S217_.TextBounds.X // S217_.AbsoluteSize.X)))
				S217_.TextWrapped = true
				S214_.Size = UDim2.new(1, 0, 0, S217_.AbsoluteSize.Y + 33)

				S217_:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					S217_.TextWrapped = false
					S217_.Size = UDim2.new(1, -100, 0, 12 + (12 * (S217_.TextBounds.X // S217_.AbsoluteSize.X)))
					S214_.Size = UDim2.new(1, 0, 0, S217_.AbsoluteSize.Y + 33)
					S217_.TextWrapped = true
					S183_func()
				end)

				S218_.Font = Enum.Font.SourceSans
				S218_.Text = ""
				S218_.TextColor3 = Color3.fromRGB(0, 0, 0)
				S218_.TextSize = 14
				S218_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				S218_.BackgroundTransparency = 0.9990000128746033
				S218_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S218_.BorderSizePixel = 0
				S218_.Size = UDim2.new(1, 0, 1, 0)
				S218_.Name = "ToggleButton"
				S218_.Parent = S214_

				S223_.AnchorPoint = Vector2.new(1, 0.5)
				S223_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S223_.BackgroundTransparency = 0.9200000166893005
				S223_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S223_.BorderSizePixel = 0
				S223_.Position = UDim2.new(1, -15, 0.5, 0)
				S223_.Size = UDim2.new(0, 30, 0, 15)
				S223_.Name = "FeatureFrame"
				S223_.Parent = S214_

				S224_.Parent = S223_

				S225_.Color = Color3.fromRGB(255, 255, 255)
				S225_.Thickness = 2
				S225_.Transparency = 0.9
				S225_.Parent = S223_

				S226_.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
				S226_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S226_.BorderSizePixel = 0
				S226_.Position = UDim2.new(0, 0, 0, 0)
				S226_.Size = UDim2.new(0, 14, 0, 14)
				S226_.Name = "ToggleCircle"
				S226_.Parent = S223_

				S227_.CornerRadius = UDim.new(0, 15)
				S227_.Parent = S226_
				
				S218_.Activated:Connect(function()
					CircleClick(S218_, S3_:GetMouse().X, S3_:GetMouse().Y) 
					S213_.Value = not S213_.Value
					S213_:Set(S213_.Value)
				end)
				function S213_:Set(S228_arg0)
					S212_.Callback(S228_arg0)
					if S228_arg0 then
						S2_:Create(
							S216_, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							TextColor3 = S92_.Color
						}):Play()
						S2_:Create(
							S226_, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							Position = UDim2.new(0, 15, 0, 0)
						}):Play()
						S2_:Create(
							S225_, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							Color = S92_.Color,
							Transparency = 0
						}):Play()
						S2_:Create(
							S223_, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							BackgroundColor3 = S92_.Color,
							BackgroundTransparency = 0
						}):Play()
					else
						S2_:Create(
							S216_, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
						}):Play()
						S2_:Create(
							S226_, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							Position = UDim2.new(0, 0, 0, 0)
						}):Play()
						S2_:Create(
							S225_, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							Color = Color3.fromRGB(255, 255, 255),
							Transparency = 0.9
						}):Play()
						S2_:Create(
							S223_, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							BackgroundColor3 = Color3.fromRGB(255, 255, 255),
							BackgroundTransparency = 0.9200000166893005
						}):Play()
					end
				end
				S213_:Set(S213_.Value)
				S185_ = S185_ + 1
				return S213_
			end
			function S184_:AddSlider(S229_arg0)
				local S230_ = S229_arg0 or {}
				S230_.Title = S230_.Title or "Slider"
				S230_.Content = S230_.Content or "Content"
				S230_.Increment = S230_.Increment or 1
				S230_.Min = S230_.Min or 0
				S230_.Max = S230_.Max or 100
				S230_.Default = S230_.Default or 50
				S230_.Callback = S230_.Callback or function()
				end
				local S231_ = {
					Value = S230_.Default
				}
	
				local S232_ = Instance.new("Frame");
				local S233_ = Instance.new("UICorner");
				local S234_ = Instance.new("TextLabel");
				local S235_ = Instance.new("TextLabel");
				local S236_ = Instance.new("Frame");
				local S237_ = Instance.new("UICorner");
				local S238_ = Instance.new("TextBox");
				local S239_ = Instance.new("Frame");
				local S240_ = Instance.new("UICorner");
				local S241_ = Instance.new("Frame");
				local S242_ = Instance.new("UICorner");
				local S243_ = Instance.new("UIStroke");
				local S244_ = Instance.new("Frame");
				local S245_ = Instance.new("UICorner");
				local S246_ = Instance.new("UIStroke");
				local S247_ = Instance.new("UIStroke");

				S232_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S232_.BackgroundTransparency = 0.9350000023841858
				S232_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S232_.BorderSizePixel = 0
				S232_.LayoutOrder = S185_
				S232_.Size = UDim2.new(1, 0, 0, 46)
				S232_.Name = "Slider"
				S232_.Parent = S179_

				S233_.CornerRadius = UDim.new(0, 4)
				S233_.Parent = S232_

				S234_.Font = Enum.Font.GothamBold
				S234_.Text = S230_.Title
				S234_.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				S234_.TextSize = 13
				S234_.TextXAlignment = Enum.TextXAlignment.Left
				S234_.TextYAlignment = Enum.TextYAlignment.Top
				S234_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S234_.BackgroundTransparency = 0.9990000128746033
				S234_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S234_.BorderSizePixel = 0
				S234_.Position = UDim2.new(0, 10, 0, 10)
				S234_.Size = UDim2.new(1, -180, 0, 13)
				S234_.Name = "SliderTitle"
				S234_.Parent = S232_

				S235_.Font = Enum.Font.GothamBold
				S235_.Text = S230_.Content
				S235_.TextColor3 = Color3.fromRGB(255, 255, 255)
				S235_.TextSize = 12
				S235_.TextTransparency = 0.6000000238418579
				S235_.TextXAlignment = Enum.TextXAlignment.Left
				S235_.TextYAlignment = Enum.TextYAlignment.Bottom
				S235_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S235_.BackgroundTransparency = 0.9990000128746033
				S235_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S235_.BorderSizePixel = 0
				S235_.Position = UDim2.new(0, 10, 0, 23)
				S235_.Size = UDim2.new(1, -180, 0, 12)
				S235_.Name = "SliderContent"
				S235_.Parent = S232_

				S235_.Size = UDim2.new(1, -180, 0, 12 + (12 * (S235_.TextBounds.X // S235_.AbsoluteSize.X)))
				S235_.TextWrapped = true
				S232_.Size = UDim2.new(1, 0, 0, S235_.AbsoluteSize.Y + 33)

				S235_:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					S235_.TextWrapped = false
					S235_.Size = UDim2.new(1, -180, 0, 12 + (12 * (S235_.TextBounds.X // S235_.AbsoluteSize.X)))
					S232_.Size = UDim2.new(1, 0, 0, S235_.AbsoluteSize.Y + 33)
					S235_.TextWrapped = true
					S183_func()
				end)

				S236_.AnchorPoint = Vector2.new(0, 0.5)
				S236_.BackgroundColor3 = S92_.Color
				S236_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S236_.BorderSizePixel = 0
				S236_.Position = UDim2.new(1, -155, 0.5, 0)
				S236_.Size = UDim2.new(0, 28, 0, 20)
				S236_.Name = "SliderInput"
				S236_.Parent = S232_

				S237_.CornerRadius = UDim.new(0, 2)
				S237_.Parent = S236_

				S238_.Font = Enum.Font.GothamBold
				S238_.Text = "90"
				S238_.TextColor3 = Color3.fromRGB(255, 255, 255)
				S238_.TextSize = 13
				S238_.TextWrapped = true
				S238_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				S238_.BackgroundTransparency = 0.9990000128746033
				S238_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S238_.BorderSizePixel = 0
				S238_.Position = UDim2.new(0, -1, 0, 0)
				S238_.Size = UDim2.new(1, 0, 1, 0)
				S238_.Parent = S236_

				S239_.AnchorPoint = Vector2.new(1, 0.5)
				S239_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S239_.BackgroundTransparency = 0.800000011920929
				S239_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S239_.BorderSizePixel = 0
				S239_.Position = UDim2.new(1, -20, 0.5, 0)
				S239_.Size = UDim2.new(0, 100, 0, 3)
				S239_.Name = "SliderFrame"
				S239_.Parent = S232_

				S240_.Parent = S239_

				S241_.AnchorPoint = Vector2.new(0, 0.5)
				S241_.BackgroundColor3 = S92_.Color
				S241_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S241_.BorderSizePixel = 0
				S241_.Position = UDim2.new(0, 0, 0.5, 0)
				S241_.Size = UDim2.new(0.899999976, 0, 0, 1)
				S241_.Name = "SliderDraggable"
				S241_.Parent = S239_

				S242_.Parent = S241_

				S244_.AnchorPoint = Vector2.new(1, 0.5)
				S244_.BackgroundColor3 = S92_.Color
				S244_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S244_.BorderSizePixel = 0
				S244_.Position = UDim2.new(1, 4, 0.5, 0)
				S244_.Size = UDim2.new(0, 8, 0, 8)
				S244_.Name = "SliderCircle"
				S244_.Parent = S241_

				S245_.Parent = S244_

				S246_.Color = S92_.Color
				S246_.Parent = S244_

				local S248_ = false
				local function S249_func(S250_arg0, S251_arg1)
					local S252_ = math.floor(S250_arg0 / S251_arg1 + (math.sign(S250_arg0) * 0.5)) * S251_arg1
					if S252_ < 0 then 
						S252_ = S252_ + S251_arg1 
					end
					return S252_
				end
				function S231_:Set(S253_arg0)
					S253_arg0 = math.clamp(S249_func(S253_arg0, S230_.Increment), S230_.Min, S230_.Max)
					S231_.Value = S253_arg0
					S238_.Text = tostring(S253_arg0)
					S2_:Create(
						S241_, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = UDim2.fromScale((S253_arg0 - S230_.Min) / (S230_.Max - S230_.Min), 1)
					}):Play()
				end
				S239_.InputBegan:Connect(function(S254_arg0)
					if S254_arg0.UserInputType == Enum.UserInputType.MouseButton1 then 
						S248_ = true 
					end 
				end)
				S239_.InputEnded:Connect(function(S255_arg0) 
					if S255_arg0.UserInputType == Enum.UserInputType.MouseButton1 then 
						S248_ = false 
						S230_.Callback(S231_.Value)
					end 
				end)
				S1_.InputChanged:Connect(function(S256_arg0)
					if S248_ and S256_arg0.UserInputType == Enum.UserInputType.MouseMovement then 
						local S257_ = math.clamp((S256_arg0.Position.X - S239_.AbsolutePosition.X) / S239_.AbsoluteSize.X, 0, 1)
						S231_:Set(S230_.Min + ((S230_.Max - S230_.Min) * S257_)) 
					end
				end)
				S238_:GetPropertyChangedSignal("Text"):Connect(function()
					local S258_ = S238_.Text:gsub("[^%d]", "")
					if S258_ ~= "" then
						local S259_ = math.min(tonumber(S258_), S230_.Max)
						S238_.Text = tostring(S259_)
					else
						S238_.Text = tostring(S258_)
					end
				end)
				S238_.FocusLost:Connect(function()
					if S238_.Text ~= "" then
						S231_:Set(tonumber(S238_.Text))
					else
						S231_:Set(0)
					end
				end)
				S231_:Set(tonumber(S230_.Default))
				S185_ = S185_ + 1
				return S231_
			end
			function S184_:AddInput(S260_arg0)
				local S261_ = S260_arg0 or {}
				S261_.Title = S261_.Title or ""
				S261_.Content = S261_.Content or ""
				S261_.Default = S261_.Default or ""
				S261_.Callback = S261_.Callback or function()
				end
				local S262_ = {
					Value = S261_.Default
				}

				local S263_ = Instance.new("Frame");
				local S264_ = Instance.new("UICorner");
				local S265_ = Instance.new("TextLabel");
				local S266_ = Instance.new("TextLabel");
				local S267_ = Instance.new("Frame");
				local S268_ = Instance.new("UICorner");
				local S269_ = Instance.new("TextBox");

				S263_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S263_.BackgroundTransparency = 0.9350000023841858
				S263_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S263_.BorderSizePixel = 0
				S263_.LayoutOrder = S185_
				S263_.Size = UDim2.new(1, 0, 0, 46)
				S263_.Name = "Input"
				S263_.Parent = S179_

				S264_.CornerRadius = UDim.new(0, 4)
				S264_.Parent = S263_

				S265_.Font = Enum.Font.GothamBold
				S265_.Text = S261_.Title
				S265_.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				S265_.TextSize = 13
				S265_.TextXAlignment = Enum.TextXAlignment.Left
				S265_.TextYAlignment = Enum.TextYAlignment.Top
				S265_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S265_.BackgroundTransparency = 0.9990000128746033
				S265_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S265_.BorderSizePixel = 0
				S265_.Position = UDim2.new(0, 10, 0, 10)
				S265_.Size = UDim2.new(1, -180, 0, 13)
				S265_.Name = "InputTitle"
				S265_.Parent = S263_

				S266_.Font = Enum.Font.GothamBold
				S266_.Text = S261_.Content
				S266_.TextColor3 = Color3.fromRGB(255, 255, 255)
				S266_.TextSize = 12
				S266_.TextTransparency = 0.6000000238418579
				S266_.TextWrapped = true
				S266_.TextXAlignment = Enum.TextXAlignment.Left
				S266_.TextYAlignment = Enum.TextYAlignment.Bottom
				S266_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S266_.BackgroundTransparency = 0.9990000128746033
				S266_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S266_.BorderSizePixel = 0
				S266_.Position = UDim2.new(0, 10, 0, 23)
				S266_.Size = UDim2.new(1, -180, 0, 12)
				S266_.Name = "InputContent"
				S266_.Parent = S263_

				S266_.Size = UDim2.new(1, -180, 0, 12 + (12 * (S266_.TextBounds.X // S266_.AbsoluteSize.X)))
				S266_.TextWrapped = true
				S263_.Size = UDim2.new(1, 0, 0, S266_.AbsoluteSize.Y + 33)

				S266_:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					S266_.TextWrapped = false
					S266_.Size = UDim2.new(1, -180, 0, 12 + (12 * (S266_.TextBounds.X // S266_.AbsoluteSize.X)))
					S263_.Size = UDim2.new(1, 0, 0, S266_.AbsoluteSize.Y + 33)
					S266_.TextWrapped = true
					S183_func()
				end)

				S267_.AnchorPoint = Vector2.new(1, 0.5)
				S267_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S267_.BackgroundTransparency = 0.949999988079071
				S267_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S267_.BorderSizePixel = 0
				S267_.ClipsDescendants = true
				S267_.Position = UDim2.new(1, -7, 0.5, 0)
				S267_.Size = UDim2.new(0, 148, 0, 30)
				S267_.Name = "InputFrame"
				S267_.Parent = S263_

				S268_.CornerRadius = UDim.new(0, 4)
				S268_.Parent = S267_

				S269_.CursorPosition = -1
				S269_.Font = Enum.Font.GothamBold
				S269_.PlaceholderColor3 = Color3.fromRGB(120.00000044703484, 120.00000044703484, 120.00000044703484)
				S269_.PlaceholderText = "Write your input there"
				S269_.Text = ""
				S269_.TextColor3 = Color3.fromRGB(255, 255, 255)
				S269_.TextSize = 12
				S269_.TextXAlignment = Enum.TextXAlignment.Left
				S269_.AnchorPoint = Vector2.new(0, 0.5)
				S269_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S269_.BackgroundTransparency = 0.9990000128746033
				S269_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S269_.BorderSizePixel = 0
				S269_.Position = UDim2.new(0, 5, 0.5, 0)
				S269_.Size = UDim2.new(1, -10, 1, -8)
				S269_.Name = "InputTextBox"
				S269_.Parent = S267_
				function S262_:Set(S270_arg0)
					S269_.Text = S270_arg0
					S262_.Value = S270_arg0
					S261_.Callback(S270_arg0)
				end
				S269_.FocusLost:Connect(function()
					S262_:Set(S269_.Text)
				end)
				S262_:Set(S261_.Default)
				S185_ = S185_ + 1
				return S262_
			end
			function S184_:AddDropdown(S271_arg0)
				local S272_ = S271_arg0 or {}
				S272_.Title = S272_.Title or "Title"
				S272_.Content = S272_.Content or "Content"
				S272_.Multi = S272_.Multi or false
				S272_.Options = S272_.Options or {}
				S272_.Default = S272_.Default or {}
				S272_.Callback = S272_.Callback or function()
				end

				local S273_ = {
					Value = S272_.Default,
					Options = S272_.Options
				}
	
				local S274_ = Instance.new("Frame");
				local S275_ = Instance.new("TextButton");
				local S276_ = Instance.new("UICorner");
				local S277_ = Instance.new("TextLabel");
				local S278_ = Instance.new("TextLabel");
				local S279_ = Instance.new("Frame");
				local S280_ = Instance.new("UICorner");
				local S281_ = Instance.new("TextLabel");
				local S282_ = Instance.new("ImageLabel");

				S274_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S274_.BackgroundTransparency = 0.9350000023841858
				S274_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S274_.BorderSizePixel = 0
				S274_.LayoutOrder = S185_
				S274_.Size = UDim2.new(1, 0, 0, 46)
				S274_.Name = "Dropdown"
				S274_.Parent = S179_

				S275_.Font = Enum.Font.SourceSans
				S275_.Text = ""
				S275_.TextColor3 = Color3.fromRGB(0, 0, 0)
				S275_.TextSize = 14
				S275_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				S275_.BackgroundTransparency = 0.9990000128746033
				S275_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S275_.BorderSizePixel = 0
				S275_.Size = UDim2.new(1, 0, 1, 0)
				S275_.Name = "ToggleButton"
				S275_.Parent = S274_

				S276_.CornerRadius = UDim.new(0, 4)
				S276_.Parent = S274_

				S277_.Font = Enum.Font.GothamBold
				S277_.Text = S272_.Title
				S277_.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				S277_.TextSize = 13
				S277_.TextXAlignment = Enum.TextXAlignment.Left
				S277_.TextYAlignment = Enum.TextYAlignment.Top
				S277_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S277_.BackgroundTransparency = 0.9990000128746033
				S277_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S277_.BorderSizePixel = 0
				S277_.Position = UDim2.new(0, 10, 0, 10)
				S277_.Size = UDim2.new(1, -180, 0, 13)
				S277_.Name = "DropdownTitle"
				S277_.Parent = S274_

				S278_.Font = Enum.Font.GothamBold
				S278_.Text = S272_.Content
				S278_.TextColor3 = Color3.fromRGB(255, 255, 255)
				S278_.TextSize = 12
				S278_.TextTransparency = 0.6000000238418579
				S278_.TextWrapped = true
				S278_.TextXAlignment = Enum.TextXAlignment.Left
				S278_.TextYAlignment = Enum.TextYAlignment.Bottom
				S278_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S278_.BackgroundTransparency = 0.9990000128746033
				S278_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S278_.BorderSizePixel = 0
				S278_.Position = UDim2.new(0, 10, 0, 23)
				S278_.Size = UDim2.new(1, -180, 0, 12)
				S278_.Name = "DropdownContent"
				S278_.Parent = S274_

				S278_.Size = UDim2.new(1, -180, 0, 12 + (12 * (S278_.TextBounds.X // S278_.AbsoluteSize.X)))
				S278_.TextWrapped = true
				S274_.Size = UDim2.new(1, 0, 0, S278_.AbsoluteSize.Y + 33)

				S278_:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					S278_.TextWrapped = false
					S278_.Size = UDim2.new(1, -180, 0, 12 + (12 * (S278_.TextBounds.X // S278_.AbsoluteSize.X)))
					S274_.Size = UDim2.new(1, 0, 0, S278_.AbsoluteSize.Y + 33)
					S278_.TextWrapped = true
					S183_func()
				end)

				S279_.AnchorPoint = Vector2.new(1, 0.5)
				S279_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S279_.BackgroundTransparency = 0.949999988079071
				S279_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S279_.BorderSizePixel = 0
				S279_.Position = UDim2.new(1, -7, 0.5, 0)
				S279_.Size = UDim2.new(0, 148, 0, 30)
				S279_.Name = "SelectOptionsFrame"
				S279_.LayoutOrder = S139_
				S279_.Parent = S274_

				S280_.CornerRadius = UDim.new(0, 4)
				S280_.Parent = S279_

				S275_.Activated:Connect(function()
					if not S126_.Visible then
						S126_.Visible = true 
						S136_:JumpToIndex(S279_.LayoutOrder)
						S2_:Create(S126_, TweenInfo.new(0.2), {
							BackgroundTransparency = 0.7
						}):Play()
						S2_:Create(S131_, TweenInfo.new(0.2), {
							Position = UDim2.new(1, -11, 0.5, 0)
						}):Play()
					end
				end)

				S281_.Font = Enum.Font.GothamBold
				S281_.Text = ""
				S281_.TextColor3 = Color3.fromRGB(255, 255, 255)
				S281_.TextSize = 12
				S281_.TextTransparency = 0.6000000238418579
				S281_.TextWrapped = true
				S281_.TextXAlignment = Enum.TextXAlignment.Left
				S281_.AnchorPoint = Vector2.new(0, 0.5)
				S281_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S281_.BackgroundTransparency = 0.9990000128746033
				S281_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S281_.BorderSizePixel = 0
				S281_.Position = UDim2.new(0, 5, 0.5, 0)
				S281_.Size = UDim2.new(1, -30, 1, -8)
				S281_.Name = "OptionSelecting"
				S281_.Parent = S279_

				S282_.Image = "rbxassetid://16851841101"
				S282_.ImageColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				S282_.AnchorPoint = Vector2.new(1, 0.5)
				S282_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S282_.BackgroundTransparency = 0.9990000128746033
				S282_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S282_.BorderSizePixel = 0
				S282_.Position = UDim2.new(1, 0, 0.5, 0)
				S282_.Size = UDim2.new(0, 25, 0, 25)
				S282_.Name = "OptionImg"
				S282_.Parent = S279_

				local S283_ = Instance.new("ScrollingFrame");
				local S284_ = Instance.new("UIListLayout");

				S283_.CanvasSize = UDim2.new(0, 0, 0, 0)
				S283_.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
				S283_.ScrollBarThickness = 0
				S283_.Active = true
				S283_.LayoutOrder = S139_
				S283_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S283_.BackgroundTransparency = 0.9990000128746033
				S283_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S283_.BorderSizePixel = 0
				S283_.Size = UDim2.new(1, 0, 1, 0)
				S283_.Name = "ScrollSelect"
				S283_.Parent = S135_
			
				S284_.Padding = UDim.new(0, 3)
				S284_.SortOrder = Enum.SortOrder.LayoutOrder
				S284_.Parent = S283_

				local S285_ = 0
				function S273_:Clear()
					for S286_forvar0, S287_forvar1 in S283_:GetChildren() do
						if S287_forvar1.Name == "Option" then
							S273_.Value = {}
							S273_.Options = {}
							S281_.Text = "Select Options"
							S287_forvar1:Destroy()
						end
					end
				end
				function S273_:Set(S288_arg0)
					S273_.Value = S288_arg0 or S273_.Value
					for S290_forvar0, S291_forvar1 in S283_:GetChildren() do
						if S291_forvar1.Name ~= "UIListLayout" and not table.find(S273_.Value, S291_forvar1.OptionText.Text) then
							S2_:Create(
								S291_forvar1.ChooseFrame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								Size = UDim2.new(0, 0, 0, 0)
							}):Play()
							S2_:Create(
								S291_forvar1.ChooseFrame.UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								Transparency = 0.999
							}):Play()
							S2_:Create(
								S291_forvar1, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								BackgroundTransparency = 0.999
							}):Play()
						elseif S291_forvar1.Name ~= "UIListLayout" and table.find(S273_.Value, S291_forvar1.OptionText.Text) then
							S2_:Create(
								S291_forvar1.ChooseFrame.UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								Transparency = 0
							}):Play()
							S2_:Create(
								S291_forvar1.ChooseFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								Size = UDim2.new(0, 1, 0, 12)
							}):Play()
							S2_:Create(
								S291_forvar1, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								BackgroundTransparency = 0.935
							}):Play()
						end
					end
					local S289_ = table.concat(S273_.Value, ", ")
					if S289_ == "" then
						S281_.Text = "Select Options"
					else
						S281_.Text = tostring(S289_)
					end
					S272_.Callback(S273_.Value)
				end
				function S273_:AddOption(S292_arg0)
					S292_arg0 = S292_arg0 or "Option"
					local S293_ = Instance.new("Frame");
					local S294_ = Instance.new("UICorner");
					local S295_ = Instance.new("TextButton");
					local S296_ = Instance.new("TextLabel")
					local S297_ = Instance.new("Frame");
					local S298_ = Instance.new("UIStroke");
					local S299_ = Instance.new("UICorner");
					
					S293_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					S293_.BackgroundTransparency = 0.999
					S293_.BorderColor3 = Color3.fromRGB(0, 0, 0)
					S293_.BorderSizePixel = 0
					S293_.LayoutOrder = S285_
					S293_.Size = UDim2.new(1, 0, 0, 30)
					S293_.Name = "Option"
					S293_.Parent = S283_
				
					S294_.CornerRadius = UDim.new(0, 3)
					S294_.Parent = S293_
				
					S295_.Font = Enum.Font.GothamBold
					S295_.Text = ""
					S295_.TextColor3 = Color3.fromRGB(255, 255, 255)
					S295_.TextSize = 13
					S295_.TextXAlignment = Enum.TextXAlignment.Left
					S295_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					S295_.BackgroundTransparency = 0.9990000128746033
					S295_.BorderColor3 = Color3.fromRGB(0, 0, 0)
					S295_.BorderSizePixel = 0
					S295_.Size = UDim2.new(1, 0, 1, 0)
					S295_.Name = "OptionButton"
					S295_.Parent = S293_

					S296_.Font = Enum.Font.GothamBold
					S296_.Text = S292_arg0
					S296_.TextSize = 13
					S296_.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
					S296_.TextXAlignment = Enum.TextXAlignment.Left
					S296_.TextYAlignment = Enum.TextYAlignment.Top
					S296_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					S296_.BackgroundTransparency = 0.9990000128746033
					S296_.BorderColor3 = Color3.fromRGB(0, 0, 0)
					S296_.BorderSizePixel = 0
					S296_.Position = UDim2.new(0, 8, 0, 8)
					S296_.Size = UDim2.new(1, -100, 0, 13)
					S296_.Name = "OptionText"
					S296_.Parent = S293_
	
					S297_.AnchorPoint = Vector2.new(0, 0.5)
					S297_.BackgroundColor3 = S92_.Color
					S297_.BorderColor3 = Color3.fromRGB(0, 0, 0)
					S297_.BorderSizePixel = 0
					S297_.Position = UDim2.new(0, 2, 0.5, 0)
					S297_.Size = UDim2.new(0, 0, 0, 0)
					S297_.Name = "ChooseFrame"
					S297_.Parent = S293_
				
					S298_.Color = S92_.Color
					S298_.Thickness = 1.600000023841858
					S298_.Transparency = 0.999
					S298_.Parent = S297_
				
					S299_.Parent = S297_
					
					S295_.Activated:Connect(function()
						CircleClick(S295_, S3_:GetMouse().X, S3_:GetMouse().Y) 
						if S272_.Multi then
							if S293_.BackgroundTransparency > 0.95 then
								table.insert(S273_.Value, S292_arg0)
								S273_:Set(S273_.Value)
							else
								for S301_forvar0, S302_forvar1 in pairs(S273_.Value) do
									if S302_forvar1 == S292_arg0 then
										table.remove(S273_.Value, S301_forvar0)
										break
									end
								end
								S273_:Set(S273_.Value)
							end
						else
							S273_.Value = {
								S292_arg0
							}
							S273_:Set(S273_.Value)
						end
					end)
					local S300_ = 0
					for S303_forvar0, S304_forvar1 in S283_:GetChildren() do
						if S304_forvar1.Name ~= "UIListLayout" then
							S300_ = S300_ + 3 + S304_forvar1.Size.Y.Offset
						end
					end
					S283_.CanvasSize = UDim2.new(0, 0, 0, S300_)
					S285_ = S285_ + 1
				end
				function S273_:Refresh(S305_arg0, S306_arg1)
					S305_arg0 = S305_arg0 or {}
					S306_arg1 = S306_arg1 or {}
					S273_:Clear()
					for S307_forvar0, S308_forvar1 in pairs(S305_arg0) do
						S273_:AddOption(S308_forvar1)
						wait()
					end
					S273_.Options = S305_arg0
					S273_:Set(S306_arg1)
				end
				S273_:Refresh(S273_.Options, S273_.Value)
				S185_ = S185_ + 1
				S139_ = S139_ + 1
				return S273_
			end
			S155_ = S155_ + 1
			return S184_
		end
		S138_ = S138_ + 1
		return S154_
	end
	return S137_
end
return S9_
