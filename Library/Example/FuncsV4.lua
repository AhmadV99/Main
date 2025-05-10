local FuncsV4 = {} do
  function FuncsV4:Toggle(Tab, Name, Content, Default, Saver, Callback)
    Name = Name or ""
    Content = Content or ""
    Default = Default or false
    Saver = Saver or false
    Callback = Callback or function() end

    return Tab:AddToggle({
      Title = Name,
      Content = Content,
      Default = Default,
      Callback = Callback,
      Saver = Saver,
    })
  end

  function FuncsV4:Button(Tab, Name, Content, Callback)
    Name = Name or ""
    Content = Content or ""
    Callback = Callback or function() end

    return Tab:AddButton({
      Title = Name,
      Content = Content,
      Callback = Callback
    })
  end
   
  function FuncsV4:Dropdown(Tab, Name, Content, Multi, Options, Default, Saver, Callback)
    Name = typeof(Name) == "string" and Name or ""
    Content = typeof(Content) == "string" and Content or ""
    Multi = typeof(Multi) == "boolean" and Multi or false
    Saver = typeof(Saver) == "boolean" and Saver or false
    Callback = typeof(Callback) == "function" and Callback or function() end
    
    if typeof(Options) == "string" then
      Options = { Options }
 
    elseif typeof(Options) == "table" then
      local Fixed = {}

      for i, v in pairs(Options) do
        if typeof(i) == "string" and typeof(v) == "string" then
          table.insert(Fixed, v)
        elseif typeof(i) == "number" and typeof(v) == "string" then
          table.insert(Fixed, v)
        end
      end

      Options = fixed
    else
      Options = {}
    end

    if Multi then
      if typeof(Default) == "string" then
        Default = { Default }
      elseif typeof(Default) ~= "table" then
        Default = {}
      end
    else
      if typeof(Default) ~= "string" then
        Default = Options[1] or ""
      end
    end

    return Tab:AddDropdown({
      Title = Name,
      Content = Content,
      Multi = Multi,
      Options = Options,
      Default = Default,
      Callback = Callback,
      Saver = Saver
    })
  end

  function FuncsV4:Textbox(Tab, Name, Content, Default, Saver, Callback)
    Name = Name or ""
    Content = Content or ""
    Default = Default or ""
    Saver = Saver or false
    Callback = Callback or function() end
  
    return Tab:AddInput({
      Title = Name,
      Content = Content,
      Default = Default,
      Callback = Callback,
      Saver = Saver
    })
  end

  function FuncsV4:Slider(Tab, Name, Content, Min, Max, Increment, Default, AutoUpdate, Saver, Callback)
    Name = Name or ""
    Content = Content or ""
    Increment = Increment or 0.1
    Min = Min or 0.1
    Max = Max or 1
    Default = Default or 0
    Saver = Saver or false
    AutoUpdate = AutoUpdate or false
    Callback = Callback or function() end
  
    return Tab:AddSlider({
      Title = Name,
      Content = Content,
      Increment = Increment,
      Min = Min,
      Max = Max,
      Default = Default,
      AutoUpdate = AutoUpdate,
      Callback = Callback,
      Saver = Saver
    })
  end
end

return FuncsV4
