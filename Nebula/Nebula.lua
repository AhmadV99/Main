local Decoded = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Nebula/JSON.json"))

local function RunExecute(v)
  return loadstring(v)()
end

if not Decoded.Keysystem then
  dtc.pushautoexec()
  RunExecute(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Nebula/Nebula_UI.lua"))
else
  local Config = RunExecute(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/Key%20System/Platoboost_API.lua"))
  Config.service = 11
  Config.secret = "NONE"
  Config.useNonce = false

  if isfile("Nebula_Key.txt") and Config:Verify_Key(readfile("Nebula_Key.txt")) then
    dtc.pushautoexec()
    RunExecute(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Nebula/Nebula_UI.lua"))
  else
    local UI = {}
    
    UI["1"] = Instance.new("ScreenGui", (gethui() or cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")));
    UI["1"]["Name"] = [[NEBULA | KEY]];
    
    UI["2"] = Instance.new("Frame", UI["1"]);
    UI["2"]["Active"] = true;
    UI["2"]["BorderSizePixel"] = 0;
    UI["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    UI["2"]["Size"] = UDim2.new(0.48847, 0, 0.48253, 0);
    UI["2"]["Position"] = UDim2.new(0.2551, 0, 0.25762, 0);
    UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    UI["2"]["BackgroundTransparency"] = 0.2;
     
    UI["3"] = Instance.new("TextButton", UI["2"]);
    UI["3"]["BorderSizePixel"] = 0;
    UI["3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    UI["3"]["TextSize"] = 14;
    UI["3"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
    UI["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    UI["3"]["Size"] = UDim2.new(0.3476, 0, 0.22832, 0);
    UI["3"]["BackgroundTransparency"] = 0.6;
    UI["3"]["Name"] = [[CheckKey]];
    UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    UI["3"]["Text"] = [[Check Key]];
    UI["3"]["Position"] = UDim2.new(0.5879, 0, 0.65804, 0);
    UI["3"]["Font"] = Enum.Font.GothamBold
    
    UI["4"] = Instance.new("UICorner", UI["3"]);
    UI["4"]["CornerRadius"] = UDim.new(0, 20);
    
    UI["6"] = Instance.new("TextBox", UI["2"]);
    UI["6"]["Name"] = [[InputKey]];
    UI["6"]["BorderSizePixel"] = 0;
    UI["6"]["TextWrapped"] = true;
    UI["6"]["TextSize"] = 14;
    UI["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    UI["6"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 17);
    UI["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    UI["6"]["PlaceholderText"] = [[Please Input Your Key]];
    UI["6"]["Size"] = UDim2.new(0.86805, 0, 0.185, 0);
    UI["6"]["Position"] = UDim2.new(0.06304, 0, 0.37765, 0);
    UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    UI["6"]["Text"] = [[]];
    UI["6"]["BackgroundTransparency"] = 0.6;
    UI["6"]["Font"] = Enum.Font.GothamBold
    
    UI["7"] = Instance.new("UICorner", UI["6"]);
    UI["7"]["CornerRadius"] = UDim.new(0, 18);
    
    UI["9"] = Instance.new("Frame", UI["2"]);
    UI["9"]["BorderSizePixel"] = 0;
    UI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    UI["9"]["Size"] = UDim2.new(1, 0, -0.00436, 0);
    UI["9"]["Position"] = UDim2.new(-0, 0, 0.19355, 0);
    UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    UI["9"]["BackgroundTransparency"] = 0.5;
    
    UI["a"] = Instance.new("UIGradient", UI["2"]);
    UI["a"]["Rotation"] = 150;
    UI["a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(30, 30, 30)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(17, 17, 17))};
    
    UI["b"] = Instance.new("UICorner", UI["2"]);
    UI["b"]["CornerRadius"] = UDim.new(0, 40);
    
    UI["c"] = Instance.new("TextLabel", UI["2"]);
    UI["c"]["BorderSizePixel"] = 0;
    UI["c"]["TextSize"] = 14;
    UI["c"]["TextTransparency"] = 0.5;
    UI["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    UI["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    UI["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    UI["c"]["BackgroundTransparency"] = 1;
    UI["c"]["Size"] = UDim2.new(0.18574, 0, 0.07463, 0);
    UI["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    UI["c"]["Text"] = [[Nebula | Key System]];
    UI["c"]["Name"] = [[Name]];
    UI["c"]["Position"] = UDim2.new(0.40302, 0, 0.08606, 0);
    UI["c"]["Font"] = Enum.Font.GothamBold
    
    UI["e"] = Instance.new("TextButton", UI["2"]);
    UI["e"]["BorderSizePixel"] = 0;
    UI["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    UI["e"]["TextSize"] = 14;
    UI["e"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
    UI["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    UI["e"]["Size"] = UDim2.new(0.3476, 0, 0.22832, 0);
    UI["e"]["BackgroundTransparency"] = 0.6;
    UI["e"]["Name"] = [[GetKeyButton]];
    UI["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    UI["e"]["Text"] = [[Get Key]];
    UI["e"]["Position"] = UDim2.new(0.0557, 0, 0.66148, 0);
    UI["e"]["Font"] = Enum.Font.GothamBold
    
    UI["f"] = Instance.new("UICorner", UI["e"]);
    UI["f"]["CornerRadius"] = UDim.new(0, 20);
    
    UI["11"] = Instance.new("ImageButton", UI["2"]);
    UI["11"]["BorderSizePixel"] = 0;
    UI["11"]["ScaleType"] = Enum.ScaleType.Crop;
    UI["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    UI["11"]["Image"] = [[rbxassetid://121434421835313]];
    UI["11"]["Size"] = UDim2.new(0.11269, 0, 0.20634, 0);
    UI["11"]["BackgroundTransparency"] = 1;
    UI["11"]["Name"] = [[Discord]];
    UI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    UI["11"]["Position"] = UDim2.new(0.44247, 0, 0.67916, 0);
    
    UI["12"] = Instance.new("UICorner", UI["11"]);
    UI["12"]["CornerRadius"] = UDim.new(0, 18);
    
    UI["13"] = Instance.new("TextLabel", UI["2"]);
    UI["13"]["BorderSizePixel"] = 0;
    UI["13"]["TextSize"] = 14;
    UI["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    UI["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    UI["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    UI["13"]["BackgroundTransparency"] = 1;
    UI["13"]["Size"] = UDim2.new(0.83572, 0, 0.11991, 0);
    UI["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    UI["13"]["Text"] = [[STATUS]];
    UI["13"]["Name"] = [[Status]];
    UI["13"]["Position"] = UDim2.new(0.07597, 0, 0.22952, 0);    
    
    function SetStatus(Text)
      UI["13"].Text = Text
    end
    
    task.spawn(function()
      UI["11"].MouseButton1Click:Connect(function()
        local Succ = pcall(function()
          setclipboard(Decoded.invite_discord)
        end)
      
        if Succ then
          SetStatus("Copied Discord Invite")
          wait(1)
          SetStatus("Status")
        end
      end)
      
      UI["e"].MouseButton1Click:Connect(function()
        local Succ = pcall(function()
          Config:CopyKey_Link()
        end)
      
        if Succ then
          SetStatus("Copied Key Link")
        end
      end)
      
      UI["3"].MouseButton1Click:Connect(function()
        if UI["6"]["Text"] == "" or UI["6"]["Text"] == nil then
          SetStatus("Key Is Not Vaild!")
          wait(1)
          SetStatus("Status")
        else
          if Config:Verify_Key(UI["6"]["Text"]) then
            SetStatus("Key Vaild!")
            pcall(writefile, "Nebula_Key.txt", tostring(UI["6"]["Text"]))
            task.wait(2)
            UI["1"]:Destroy()
            task.wait(1)
            dtc.pushautoexec()
            RunExecute(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Nebula/Nebula_UI.lua"))
          else
            SetStatus("Key Is Not Vaild!")
            wait(1)
            SetStatus("Status")
          end
        end
      end)
    end)

    return UI["1"], require;
  end
end
