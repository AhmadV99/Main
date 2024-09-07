local SPD = getgenv and getgenv() or {}

SPD.Hooking = function(Type, ...)
  local _hookfunc = hookfunction or hookfunc or (debug and debug.hookfunction) or (function() end)
  local _hookmetamethod = hookmetamethod or (debug and debug.hookmetamethod) or (function() end)

  if Type and type(Type) == "string" then
    if Type == "function" then
      return _hookfunc(...)
    elseif Type == "metamethod" then
      return _hookmetamethod(...)
    end
  end
end

SPD.UpValue = function(Type, ...)
  local _getupvalue = getupvalue or getupvalues or (debug and debug.getupvalue) or (function() end)
  local _setupvalue = setupvalue or setupvalues or (debug and debug.setupvalue) or (function() end)

  if Type and type(Type) == "string" then
    if Type == "get" then
      return _getupvalue(...)
    elseif Type == "set" then
      return _setupvalue(...)
    end
  end
end

SPD.HiddenProperty = function(Type, ...)
  local _gethiddenproperty = gethiddenproperty or (debug and debug.gethiddenproperty) or (function() end)
  local _sethiddenproperty = sethiddenproperty or (debug and debug.sethiddenproperty) or (function() end)

  if Type and type(Type) == "string" then
    if Type == "get" then
      return _gethiddenproperty(...)
    elseif Type == "set" then
      return _sethiddenproperty(...)
    end
  end
end

SPD.FileSystem = function(Type, Type_1, ...)
  local _readfile = readfile or (debug and debug.readfile) or (function() end)
  local _listfiles = listfiles or (debug and debug.listfiles) or (function() end)
  local _writefile = writefile or (debug and debug.writefile) or (function() end)
  local _makefolder = makefolder or (debug and debug.makefolder) or (function() end)
  local _appendfile = appendfile or (debug and debug.appendfile) or (function() end)
  local _isfolder = isfolder or (debug and debug.isfolder) or (function() end)
  local _delfolder = delfolder or (debug and debug.delfolder) or (function() end)
  local _delfile = delfile or (debug and debug.delfile) or (function() end)
  local _loadfile = loadfile or (debug and debug.loadfile) or (function() end)
  local _dofile = dofile or (debug and debug.dofile) or (function() end)

  if Type and type(Type) == "string" then
    if Type == "Folder" then
      if Type_1 == "make" then
        return _makefolder(...)
      elseif Type_1 == "is" then
        return _isfolder(...)
      elseif Type_1 == "del" then
        return _delfolder(...)
      end
    elseif Type == "File" then
      if Type_1 == "read" then
        return _readfile(...)
      elseif Type_1 == "list" then
        return _listfiles(...)
      elseif Type_1 == "write" then
        return _writefile(...)
      elseif Type_1 == "append" then
        return _appendfile(...)
      elseif Type_1 == "del" then
        return _delfile(...)
      elseif Type_1 == "load" then
        return _loadfile(...)
      elseif Type_1 == "dofile" then
        return _dofile(...)
      end
    end
  end
end

SPD.MetaTable = function(Type, ...)
  local _getmetatable = getmetatable or (debug and debug.getmetatable) or (function() end)
  local _setmetatable = setmetatable or (debug and debug.setmetatable) or (function() end)

  if Type and type(Type) == "string" then
    if Type == "get" then
      return _getmetatable(...)
    elseif Type == "set" then
      return _setmetatable(...)
    end
  end
end

SPD.Environment = function(Type, ...)
  local _getfenv = getfenv or (debug and debug.getfenv) or (function() end)
  local _setfenv = setfenv or (debug and debug.setfenv) or (function() end)

  if Type and type(Type) == "string" then
    if Type == "get" then
      return _getfenv(...)
    elseif Type == "set" then
      return _setfenv(...)
    end
  end
end

SPD.Require = function(...)
  local _require = require or (debug and debug.require) or (function() end)

  return require(...)
end

return SPD
