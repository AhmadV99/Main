local FuncsV3 = {}
local SaveConfig = _SaveConfig  

function FuncsV3:SetTable(Path)
  SaveConfig = Path
end

local function Checker(Val, Val1, Val2)
  return type(Val) == Val1 and Val or Val2
end

function FuncsV3:Toggle(Tab, Name, Content, Default, Funcs)
  Name = Checker(Name, "string", tostring(Name))
  Content = Checker(Content, "string", tostring(Content))
  Funcs = Checker(Funcs, "function", function() end)

  if Default == "Save" then
    Default = SaveConfig[Name] or Checker(false, "boolean", false)
  else
    Default = Checker(Default, "boolean", false)
  end

  return Tab:AddToggle({
    ["Title"] = Name,
    ["Content"] = Content,
    ["Default"] = Default,
    ["Callback"] = Funcs
  })
end

function FuncsV3:Button(Tab, Name, Content, Funcs)
  Name = Checker(Name, "string", tostring(Name))
  Content = Checker(Content, "string", tostring(Content))
  Funcs = Checker(Funcs, "function", function() end)

  return Tab:AddButton({
    ["Title"] = Name,
    ["Content"] = Content,
    ["Icon"] = "rbxassetid://16932740082",
    ["Callback"] = Funcs
  })
end

function FuncsV3:Dropdown(Tab, Name, Content, Multi, Options, Default, Funcs)
  Name = Checker(Name, "string", tostring(Name))
  Content = Checker(Content, "string", tostring(Content))
  Multi = Checker(Multi, "boolean", false)
  Options = Checker(Options, "table", {""})
  Funcs = Checker(Funcs, "function", function() end)

  if Default == "Save" then
    Default = SaveConfig[Name] or Checker(Default, "table", {""})
  else
    Default = Checker(Default, "boolean", false)
  end

  return Tab:AddDropdown({
    ["Title"] = Name,
    ["Content"] = Content,
    ["Multi"] = Multi,
    ["Options"] = Options,
    ["Default"] = Default,
    ["Callback"] = Funcs
  })
end

function FuncsV3:Textbox(Tab, Name, Content)
  Name = Checker(Name, "string", tostring(Name))
  Content = Checker(Content, "string", tostring(Content))
  Funcs = Checker(Funcs, "function", function() end)

  return Tab:AddInput({
    ["Title"] = Name,
    ["Content"] = Content,
    ["Callback"] = Funcs
  })
end

return FuncsV3
