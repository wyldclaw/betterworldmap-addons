-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

------------------------------------------------------------------------------
-------------------------------- LOCALIZATION --------------------------------
------------------------------------------------------------------------------

local function PrepareText(str)
    for type, id in str:gmatch('{(%l+):(%d+)(%l*)}') do
        if type == 'spell' then
            C_Spell.RequestLoadSpellData(tonumber(id))
        end
    end
end

local function RenderText(str)
    local GetSpellInfo = GetSpellInfo or function(id)
        return select(1, C_Spell.GetSpellName(id))
    end

    for type, id in str:gmatch('{(%l+):(%d+)(%l*)}') do
        if type == 'spell' then
            local name = select(1, GetSpellInfo(tonumber(id)))
            return (name) and name or UNKNOWN
        end
    end
    return str
end

ns.PrepareText = PrepareText
ns.RenderText = RenderText

-------------------------------------------------------------------------------
---------------------------------- UTLITIES -----------------------------------
-------------------------------------------------------------------------------

local function GetXY(coord)
    return floor(coord / 10000) / 10000, (coord % 10000) / 10000
end

local function GetCoord(x, y)
    return floor(x * 10000 + 0.5) * 10000 + floor(y * 10000 + 0.5)
end

local function IsActiveMap(mapID)
    for _, map in pairs(ns.maps) do
        if map.parent == mapID then return true end
    end
    return false
end

local function HasVisibleGroups(mapID)
    for _, map in pairs(ns.maps) do
        if map.parent == mapID then
            for _, pin in pairs(map.pins) do
                if pin.group:IsVisible() == true then return true end
            end
        end
    end
    return false
end

local function IsGroupMember(childMapID, id, group)
    return ns.maps[childMapID].pins[id].group == group
end

local function IsValidID(childMapID, id)
    return ns.maps[childMapID].pins[id] and true or false
end

local function CalendarEventIsActive(eventID)
    local current = C_DateAndTime.GetCurrentCalendarTime()
    C_Calendar.SetAbsMonth(current.month, current.year)
    local day = current.monthDay
    for i = 1, C_Calendar.GetNumDayEvents(0, day) do
        local event = C_Calendar.GetDayEvent(0, day, i)
        if event.eventID == eventID then
            return true
        end
    end
    return false
end

local function GetMapName(id)
    local status, name = pcall(function() return C_Map.GetMapInfo(id).name end)
    return (status) and name or UNKNOWN
end

ns.GetXY = GetXY
ns.GetCoord = GetCoord
ns.IsActiveMap = IsActiveMap
ns.HasVisibleGroups = HasVisibleGroups
ns.IsGroupMember = IsGroupMember
ns.IsValidID = IsValidID
ns.CalendarEventIsActive = CalendarEventIsActive
ns.GetMapName = GetMapName
