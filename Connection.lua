local type = type
local assert = assert

local table_remove = table.remove
local table_insert = table.insert

local setmetatable = setmetatable

local task_spawn = task.spawn

local Connection = {}
Connection.__index = Connection

function Connection.new()
  local New = setmetatable({}, Connection)
  New._Callbacks = {}

  return New
end

function Connection.FireCallback(func, ...)
  return task_spawn(func, ...)
end

function Connection:Connect(Callback)
  if type(Callback) ~= "function" then return end

  local Connection_Object = {}

  Connection_Object._Callback = Callback
  Connection_Object._Parent = self

  setmetatable(Connection_Object, { __index = {
    Disconnect = function(self)
      local Callbacks = self._Parent._Callbacks

      for i = #Callbacks, 1, -1 do
        if Callbacks[i] == self._Callback then
          table_remove(Callbacks, i)
          break
        end
      end

      self._Callback = nil
      self._Parent = nil
    end
  }})

  table_insert(self._Callbacks, Callback)

  return Connection_Object
end

function Connection:Fire(...)
  for _, func in ipairs(self._Callbacks) do
    Connection.FireCallback(func, ...)
  end
end

function Connection.Create(Names)
  assert(type(Names) == "table", "Expected table of names")

  local Events = {}

  for _, Name in ipairs(Names) do
    Events[Name] = Connection.new()
  end

  return Events
end

return Connection
