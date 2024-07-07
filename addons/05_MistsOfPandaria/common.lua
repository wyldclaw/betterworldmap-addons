-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Class = ns.Class
local L = ns.locale

local Group = ns.Group

local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

ns.expansion = 5

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.INFINITE_BAZAAR = Group({
    atlas = 'timerunninghub',
    label = L['infinite_bazaar'],
    name = 'infinite_bazaar',
    IsVisible = function()
        return ns.CalendarEventIsActive(1525)
    end
}) -- Infinite Bazaar

ns.groups.PANDARIA_CUP = Group({
    atlas = 'racing',
    label = L['pandaria_cup'],
    name = 'pandaria_cup',
    IsVisible = function()
        return ns.CalendarEventIsActive(1430)
    end
}) -- Pandaria Cup

-------------------------------------------------------------------------------
------------------------------------ PINS -------------------------------------
-------------------------------------------------------------------------------

local InfiniteBazaar = Class('InfiniteBazaar', Pin, {
    group = ns.groups.INFINITE_BAZAAR
}) -- Infinite Bazaar

local PandariaCup = Pin({
    group = ns.groups.PANDARIA_CUP
}) -- Outland Cup

ns.pin.InfiniteBazaar = InfiniteBazaar
ns.pin.PandariaCup = PandariaCup

-------------------------------------------------------------------------------
--------------------------------- MENU GROUPS ---------------------------------
-------------------------------------------------------------------------------

ns.menuGroups = {
    [424] = { -- Pandaria
        [1] = {
            groups = {
                ns.groups.DUNGEON,
                ns.groups.INFINITE_BAZAAR,
                ns.groups.PANDARIA_CUP,
                ns.groups.RAID
            }
        }
    }
}
