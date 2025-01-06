pcall(function()
  repeat task.wait() until getgenv().dtc.memmy

  if not memorystats then
    memorystats = {cache = function(_) end,restore = function(_) end,freezegc = function() end,thawgc = function() end,}
  end
  
  for _, v in pairs({
    "Internal", "HttpCache", "Instances", "Signals", "Script", 
    "PhysicsCollision", "PhysicsParts", "GraphicsSolidModels", 
    "GraphicsMeshParts", "GraphicsParticles", "GraphicsParts", 
    "GraphicsSpatialHash", "GraphicsTerrain", "GraphicsTexture", 
    "GraphicsTextureCharacter", "Sounds", "StreamingSounds", 
    "TerrainVoxels", "Gui", "Animation", "Navigation", "GeometryCSG"
  }) do
    memorystats.cache(v)
  end
  
  memorystats.freezegc()
  
  for _, v in pairs({
    "Internal", "HttpCache", "Instances", "Signals", "Script", 
    "PhysicsCollision", "PhysicsParts", "GraphicsSolidModels", 
    "GraphicsMeshParts", "GraphicsParticles", "GraphicsParts", 
    "GraphicsSpatialHash", "GraphicsTerrain", "GraphicsTexture", 
    "GraphicsTextureCharacter", "Sounds", "StreamingSounds", 
    "TerrainVoxels", "Gui", "Animation", "Navigation", "GeometryCSG"
  }) do
    memorystats.restore(v)
  end
  
  memorystats.thawgc()
end)

local HttpService = game:GetService("HttpService")
local URL = game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Nebula/JSON.json")
local Decoded = HttpService:JSONDecode(URL)

local pautoexe = clonefunction(dtc.pushautoexec)

if not Decoded.Keysystem then
  clonefunction(dtc.pushautoexec)()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Nebula/Nebula_UI.lua"))()
else
  local Config = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Library/Key%20System/Platoboost_API.lua"))()
  Config.service = 11
  Config.secret = "NONE"
  Config.useNonce = false

  if isfile("Nebula_Key.txt") and Config:Verify_Key(readfile("Nebula_Key.txt")) then
    clonefunction(dtc.pushautoexec)()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Nebula/Nebula_UI.lua"))()
  else
    local KeySystemUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/KeySystemV1"))()

    local _Ket = KeySystemUI:AddWindow("Nebula | Key System")
  
    local _Main = _Ket:AddTab("Main", "0")
  
    local function AddSpace(args)
      return "Status : " .. args
    end
  
    local StatusKey = _Main:AddLabel(AddSpace("Waitting..."))
  
    StatusKey:Set(AddSpace("Nebula"))
  
    _Main:AddTextbox("Input Key", "", false ,function(Value)
      _G.Key_Input = Value
    end)
  
    _Main:AddButton("Submit Key", function()
      if _G.Key_Input == "" or _G.Key_Input == nil then
        StatusKey:Set(AddSpace("Key Is Not Vaild!"))
        wait(1)
        StatusKey:Set(AddSpace("Nebula"))
      else
        if Config:Verify_Key(_G.Key_Input) then
          StatusKey:Set(AddSpace("Key Vaild!"))
          writefile("Nebula_Key.txt", _G.Key_Input)
          task.wait(2)
          game.CoreGui:FindFirstChild("SpeedLibKey"):Destroy()
          task.wait(1)
          loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Nebula/Nebula_UI.lua"))()
          pautoexe()
        else
          StatusKey:Set(AddSpace("Key Is Not Vaild!"))
          wait(1)
          StatusKey:Set(AddSpace("Nebula"))
        end
      end
    end)
  
    _Main:AddButton("Get Key", function()
      local Succ = pcall(function()
        Config:CopyKey_Link()
      end)
      if Succ then
        StatusKey:Set(AddSpace("Copied Key Link"))
      end
    end)
  end
end
