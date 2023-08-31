-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local bor = Map({id = 114, parent = 113}) -- Borean Tundra
local dal = Map({id = 125, parent = 113}) -- Dalaran
local dbt = Map({id = 115, parent = 113}) -- Dragonblight
local how = Map({id = 117, parent = 113}) -- Howling Fjord
local ice = Map({id = 118, parent = 113}) -- Icecrown
local stm = Map({id = 120, parent = 113}) -- Storm Peaks
local wgp = Map({id = 123, parent = 113}) -- Wintergrasp
local zul = Map({id = 121, parent = 113}) -- Zul'Drak

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

bor.pins[6694] = Dungeon -- The Oculus
bor.pins[6695] = Dungeon -- The Nexus
dal.pins[6845] = Dungeon -- The Violet Hold
dbt.pins[6703] = Dungeon -- Azjol-Nerub
dbt.pins[6704] = Dungeon -- Ahn'kahet: The Old Kingdom
how.pins[6690] = Dungeon -- Utguard Pinnacle
how.pins[6691] = Dungeon -- Utguard Keep
ice.pins[6692] = Dungeon -- Trial of the Champion
ice.pins[6696] = Dungeon -- The Forge of Souls
ice.pins[6697] = Dungeon -- Pit of Saron
ice.pins[6698] = Dungeon -- Halls of Reflection
stm.pins[6699] = Dungeon -- Halls of Lightning
stm.pins[6700] = Dungeon -- Halls of Stone
zul.pins[6701] = Dungeon -- Gundrak

zul.pins[6702] = Pin({
    coordinates = 62105567,
    group = ns.groups.DUNGEON,
    passive = true
}) -- Drak'Tharon Keep

-------------------------------------------------------------------------------
------------------------------------ RAIDS ------------------------------------
-------------------------------------------------------------------------------

bor.pins[6525] = Raid -- Eye of Eternity
dbt.pins[6519] = Raid -- Ruby Sanctum
dbt.pins[6520] = Raid -- Obsidian Sanctum
dbt.pins[6524] = Raid -- Naxxramas
ice.pins[6521] = Raid -- Icecrown Citadel
ice.pins[6522] = Raid -- Trial of the Crusader
stm.pins[6523] = Raid -- Ulduar
wgp.pins[6526] = Raid -- Vault of Archavon
