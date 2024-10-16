local Funcs = {}

local function Checker(Val, Val1, Val2)
  return type(Val) == Val1 and Val or Val2
end

function Funcs:Toggle(Tab, Name, Default, Func)
  Name = Checker(Name, "string", tostring(Name))
  Default = Checker(Default, "boolean", false)
  Func = Checker(Func, "function", function() end)

  return Tab:AddToggle(Name, {Title = Name, Default = Default, Callback = Func})
end

function Funcs:Dropdown(Tab, Name, Values, Multi, Default, Func)
  Name = Checker(Name, "string", tostring(Name))
  Values = Checker(Values, "table", {""})
  Multi = Checker(Multi, "boolean", false)
  Func = Checker(Func, "function", function() end)

  return Tab:AddDropdown(Name, {Title = Name, Values = Values, Multi = Multi, Default = Default or "", Callback = Func})
end

function Funcs:MultiDropdown(Tab, Name, Description, Values, Default)
  Name = Checker(Name, "string", tostring(Name))
  Description = Checker(Description, "string", tostring(Description))
  Values = Checker(Values, "table", {""})
  Default = Checker(Default, "table", {""})

  return Tab:AddDropdown(Name, {Title = Name, Description = Description, Values = Values, Multi = true, Default = Default})
end

function Funcs:Slider(Tab, Name, Description, Default, Min, Max, Rounding, Func)
  Name = Checker(Name, "string", tostring(Name))
  Description = Checker(Description, "string", tostring(Description))
  Default = tonumber(Default) or 0
  Min = tonumber(Min) or 0
  Max = tonumber(Max) or 0
  Rounding = tonumber(Rounding) or 0
  Func = Checker(Func, "function", function() end)

  return Tab:AddSlider(Name, {Title = Name, Description = Description, Default = Default, Min = Min, Max = Max, Rounding = Rounding, Callback = Func})
end

function Funcs:Button(Tab, Name, Description, Func)
  Name = Checker(Name, "string", tostring(Name))
  Description = Checker(Description, "string", tostring(Description))
  Func = Checker(Func, "function", function() end)

  return Tab:AddButton({Title = Name, Description = Description, Callback = Func})
end

function Funcs:Textbox(Tab, Name, Default, Placeholder, Numeric, Func)
  Name = Checker(Name, "string", tostring(Name))
  Default = Checker(Default, "string", "Default")
  Placeholder = Checker(Placeholder, "string", "Placeholder")
  Numeric = Checker(Numeric, "boolean", false)
  Func = Checker(Func, "function", function() end)

  return Tab:AddInput(Name, {Title = Name, Default = Default, Placeholder = Placeholder, Numeric = Numeric, Callback = Func})
end

return Funcs
