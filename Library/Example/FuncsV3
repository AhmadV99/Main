local FuncsV3 = {}
local SaveConfig = nil  

local function Checker(Val, Val1, Val2)
  return typeof(Val) == Val1 and Val or Val2
end

function FuncsV3:SetTable(path)
  SaveConfig = path
end

function FuncsV3:Toggle(Tab, Name, Content, Default, Callback)
  Name = Checker(Name, "string", tostring(Name))
  Content = Checker(Content, "string", tostring(Content))
  Callback = Checker(Callback, "function", function() end)

  local _default = Default == "Save" 
  and Checker(SaveConfig[Name], "boolean", false)
  or Checker(Default, "boolean", false)

  return Tab:AddToggle({
    Title = Name,
    Content = Content,
    Default = _default,
    Callback = Callback
  })
end

function FuncsV3:Button(Tab, Name, Content, Callback)
  Name = Checker(Name, "string", tostring(Name))
  Content = Checker(Content, "string", tostring(Content))
  Callback = Checker(Callback, "function", function() end)

  return Tab:AddButton({
    Title = Name,
    Content = Content,
    Icon = "rbxassetid://16932740082",
    Callback = Callback
  })
end

function FuncsV3:Dropdown(Tab, Name, Content, multi, options, Default, Callback)
  Name = Checker(Name, "string", tostring(Name))
  Content = Checker(Content, "string", tostring(Content))
  multi = Checker(multi, "boolean", false)
  options = Checker(options, "table", { "" })
  Callback = Checker(Callback, "function", function() end)

  local _default

  if Default == "Save" then
    if type(SaveConfig[Name]) == "table" then
      _default = SaveConfig[Name] or {""}
    else
      _default = {SaveConfig[Name] or ""}
    end
  else
    if type(SaveConfig[Name] or Default) == "table" then
      _default = SaveConfig[Name] or Default
    else
      _default = {SaveConfig[Name] or Default}
    end
  end

  return Tab:AddDropdown({
    Title = Name,
    Content = Content,
    Multi = multi,
    Options = options,
    Default = _default,
    Callback = Callback
  })
end

function FuncsV3:Textbox(Tab, Name, Content, Default, Callback)
  Name = Checker(Name, "string", tostring(Name))
  Content = Checker(Content, "string", tostring(Content))
  Callback = Checker(Callback, "function", function() end)

  local _default = Default == "Save" 
  and Checker(SaveConfig[Name], "string", "")
  or Checker(Default, "string", "")

  return Tab:AddInput({
    Title = Name,
    Content = Content,
    Default = _default,
    Callback = Callback
  })
end

return FuncsV3
