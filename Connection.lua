local type = type
local assert = assert

local task_spawn = task.spawn

local Connection = {}
Connection.__index = Connection

local ConnectionObject = {}
ConnectionObject.__index = ConnectionObject

function ConnectionObject:Disconnect()
  local Parent = self._Parent
  if not Parent then return end

  local List = Parent._Callbacks
  local Index = self._Index

  if Index and List[Index] == self then
    List[Index] = false
  end

  self._Parent = nil
  self._Callback = nil
  self._Index = nil
end

function Connection.new()
  return setmetatable({
    _Callbacks = {},
    _Count = 0
  }, Connection)
end

function Connection:Connect(Callback)
  if type(Callback) ~= "function" then return end

  local Index = self._Count + 1
  self._Count = Index

  local Obj = setmetatable({
    _Callback = Callback,
    _Parent = self,
    _Index = Index
  }, ConnectionObject)

  self._Callbacks[Index] = Obj

  return Obj
end

function Connection:Fire(...)
  local List = self._Callbacks

  for i = 1, self._Count do
    local Object = List[i]
    if Object then
      task_spawn(Object._Callback, ...)
    end
  end
end

function Connection:Clean()
  local List = self._Callbacks
  local New = {}
  local n = 0

  for i = 1, self._Count do
    local Object = List[i]

    if Object then
      n = n + 1
      Object._Index = n
      New[n] = Object
    end
  end

  self._Callbacks = New
  self._Count = n
end

function Connection.Create(Names)
  assert(type(Names) == "table", "Expected table")

  local Events = {}

  for i = 1, #Names do
    Events[Names[i]] = Connection.new()
  end

  return Events
end

return Connection
