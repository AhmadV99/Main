local _readfile = readfile or (debug and debug.readfile) or function() end
local _listfiles = listfiles or (debug and debug.listfiles) or function() end
local _writefile = writefile or (debug and debug.writefile) or function() end
local _makefolder = makefolder or (debug and debug.makefolder) or function() end
local _appendfile = appendfile or (debug and debug.appendfile) or function() end
local _isfolder = isfolder or (debug and debug.isfolder) or function() end
local _delfolder = delfolder or (debug and debug.delfolder) or function() end
local _delfile = delfile or (debug and debug.delfile) or function() end
local _loadfile = loadfile or (debug and debug.loadfile) or function() end
local _dofile = dofile or (debug and debug.dofile) or function() end
local _isfile = isfile or (debug and debug.isfile) or function() end

local HttpService = game:GetService("HttpService")

local FileManager = {} do
  function FileManager:GetFolder(VAL)
    if not _isfolder(VAL) then
      _makefolder(VAL)
    end
  end

  function FileManager:DeleteFolder(VAL)
    if _isfolder(VAL) then
      _delfolder(VAL)
    end
  end

  function FileManager:GetFile(VAL, data)
    if not isfile(VAL) then
      if type(data) == "table" then
        _writefile(VAL, HttpService:JSONEncode(data))
      else
        _writefile(VAL, data or "")
      end
    end
  end

  function FileManager:WriteFile(VAL, data)
    if type(data) == "table" then
      _writefile(VAL, HttpService:JSONEncode(data))
    else
      _writefile(VAL, data or "")
    end
  end

  function FileManager:DeleteFile(VAL)
    if _isfile(VAL) then
      _delfile(VAL)
    end
  end

  function FileManager:ReadFile(VAL, format)
    if _isfile(VAL) then
      if format == "table" then
        return HttpService:JSONDecode(_readfile(VAL))
      else
        return _readfile(VAL)
      end
    end
  end

  function FileManager:ListFiles(VAL, format)
    local fileList = {}
    for _, filePath in next, _listfiles(VAL) do
      local name = filePath:match("[^/\\]+$")
      if format == "json" and name:match("%.json$") then
        name = name:sub(1, -6)
      elseif format == "lua" and name:match("%.lua$") then
        name = name:sub(1, -5)
      end
      table.insert(fileList, name or filePath)
    end
    return fileList
  end
end

return FileManager
