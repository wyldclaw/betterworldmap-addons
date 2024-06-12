-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Class = ns.Class
local L = ns.locale

local Group = ns.Group

local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

ns.expansion = 10

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.ANCIENT_WAYGATES = Group({
    atlas = 'flightmaster_ancientwaygate-taxinode_neutral',
    label = '{spell:386485}',
    name = 'ancient_waygate',
    type = 'flightpoint'
}) -- Ancient Waygates

ns.groups.DREAMSURGE = Group({
    atlas = 'dreamsurge_hub-icon',
    label = '{spell:418351}',
    name = 'dreamsurge'
}) -- Dreamsurge

ns.groups.ELEMENTAL_STORM = Group({
    atlas = 'ElementalStorm-Lesser-Fire',
    label = '{spell:392768}',
    name = 'elemental_storm'
}) -- Elemental Storms

ns.groups.FISHING_HOLE = Group({
    atlas = 'Fishing-Hole',
    label = '{spell:388968}',
    name = 'tuskarr_fishing_hole'
}) -- Tuskarr Fishing Holes

ns.groups.FYRAKK_ASSAULT = Group({
    atlas = 'Fyrakk-Head-Icon',
    label = L['fyrakk_assault'],
    name = 'fyrakk_assault'
}) -- Fyrakk Assault

ns.groups.GRAND_HUNTS = Group({
    atlas = 'minimap-genericevent-hornicon',
    label = L['grand_hunts_label'],
    name = 'grand_hunts'
}) -- Grand Hunts

ns.groups.ZARALEK_CAVERN_ENTRANCES = Group({
    atlas = 'CaveUnderground-Down',
    label = ns.GetMapName(2133),
    name = 'zaralek_cavern_entrance'
}) -- Zaralek Cavern Entrances

------------------------------- THE WAKING SHORE ------------------------------

ns.groups.FACTION_EXPEDITION = Group({
    atlas = 'MajorFactions_MapIcons_Expedition64',
    label = L['faction_expedition'],
    name = 'faction_expedition'
}) -- Dragonscale Basecamp

ns.groups.DRAGONBANE_SIEGE = Group({
    atlas = 'minimap-genericevent-hornicon',
    label = '{spell:388945}',
    name = 'siege_on_dragonbane_keep'
}) -- Siege on Dragonbane Keep

------------------------------- OHN'AHRAN PLAINS ------------------------------

ns.groups.FACTION_CENTAUR = Group({
    atlas = 'MajorFactions_MapIcons_Centaur64',
    label = L['faction_centaur'],
    name = 'faction_centaur'
}) -- Maruukai

ns.groups.AYLAAG_CAMPS = Group({
    atlas = 'MajorFactions_MapIcons_Centaur64',
    label = L['aylaag_camp_label'],
    name = 'aylaag_camp'
}) -- Aylaag Camp

---------------------------------- AZURE SPAN ---------------------------------

ns.groups.FACTION_TUSKARR = Group({
    atlas = 'MajorFactions_MapIcons_Tuskarr64',
    label = L['faction_tuskarr'],
    name = 'faction_tuskarr'
}) -- Iskaara

ns.groups.COMMUNITY_FEAST = Group({
    atlas = 'MajorFactions_MapIcons_Tuskarr64',
    label = '{spell:386441}',
    name = 'community_feast'
}) -- Community Feast

ns.groups.THE_BIG_DIG = Group({
    atlas = 'minimap-genericevent-hornicon',
    label = L['the_big_dig'],
    name = 'the_big_dig'
}) -- The Big Dig

--------------------------------- THALDRASZUS ---------------------------------

ns.groups.FACTION_VALDRAKKEN = Group({
    atlas = 'MajorFactions_MapIcons_Valdrakken64',
    label = L['faction_valdrakken'],
    name = 'faction_valdrakken',
}) -- The Seat of the Aspects

ns.groups.GREAT_VAULT = Group({
    atlas = 'greatvault-dragonflight-32x32',
    label = L['great_vault_label'],
    name = 'great_vault'
}) -- Great Vault

ns.groups.TIME_RIFT = Group({
    atlas = 'minimap-genericevent-hornicon',
    label = '{spell:409045}',
    name = 'time_rift'
}) -- Time Rift

------------------------------ THE EMERALD DREAM ------------------------------

ns.groups.SUPERBLOOM = Group({
    atlas = 'minimap-genericevent-hornicon',
    label = '{spell:418272}',
    name = 'superbloom'
}) -- Superbloom

-------------------------------- DRAGONRIDING ---------------------------------

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

----------------------------- SECRETS OF AZEROTH ------------------------------

local function IsSecretsOfAzerothActive()
    local us = ns.CalendarEventIsActive(1396)
    local eu = ns.CalendarEventIsActive(1398)
    local tw = ns.CalendarEventIsActive(1399)
    return us or eu or tw
end

ns.groups.ARCANE_FORGE = Group({
    atlas = 'Adventures-32x32',
    label = L['arcane_forge_label'],
    name = 'arcane_forge',
    IsVisible = function()
        return IsSecretsOfAzerothActive()
    end
}) -- Arcane Forge

ns.groups.SECRETS_OF_AZEROTH = Group({
    atlas = 'minimap-genericevent-hornicon',
    label = L['secrets_of_azeroth_label'],
    name = 'secrets_of_azeroth',
    IsVisible = function()
        return IsSecretsOfAzerothActive()
    end
}) -- Secrets of Azeroth

------------------------ WOW REMIX: MISTS OF PANDARIA -------------------------

ns.groups.INFINITE_BAZAAR = Group({
    atlas = 'timerunninghub',
    label = L['infinite_bazaar'],
    name = 'infinite_bazaar',
    IsVisible = function()
        return ns.CalendarEventIsActive(1525)
    end
}) -- Infinite Bazaar

-------------------------------------------------------------------------------
------------------------------------ PINS -------------------------------------
-------------------------------------------------------------------------------

local AncientWaygate = Class('AncientWaygate', Pin, {
    group = ns.groups.ANCIENT_WAYGATES
}) -- Ancient Waygates

local ElementalStorm = Class('ElementalStorm', Pin, {
    group = ns.groups.ELEMENTAL_STORM
}) -- Elemental Storm

local FishingHole = Class('FishingHole', Pin, {
    group = ns.groups.FISHING_HOLE
}) -- Fishing Hole

local FyrakkAssault = Class('FyrakkAssault', Pin, {
    group = ns.groups.FYRAKK_ASSAULT
}) -- Fyrakk Assault

local ZaralekCavern = Class('ZaralekCavern', Pin, {
    group = ns.groups.ZARALEK_CAVERN_ENTRANCES,
    passive = true
}) -- Zaralek Cavern

ns.pin.AncientWaygate = AncientWaygate
ns.pin.ElementalStorm = ElementalStorm
ns.pin.FishingHole = FishingHole
ns.pin.FyrakkAssault = FyrakkAssault
ns.pin.ZaralekCavern = ZaralekCavern

-------------------------------------------------------------------------------
--------------------------------- GRAND HUNTS ---------------------------------
-------------------------------------------------------------------------------

local GRAND_HUNTS_POIS = {
    [7342] = true, -- Ohn'ahran Plains
    [7343] = true, -- The Waking Shores
    [7344] = true, -- Thaldraszus
    [7345] = true -- The Azure Span
}

hooksecurefunc(AreaPOIPinMixin, 'OnAcquired', function(self)
    if self and GRAND_HUNTS_POIS[self.areaPoiID] then
        if not ns.groups.GRAND_HUNTS:IsEnabled() then
            self:SetPosition(2,2)
        end
    end
end)

-------------------------------------------------------------------------------
--------------------------------- DREAMSURGE ----------------------------------
-------------------------------------------------------------------------------

local DREAMSURGE_POIS = {
    [7553] = true, -- Thaldraszus
    [7554] = true, -- The Azure Span
    [7555] = true, -- Ohn'ahran Plains
    [7556] = true, -- The Waking Shores
    [7602] = true, -- Thaldraszus
    [7603] = true, -- The Waking Shores
    [7604] = true, -- Ohn'ahran Plains
    [7605] = true -- The Azure Span
}

hooksecurefunc(AreaPOIPinMixin, 'OnAcquired', function(self)
    if self and DREAMSURGE_POIS[self.areaPoiID] then
        if not ns.groups.DREAMSURGE:IsEnabled() then
            self:SetPosition(2,2)
        end
    end
end)

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
                ns.groups.DUNGEON,
                ns.groups.INFINITE_BAZAAR,
                ns.groups.PANDARIA_CUP,
                ns.groups.RAID
            }
        }
    },
    [619] = { -- Broken Isles
        [1] = {
            groups = {
                ns.groups.BROKEN_ISLES_CUP
            }
        }
    },
    [1978] = { -- Dragon Isles
        [1] = {
            title = ns.GetMapName(1978),
            groups = {
                ns.groups.ANCIENT_WAYGATES,
                ns.groups.DREAMSURGE,
                ns.groups.DUNGEON,
                ns.groups.ELEMENTAL_STORM,
                ns.groups.FISHING_HOLE,
                ns.groups.FYRAKK_ASSAULT,
                ns.groups.GRAND_HUNTS,
                ns.groups.RAID,
                ns.groups.SKYRIDING_RACE,
                ns.groups.ZARALEK_CAVERN_ENTRANCES
            }
        },
        [2] = { -- The Waking Shores
            title = ns.GetMapName(2022),
            groups = {
                ns.groups.FACTION_EXPEDITION,
                ns.groups.DRAGONBANE_SIEGE
            }
        },
        [3] = { -- Ohn'ahran Plains
            title = ns.GetMapName(2023),
            groups = {
                ns.groups.FACTION_CENTAUR,
                ns.groups.AYLAAG_CAMPS
            }
        },
        [4] = { -- The Azure Span
            title = ns.GetMapName(2024),
            groups = {
                ns.groups.FACTION_TUSKARR,
                ns.groups.COMMUNITY_FEAST,
                ns.groups.THE_BIG_DIG
            }
        },
        [5] = { -- Thaldraszus
            title = ns.GetMapName(2025),
            groups = {
                ns.groups.FACTION_VALDRAKKEN,
                ns.groups.ARCANE_FORGE,
                ns.groups.GREAT_VAULT,
                ns.groups.SECRETS_OF_AZEROTH,
                ns.groups.TIME_RIFT
            }
        },
        [6] = { -- The Emerald Dream
            title = ns.GetMapName(2200),
            groups = {
                ns.groups.SUPERBLOOM
            }
        }
    }
}
