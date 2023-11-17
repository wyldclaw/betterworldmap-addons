-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local L = ns.locale

local Group = ns.Group

local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

ns.addon_name = 'BetterWorldMap: Dragonriding'
ns.chat_command = 'bwm-dr'

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.KALIMDOR_CUP = Group({
    atlas = 'racing',
    label = L['kalimdor_cup'],
    name = 'kalimdor_cup',
    IsVisible = function()
        return ns.CalendarEventIsActive(1395)
    end
}) -- Kalimdor Cup

ns.groups.EASTERN_KINGDOMS_CUP = Group({
    atlas = 'racing',
    label = L['eastern_kingdoms_cup'],
    name = 'eastern_kingdoms_cup',
    IsVisible = function()
        return ns.CalendarEventIsActive(1400)
    end
}) -- Eastern Kingdom Cup

ns.groups.OUTLAND_CUP = Group({
    atlas = 'racing',
    label = L['outland_cup'],
    name = 'outland_cup',
    IsVisible = function()
        return ns.CalendarEventIsActive(1407)
    end
}) -- Outland Cup

ns.groups.NORTHREND_CUP = Group({
    atlas = 'racing',
    label = L['northrend_cup'],
    name = 'northrend_cup',
    IsVisible = function()
        return ns.CalendarEventIsActive(1429)
    end
}) -- Northrend Cup

ns.groups.PANDARIA_CUP = Group({
    atlas = 'racing',
    label = L['pandaria_cup'],
    name = 'pandaria_cup',
    IsVisible = function()
        return ns.CalendarEventIsActive(1430)
    end
}) -- Pandaria Cup

ns.groups.BROKEN_ISLES_CUP = Group({
    atlas = 'racing',
    label = L['broken_isles_cup'],
    name = 'broken_isles_cup',
    IsVisible = function()
        return ns.CalendarEventIsActive(1431)
    end
}) -- Broken Isles Cup

-------------------------------------------------------------------------------
------------------------------------ PINS -------------------------------------
-------------------------------------------------------------------------------

local KalimdorCup = Pin({group = ns.groups.KALIMDOR_CUP})
local EasternKingdomsCup = Pin({group = ns.groups.EASTERN_KINGDOMS_CUP})
local OutlandCup = Pin({group = ns.groups.OUTLAND_CUP})
local NorthrendCup = Pin({group = ns.groups.NORTHREND_CUP})
local PandariaCup = Pin({group = ns.groups.PANDARIA_CUP})
local BrokenIslesCup = Pin({group = ns.groups.BROKEN_ISLES_CUP})

ns.pin.KalimdorCup = KalimdorCup
ns.pin.EasternKingdomsCup = EasternKingdomsCup
ns.pin.OutlandCup = OutlandCup
ns.pin.NorthrendCup = NorthrendCup
ns.pin.PandariaCup = PandariaCup
ns.pin.BrokenIslesCup = BrokenIslesCup

-------------------------------------------------------------------------------
--------------------------------- MENU GROUPS ---------------------------------
-------------------------------------------------------------------------------

ns.menuGroups = {
    [12] = { -- Kalimdor
        [1] = {
            groups = {
                ns.groups.KALIMDOR_CUP
            }
        }
    },
    [13] = { -- Eastern Kingdoms
        [1] = {
            groups = {
                ns.groups.EASTERN_KINGDOMS_CUP
            }
        }
    },
    [101] = { -- Outland
        [1] = {
            groups = {
                ns.groups.OUTLAND_CUP
            }
        }
    },
    [113] = { -- Northrend
        [1] = {
            groups = {
                ns.groups.NORTHREND_CUP
            }
        }
    },
    [424] = { -- Pandaria
        [1] = {
            groups = {
                ns.groups.PANDARIA_CUP
            }
        }
    },
    [619] = { -- Broken Isles
        [1] = {
            groups = {
                ns.groups.BROKEN_ISLES_CUP
            }
        }
    }
}
