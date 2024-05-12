-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local L = ns.locale

local Group = ns.Group

local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

ns.expansion = 11 -- The War Within

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

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
--------------------------------- MENU GROUPS ---------------------------------
-------------------------------------------------------------------------------

ns.menuGroups = {
    [2274] = { -- Khaz Algar
        [1] = {
            title = ns.GetMapName(2274),
            groups = {
                ns.groups.DELVE,
                ns.groups.DRAGONRIDING_RACE,
                ns.groups.DUNGEON,
                ns.groups.RAID
            }
        },
        [1] = { -- Isle of Dorn
            title = ns.GetMapName(2248),
            groups = {
                ns.groups.FACTION_DORNOGAL,
                ns.groups.GREAT_VAULT
            }
        },
        [2] = { -- The Ringing Deeps
            title = ns.GetMapName(2214),
            groups = {
                ns.groups.FACTION_GUNDARGAZ
            }
        },
        [3] = { -- Hallowfall
            title = ns.GetMapName(2215),
            groups = {
                ns.groups.FACTION_MERELDAR
            }
        },
        [4] = { -- Azj-Kahet
            title = ns.GetMapName(2255),
            groups = {
                ns.groups.FACTION_WEAVERS_LAIR
            }
        }
    }
}