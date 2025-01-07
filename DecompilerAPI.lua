local API: string = "http://api.plusgiant5.com"

local last_call = 0
local function call(konstantType: string, scriptPath: Script | ModuleScript | LocalScript): string
    local success: boolean, bytecode: string = pcall(getscriptbytecode, scriptPath)

    if (not success) then
        return `-- Failed to get script bytecode, error:\n\n--[[\n{bytecode}\n--]]`
    end

    local time_elapsed = os.clock() - last_call
    if time_elapsed <= .5 then
        task.wait(.5 - time_elapsed)
    end
    local httpResult = request({
        Url = API .. konstantType,
        Body = bytecode,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "text/plain"
        },
    })
    last_call = os.clock()
    
    if (httpResult.StatusCode ~= 200) then
        return `-- Error occured while requesting the API, error:\n\n--[[\n{httpResult.Body}\n--]]`
    else
        return httpResult.Body
    end
end

local function decompile(scriptPath: Script | ModuleScript | LocalScript): string
    return call("/konstant/decompile", scriptPath)
end

local function disassemble(scriptPath: Script | ModuleScript | LocalScript): string
    return call("/konstant/disassemble", scriptPath)
end

getgenv().decompile = decompile
getgenv().disassemble = disassemble
