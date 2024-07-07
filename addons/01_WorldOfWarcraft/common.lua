-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local L = ns.locale

local Group = ns.Group

local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

ns.expansion = 1

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

-------------------------------------------------------------------------------
------------------------------------ PINS -------------------------------------
-------------------------------------------------------------------------------

local KalimdorCup = Pin({
    group = ns.groups.KALIMDOR_CUP
}) -- Kalimdor Cup

local EasternKingdomsCup = Pin({
    group = ns.groups.EASTERN_KINGDOMS_CUP
}) -- Eastern Kingdoms Cup

ns.pin.KalimdorCup = KalimdorCup
ns.pin.EasternKingdomsCup = EasternKingdomsCup

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
    }
}
