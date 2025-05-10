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
    Name = Name or ""
    Content = Content or ""
    Multi = Multi or false
    Options = Options or {}
    Saver = Saver or false
    Callback = Callback or function() end

        if Multi then
    Default = typeof(Default) == "table" and Default or {}
  else
    Default = typeof(Default) == "string" and Default or Options[1] or ""
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
