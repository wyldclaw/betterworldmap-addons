-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Class = ns.Class
local L = ns.locale

local Group = ns.Group

local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

ns.expansion = 11

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

--------------------------------- KHAZ ALGAR ----------------------------------

ns.groups.DELVES = Group({
    atlas = 'delves-regular',
    label = L['delves_label'],
    name = 'delves'
}) -- Delves

-------------------------------- ISLE OF DORN ---------------------------------

ns.groups.FACTION_DORNOGAL = Group({
    atlas = 'poi-hub',
    label = L['faction_dornogal'],
    name = 'faction_dornogal'
}) -- Dornogal

ns.groups.GREAT_VAULT = Group({
    atlas = 'greatvault-dragonflight-32x32',
    label = L['great_vault_label'],
    name = 'great_vault'
}) -- Great Vault

ns.groups.THEATER_TROUPE = Group({
    atlas = 'minimap-genericevent-hornicon',
    label = L['theater_troupe_label'],
    name = 'theater_troupe'
}) -- Theater Troupe

------------------------------ THE RINGING DEEPS ------------------------------

ns.groups.FACTION_GUNDARGAZ = Group({
    atlas = 'poi-hub',
    label = L['faction_gundargaz'],
    name = 'faction_gundargaz'
}) -- Gundargaz

--------------------------------- HALLOWFALL ----------------------------------

ns.groups.FACTION_MERELDAR = Group({
    atlas = 'poi-hub',
    label = L['faction_mereldar'],
    name = 'faction_mereldar'
}) -- Mereldar

---------------------------------- AZJ-KAHET ----------------------------------

ns.groups.FACTION_WEAVERS_LAIR = Group({
    atlas = 'poi-hub',
    label = L['faction_weavers_lair'],
    name = 'faction_weavers_lair'
}) -- The Weaver's Lair

-------------------------------------------------------------------------------
------------------------------------ PINS -------------------------------------
-------------------------------------------------------------------------------

local Delves = Class('Delves', Pin, {
    group = ns.groups.DELVES
}) -- Delves

ns.pin.Delves = Delves

-------------------------------------------------------------------------------
--------------------------------- MENU GROUPS ---------------------------------
-------------------------------------------------------------------------------

ns.menuGroups = {
    [2274] = { -- Khaz Algar
        [1] = {
            title = ns.GetMapName(2274),
            groups = {
                ns.groups.DELVES,
                ns.groups.DUNGEON,
                ns.groups.RAID,
                ns.groups.SKYRIDING_RACE
            }
        },
        [2] = { -- Isle of Dorn
            title = ns.GetMapName(2248),
            groups = {
                ns.groups.FACTION_DORNOGAL,
                ns.groups.GREAT_VAULT,
                ns.groups.THEATER_TROUPE
            }
        },
        [3] = { -- The Ringing Deeps
            title = ns.GetMapName(2214),
            groups = {
                ns.groups.FACTION_GUNDARGAZ
            }
        },
        [4] = { -- Hallowfall
            title = ns.GetMapName(2215),
            groups = {
                ns.groups.FACTION_MERELDAR
            }
        },
        [5] = { -- Azj-Kahet
            title = ns.GetMapName(2255),
            groups = {
                ns.groups.FACTION_WEAVERS_LAIR
            }
        }
    }
}