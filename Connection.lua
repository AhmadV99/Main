local Connection = {}
Connection.__index = Connection

function Connection.new(Val)
  local New = setmetatable({}, Connection)
  New._Value = Val or false
  New._Callbacks = {}
  return New
end

function Connection:Connect(Callback)
  if type(Callback) ~= "function" then return end

  table.insert(self._Callbacks, Callback)

  return function()
    for i, _Callback in ipairs(self._Callbacks) do
      if _Callback == Callback then
        table.remove(self._Callbacks, i)
        break
      end
    end
  end
end

function Connection:Set(NewVal)
  if self._Value ~= NewVal then
    self._Value = NewVal
    for _, Callback in ipairs(self._Callbacks) do
      Callback(NewVal)
    end
  end
end

function Connection:Get()
  return self._Value
end

function Connection:Fire(...)
  for _, Callback in ipairs(self._Callbacks) do
    Callback(...)
  end
end

function Connection.Create(Names)
  assert(type(Names) == "table", "Expected table of names")

  local Events = {}

  for _, name in ipairs(Names) do
    Events[name] = Connection.new()
  end

  return Events
end

return Connection
