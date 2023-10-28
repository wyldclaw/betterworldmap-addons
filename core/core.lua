-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Addon = LibStub('AceAddon-3.0'):NewAddon(ADDON_NAME, 'AceEvent-3.0', 'AceConsole-3.0')
local L = LibStub('AceLocale-3.0'):GetLocale(ADDON_NAME)

ns.addon = Addon
ns.locale = L

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

    if ns.expansion then
        self:RegisterEvent('PLAYER_ENTERING_WORLD', function()
            self:UnregisterEvent('PLAYER_ENTERING_WORLD')
            local expansionName = EJ_GetTierInfo(ns.expansion)
            ns.addon_name = 'BetterWorldMap: ' .. expansionName
        end)
    end

    self:RegisterChatCommand(ns.chat_command, function(input)
        if input == 'dev true' then
            _G[ns.DB].dev_enabled = true
            self:Print('Dev mode enabled')
        elseif input == 'dev false' then
            _G[ns.DB].dev_enabled = false
            self:Print('Dev mode disabled')
        end
        self:Refresh()
    end)
end

function Addon:Refresh()
    for provider in next, WorldMapFrame.dataProviders do
        provider:RefreshAllData()
    end
    ns.FP.UpdateAllFlightPoints(WorldMapFrame.mapID)
end
