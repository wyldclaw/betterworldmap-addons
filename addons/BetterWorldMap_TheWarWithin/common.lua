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
    atlas = nil,
    label = L['faction_dornogal'],
    name = 'faction_dornogal',
}) -- Dornogal

ns.groups.GREAT_VAULT = Group({
    atlas = 'greatvault-dragonflight-32x32',
    label = L['great_vault_label'],
    name = 'great_vault'
}) -- Great Vault

------------------------------ THE RINGING DEEPS ------------------------------

ns.groups.FACTION_GUNDARGAZ = Group({
    atlas = nil,
    label = L['faction_gundargaz'],
    name = 'faction_gundargaz',
}) -- Gundargaz

--------------------------------- HALLOWFALL ----------------------------------

ns.groups.FACTION_MERELDAR = Group({
    atlas = nil,
    label = L['faction_mereldar'],
    name = 'faction_mereldar',
}) -- Mereldar

-------------------------------------------------------------------------------
--------------------------------- MENU GROUPS ---------------------------------
-------------------------------------------------------------------------------

ns.menuGroups = {
    [nil] = { -- Khaz Algar
        [1] = { -- Isle of Dorn
            title = ns.GetMapName(nil),
            groups = {
                ns.groups.FACTION_DORNOGAL,
                ns.groups.GREAT_VAULT
            }
        },
        [2] = { -- The Ringing Deeps
            title = ns.GetMapName(nil),
            groups = {
                ns.groups.FACTION_GUNDARGAZ
            }
        },
        [3] = { -- Hallowfall
            title = ns.GetMapName(nil),
            groups = {
                ns.groups.FACTION_MERELDAR
            }
        },
        [4] = { -- Azj-Kahet
            title = ns.GetMapName(nil),
            groups = {}
        }
    }
}