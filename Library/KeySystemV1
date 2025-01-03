do
    local ui = game.CoreGui:FindFirstChild("SpeedLibKey")
    if ui then
      ui:Destroy()
    end
  end
  
         
  local library = {}
  
  function library:AddWindow(text,keybind)
      local bind = keybind or Enum.KeyCode.RightControl
      local ff = false
      local currenttab = ""
  
      local DoctorShiba = Instance.new("ScreenGui")
      DoctorShiba.Name = "SpeedLibKey"
      DoctorShiba.Parent = game.CoreGui
      DoctorShiba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  
      local Main = Instance.new("Frame")
      Main.Name = "Main"
      Main.Parent = DoctorShiba
      Main.AnchorPoint = Vector2.new(0.5, 0.5)
      Main.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
      Main.BackgroundTransparency = 0
      Main.BorderSizePixel = 0
      Main.ClipsDescendants = true
      Main.Position = UDim2.new(0.499526083, 0, 0.499241292, 0)
      Main.Size = UDim2.new(0, 475, 0, 205)
      
      local MainCorner = Instance.new("UICorner")
      MainCorner.Name = "MainCorner"
      MainCorner.CornerRadius = UDim.new(0, 9)
      MainCorner.Parent = Main
      
      local DropdownStroke = Instance.new("UIStroke")
  
      DropdownStroke.Name = "UIStroke"
      DropdownStroke.Parent = Main
      DropdownStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
      DropdownStroke.Color = Color3.fromRGB(245, 245, 245)
      DropdownStroke.LineJoinMode = Enum.LineJoinMode.Round
      DropdownStroke.Thickness = 0.7
      DropdownStroke.Transparency = 0.10
      DropdownStroke.Enabled = true
      DropdownStroke.Archivable = true
  
      local Top = Instance.new("Frame")
      Top.Name = "Top"
      Top.Parent = Main
      Top.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
      Top.BackgroundTransparency = 1.000
      Top.BorderSizePixel = 0
      Top.Size = UDim2.new(0, 0, 0, 0)
      
      local TopCorner = Instance.new("UICorner")
      TopCorner.Name = "MainCorner"
      TopCorner.CornerRadius = UDim.new(0, 9)
      TopCorner.Parent = Top
  
      local Page = Instance.new("Frame")
      Page.Name = "Page"
      Page.Parent = Main
      Page.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
      Page.BackgroundTransparency = 0
      Page.BorderSizePixel = 0
      Page.Size = UDim2.new(0, 0, 0, 0)
      
      local PageCorner = Instance.new("UICorner")
      PageCorner.Name = "MainCorner"
      PageCorner.CornerRadius = UDim.new(0, 9)
      PageCorner.Parent = Page
  
      local ScrollPage = Instance.new("ScrollingFrame")
      ScrollPage.Name = "ScrollPage"
      ScrollPage.Parent = Page
      ScrollPage.Active = true
      ScrollPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ScrollPage.BackgroundTransparency = 1.000
      ScrollPage.BorderSizePixel = 0
      ScrollPage.Position = UDim2.new(0, 0, 0.086, 0)
      ScrollPage.Size = UDim2.new(0, 125, 0, 290)
      ScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
      ScrollPage.ScrollBarThickness = 0
      local PageList = Instance.new("UIListLayout")
      PageList.Name = "PageList"
      PageList.Parent = ScrollPage
      PageList.SortOrder = Enum.SortOrder.LayoutOrder
      PageList.Padding = UDim.new(0, 7)
  
      local PagePadding = Instance.new("UIPadding")
      PagePadding.Name = "PagePadding"
      PagePadding.Parent = ScrollPage
      PagePadding.PaddingTop = UDim.new(0, 5)
      PagePadding.PaddingLeft = UDim.new(0, 28)
      
      local ScrollPageCorner = Instance.new("UICorner")
      ScrollPageCorner.Name = "ScrollPageCorner"
      ScrollPageCorner.CornerRadius = UDim.new(0, 9)
      ScrollPageCorner.Parent = ScrollPage
  
      local TabFolder = Instance.new("Folder")
      TabFolder.Name = "TabFolder"
      TabFolder.Parent = Main
  
  
      local uihide = false
  
      game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == bind then
          if uihide == false then
            uihide = true
            Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
          else
            uihide = false
            Main:TweenSize(UDim2.new(0, 600, 0, 350),"Out","Quad",0.2,true)
          end
        end
      end)
  
      local uitab = {}
  
      function uitab:AddTab(text,image)
          local Image = image or 6023426915
  
          local PageButton = Instance.new("TextButton")
          PageButton.Name = "PageButton"
          PageButton.Parent = ScrollPage
          PageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          PageButton.BackgroundTransparency = 1.000
          PageButton.BorderSizePixel = 0
          PageButton.Position = UDim2.new(0.100, 0, 0.029787235, 0)
          PageButton.Size = UDim2.new(0, 0, 0, 0)
          PageButton.AutoButtonColor = false
          PageButton.Font = Enum.Font.GothamSemibold
          PageButton.Text = text
          PageButton.TextColor3 = Color3.fromRGB(225, 225, 225)
          PageButton.TextSize = 11.000
          PageButton.TextXAlignment = Enum.TextXAlignment.Left
          
          local PageImage = Instance.new("ImageLabel")
          PageImage.Name = "PageImage"
          PageImage.Parent = PageButton
          PageImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          PageImage.BackgroundTransparency = 1.000
          PageImage.Position = UDim2.new(0, -20, 0, 3)
          PageImage.Size = UDim2.new(0, 0, 0, 0)
          PageImage.Image = "rbxassetid://"..tostring(Image)
  
          local MainTab = Instance.new("Frame")
          MainTab.Name = "MainTab"
          MainTab.Parent = TabFolder
          MainTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
          MainTab.BorderSizePixel = 0
          MainTab.Position = UDim2.new(0, 0, 0, -2)
          MainTab.Size = UDim2.new(0, 475, 0, 205)
          MainTab.Visible = false
          
          local MainTabCorner = Instance.new("UICorner")
          MainTabCorner.Name = "MainTabCorner"
          MainTabCorner.CornerRadius = UDim.new(0, 9)
          MainTabCorner.Parent = MainTab
  
          local ScrollTab = Instance.new("ScrollingFrame")
          ScrollTab.Name = "ScrollTab"
          ScrollTab.Parent = MainTab
          ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          ScrollTab.BackgroundTransparency = 1.000
          ScrollTab.BorderSizePixel = 0
          ScrollTab.Position = UDim2.new(0, 0, 0.057, 0)
          ScrollTab.Size = UDim2.new(0, 475, 0, 330)
          ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
          ScrollTab.ScrollBarThickness = 3
  
          local TabList = Instance.new("UIListLayout")
          TabList.Name = "TabList"
          TabList.Parent = ScrollTab
          TabList.SortOrder = Enum.SortOrder.LayoutOrder
          TabList.Padding = UDim.new(0, 5)
  
          local TabPadding = Instance.new("UIPadding")
          TabPadding.Name = "TabPadding"
          TabPadding.Parent = ScrollTab
          TabPadding.PaddingLeft = UDim.new(0, 10)
          TabPadding.PaddingTop = UDim.new(0, 10)
  
          PageButton.MouseButton1Click:Connect(function()
              currenttab = MainTab.Name
              for i,v in next, TabFolder:GetChildren() do 
                  if v.Name == "MainTab" then
                      v.Visible = false
                  end
              end
              MainTab.Visible = true
  
              for i,v in next, ScrollPage:GetChildren() do 
                  if v:IsA("TextButton") then
                      game:GetService("TweenService"):Create(
                          v,
                          TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(225, 225, 225)}
                      ):Play()
                  end
                  game:GetService("TweenService"):Create(
                      PageButton,
                      TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                      {TextColor3 = Color3.fromRGB(190, 190, 190)}
                  ):Play()
              end
          end)
  
          if ff == false then
              game:GetService("TweenService"):Create(
                  PageButton,
                  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                  {TextColor3 = Color3.fromRGB(190, 190, 190)}
              ):Play()
              for i,v in next, TabFolder:GetChildren() do 
                  if v.Name == "MainTab" then
                      v.Visible = false
                  end
                  MainTab.Visible = true
              end
              ff = true
          end
  
          game:GetService("RunService").Stepped:Connect(function()
              pcall(function()
                  ScrollPage.CanvasSize = UDim2.new(0,0,0,PageList.AbsoluteContentSize.Y + 10)
                  ScrollTab.CanvasSize = UDim2.new(0,0,0,TabList.AbsoluteContentSize.Y + 30)
              end)
          end)
          
          local main = {}
          
          function main:AddButton(text, callback)
            local Button = Instance.new("TextButton")
            Button.Name = "Button"
            Button.Parent = ScrollTab
            Button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            Button.BackgroundTransparency = 0.1
            Button.BorderSizePixel = 0
            Button.Size = UDim2.new(0, 455, 0, 30)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.Gotham
            Button.Text = text
            Button.TextColor3 = Color3.fromRGB(225, 225, 225)
            Button.TextSize = 11
            Button.TextWrapped = true
        
            local ButtonCorner = Instance.new("UICorner")
            ButtonCorner.CornerRadius = UDim.new(0, 5)
            ButtonCorner.Parent = Button
        
            local ButtonStroke = Instance.new("UIStroke")
            ButtonStroke.Parent = Button
            ButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            ButtonStroke.Color = Color3.fromRGB(245, 245, 245)
            ButtonStroke.LineJoinMode = Enum.LineJoinMode.Round
            ButtonStroke.Thickness = 0.7
            ButtonStroke.Transparency = 0.1
        
            local hoverTween = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            
            Button.MouseEnter:Connect(function()
              game:GetService("TweenService"):Create(Button, hoverTween, {BackgroundTransparency = 0}):Play()
              game:GetService("TweenService"):Create(ButtonStroke, hoverTween, {Transparency = 0}):Play()
            end)
        
            Button.MouseLeave:Connect(function()
              game:GetService("TweenService"):Create(Button, hoverTween, {BackgroundTransparency = 0.1}):Play()
              game:GetService("TweenService"):Create(ButtonStroke, hoverTween, {Transparency = 0.1}):Play()
            end)
        
            Button.Activated:Connect(function()
              game:GetService("TweenService"):Create(Button, hoverTween, {BackgroundColor3 = Color3.fromRGB(245, 245, 245)}):Play()
              callback()
              wait(0.1)
              game:GetService("TweenService"):Create(Button, hoverTween, {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
          end)
        end
        
  
        function main:AddTextbox(text,holder,disappear,callback)
  
            local Textboxx = Instance.new("Frame")
            local TextboxxCorner = Instance.new("UICorner")
            local TextboxTitle = Instance.new("TextLabel")
            local TextboxTitle2 = Instance.new("TextLabel")
            local Textbox = Instance.new("TextBox")
            local TextboxCorner = Instance.new("UICorner")
  
            Textboxx.Name = "Textboxx"
            Textboxx.Parent = ScrollTab
            Textboxx.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            Textboxx.Size = UDim2.new(0, 455, 0, 45)
  
            TextboxxCorner.CornerRadius = UDim.new(0, 5)
            TextboxxCorner.Name = "TextboxxCorner"
            TextboxxCorner.Parent = Textboxx
            
            local DropdownStroke = Instance.new("UIStroke")
  
            DropdownStroke.Name = "UIStroke"
            DropdownStroke.Parent = Textboxx
            DropdownStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            DropdownStroke.Color = Color3.fromRGB(245, 245, 245)
            DropdownStroke.LineJoinMode = Enum.LineJoinMode.Round
            DropdownStroke.Thickness = 0.7
            DropdownStroke.Transparency = 0.10
            DropdownStroke.Enabled = true
            DropdownStroke.Archivable = true
  
            TextboxTitle.Name = "TextboxTitle"
            TextboxTitle.Parent = Textboxx
            TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextboxTitle.BackgroundTransparency = 1.000
            TextboxTitle.Position = UDim2.new(0, 15, 0, 0)
            TextboxTitle.Size = UDim2.new(0, 300, 0, 30)
            TextboxTitle.Font = Enum.Font.Gotham
            TextboxTitle.Text = text
            TextboxTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
            TextboxTitle.TextSize = 14.000
            TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left
  
            TextboxTitle2.Name = "TextboxTitle2"
            TextboxTitle2.Parent = Textboxx
            TextboxTitle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextboxTitle2.BackgroundTransparency = 1.000
            TextboxTitle2.Position = UDim2.new(0, 12, 0, 17)
            TextboxTitle2.Size = UDim2.new(0, 300, 0, 30)
            TextboxTitle2.Font = Enum.Font.Gotham
            TextboxTitle2.Text = "TIP: Press get key and paste the, ".."\n".."link at your browser for get key"
            TextboxTitle2.TextColor3 = Color3.fromRGB(225, 225, 225)
            TextboxTitle2.TextSize = 9.000
            TextboxTitle2.TextXAlignment = Enum.TextXAlignment.Left
  
            Textbox.Name = "Textbox"
            Textbox.Parent = Textboxx
            Textbox.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            Textbox.Position = UDim2.new(0, 200, 0, 5)
            Textbox.Size = UDim2.new(0, 250, 0, 35)
            Textbox.Font = Enum.Font.Gotham
            Textbox.PlaceholderText = "Enter Your Key Here.."
            Textbox.Text = holder
            Textbox.TextColor3 = Color3.fromRGB(225, 225, 225)
            Textbox.TextSize = 11.000
            Textbox.TextWrapped = true
  
            Textbox.FocusLost:Connect(function()
                if #Textbox.Text > 0 then
                    callback(Textbox.Text)
                end
            end)
  
            TextboxCorner.Name = "TextboxCorner"
            TextboxCorner.CornerRadius = UDim.new(0, 5)
            TextboxCorner.Parent = Textbox
        end
        function main:AddLine()
            local Line = Instance.new("Frame")
            local Linee = Instance.new("Frame")
  
            Line.Name = "Line"
            Line.Parent = ScrollTab
            Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Line.BackgroundTransparency = 1.000
            Line.ClipsDescendants = true
            Line.Size = UDim2.new(0, 455, 0, 20)
  
            Linee.Name = "Linee"
            Linee.Parent = Line
            Linee.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            Linee.BorderSizePixel = 0
            Linee.Position = UDim2.new(0, 0, 0, 10)
            Linee.Size = UDim2.new(0, 455, 0, 2)
        end
        function main:AddLabel(text)
            local Label = Instance.new("TextLabel")
            local PaddingLabel = Instance.new("UIPadding")
            local labell = {}
    
            Label.Name = "Label"
            Label.Parent = ScrollTab
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1.000
            Label.Size = UDim2.new(0, 455, 0, 20)
            Label.Font = Enum.Font.Gotham
            Label.TextColor3 = Color3.fromRGB(225, 225, 225)
            Label.TextSize = 11.000
            Label.Text = text
            Label.TextXAlignment = Enum.TextXAlignment.Left
  
            PaddingLabel.PaddingLeft = UDim.new(0,10)
            PaddingLabel.Parent = Label
            PaddingLabel.Name = "PaddingLabel"
            
            local MainCorner = Instance.new("UICorner")
            MainCorner.Name = "MainCorner"
            MainCorner.CornerRadius = UDim.new(0, 5)
            MainCorner.Parent = Label
            
            local DropdownStroke = Instance.new("UIStroke")
  
            DropdownStroke.Name = "UIStroke"
            DropdownStroke.Parent = Label
            DropdownStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            DropdownStroke.Color = Color3.fromRGB(225,225,225)
            DropdownStroke.LineJoinMode = Enum.LineJoinMode.Round
            DropdownStroke.Thickness = 0.6
            DropdownStroke.Transparency = 0.8
            DropdownStroke.Enabled = true
            DropdownStroke.Archivable = true
    
            function labell:Set(newtext)
                Label.Text = newtext
            end
  
            return labell
        end
        
        return main
    end
    return uitab
  end
  return library
