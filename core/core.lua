-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Addon = LibStub('AceAddon-3.0'):NewAddon(ADDON_NAME, 'AceEvent-3.0', 'AceConsole-3.0')
local L = LibStub('AceLocale-3.0'):GetLocale(ADDON_NAME)

ns.addon = Addon
ns.locale = L
ns.maps = {}

ns.DB = ADDON_NAME .. 'DB'

ns.libs = {
    HBD = LibStub('HereBeDragons-2.0'),
    PIN = LibStub('HereBeDragons-Pins-2.0'),
    DDM = LibStub('LibUIDropDownMenu-4.0'),
    WMB = LibStub('Krowi_WorldMapButtons-1.4')
}

_G[ADDON_NAME] = Addon

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

ns.SetDefaultOptions = function()
    _G[ns.DB] = {}
    for _, group in pairs(ns.groups) do
        _G[ns.DB]['enable_' .. group.name] = true
    end
end

ns.GetOpt = function(o) return _G[ns.DB][o] end

ns.SetOpt = function(o) _G[ns.DB][o] = not _G[ns.DB][o] ns.addon:Refresh() end

-------------------------------------------------------------------------------
------------------------------------ ADDON ------------------------------------
-------------------------------------------------------------------------------

function Addon:OnInitialize()
    if not _G[ns.DB] then ns:SetDefaultOptions() end

    local template = ADDON_NAME .. 'WorldMapOptionsButtonTemplate'
    ns.libs.WMB:Add(template, 'DROPDOWNTOGGLEBUTTON')

    if ns.addon_name then
        ns.addon_name = 'BetterWorldMap: ' .. ns.addon_name
    end

    if ns.expansion then
        local expansion_name = _G['EXPANSION_NAME' .. (ns.expansion - 1)]
        ns.addon_name = 'BetterWorldMap: ' .. expansion_name
    end

    self:RegisterChatCommand('bwm', function(input)
        if input == 'true' then
            _G[ns.DB].dev_enabled = true
            self:Print('Developer mode \124cFF00FF00enabled\124r')
        elseif input == 'false' then
            _G[ns.DB].dev_enabled = false
            self:Print('Developer mode \124cFFFF0000disabled\124r')
        end
        if WorldMapFrame:IsShown() then self:Refresh() end
    end)
end

function Addon:Refresh()
    for provider in next, WorldMapFrame.dataProviders do
        provider:RefreshAllData()
    end
    ns.FP.UpdateAllFlightPoints(WorldMapFrame.mapID)
end
