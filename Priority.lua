local Priority = {}
Priority.__index = Priority

function Priority.new(class, weight, canSkip)
    local self = setmetatable({}, Priority)
    self.Class = class ~= "" and class or "Undefined"
    self.Weight = weight or #Priority.Classes + 1
    self.Skipable = true
    self.LastActive = 0
    self.CanSkip = canSkip or {}
    table.insert(Priority.Classes, self)
    table.sort(Priority.Classes, function(a, b) return a.Weight < b.Weight end)
    return self
end

function Priority:get(name)
    for _, v in ipairs(Priority.Classes) do
        if v.Class == name then
            return v
        end
    end
end

function Priority:set(data, skip)
    local value = type(data) == "string" and self:get(data) or data
    if value and (not self.Currently or (skip and value.Skipable)) and (self.Weightness < value.Weight or table.find(self.Currently.CanSkip, value.Class)) or self.Currently == value then
        self.Activity = value.Class
        self.Currently = value
        self.Weightness = value.Weight
        self.Recently = value
        self.Start = tick()
        value.LastActive = self.Start
        return true
    end
end

function Priority:check(data, skip)
    local value = type(data) == "string" and self:get(data) or data
    if value and (not self.Activity or (skip and value.Skipable)) and (self.Weightness < value.Weight or table.find(self.Currently.CanSkip, value.Class)) or self.Currently == value then
        return true
    end
end

function Priority:isActive(data, skip)
    return self:check(data, skip)
end

function Priority:clear(data)
    local value = type(data) == "string" and self:get(data) or data
    if value and value.Class == self.Activity and value.LastActive == self.Start then
        self.Activity = nil
        self.Currently = nil
        self.Weightness = 0
        self.Start = 0
        return true
    end
end

function Priority.__tostring(self)
    return string.format("%s : [ %s ]", self.Class, self.Weight)
end

Priority.Classes = {}
getgenv().Priority = getgenv().Priority or Priority
return Priority
