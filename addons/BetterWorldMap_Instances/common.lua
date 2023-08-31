-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local L = ns.locale

local Group = ns.Group

local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

ns.addon_name = L['instances_label']
ns.chat_command = 'bwm-inst'

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.DUNGEON = Group({
    atlas = 'dungeon',
    label = L['dungeon_label'],
    name = 'dungeon',
}) -- Dungeon

ns.groups.RAID = Group({
    atlas = 'raid',
    label = L['raid_label'],
    name = 'raid'
}) -- Raid

-------------------------------------------------------------------------------
------------------------------------ PINS -------------------------------------
-------------------------------------------------------------------------------

local Dungeon = Pin({
    group = ns.groups.DUNGEON,
    passive = true
}) -- Dungeon

ns.pin.Dungeon = Dungeon

local Raid = Pin({
    group = ns.groups.RAID,
    passive = true
}) -- Raid

ns.pin.Raid = Raid

-------------------------------------------------------------------------------
--------------------------------- MENU GROUPS ---------------------------------
-------------------------------------------------------------------------------

local menuGroup = {
    [1] = {
        groups = {
            [1] = ns.groups.DUNGEON,
            [2] = ns.groups.RAID
        }
    }
}

ns.menuGroups = {
    [12] = menuGroup, -- Kalimdor
    [13] = menuGroup, -- Eastern Kingdoms
    [101] = menuGroup, -- Outland
    [113] = menuGroup, -- Northrend
    [424] = menuGroup, -- Pandaria
    [572] = menuGroup, -- Draenor
    [619] = menuGroup, -- Broken Isles
    [875] = menuGroup, -- Zandalar
    [876] = menuGroup, -- Kul Tiras
    [948] = menuGroup, -- The Maelstrom
    [1550] = menuGroup, -- Shadowlands
    [1978] = menuGroup, -- Dragon Isles
}
