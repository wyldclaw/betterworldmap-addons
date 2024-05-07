-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local AncientWaygate = ns.pin.AncientWaygate
local DragonridingRace = ns.pin.DragonridingRace
local ElementalStorm = ns.pin.ElementalStorm
local FishingHole = ns.pin.FishingHole
local FyrakkAssault = ns.pin.FyrakkAssault
local Pin = ns.pin.Pin
local ZaralekCavern = ns.pin.ZaralekCavern

-------------------------------------------------------------------------------

local map = Map({id = 2024, parent = 1978})

-------------------------------------------------------------------------------
----------------------------------- ISKAARA -----------------------------------
-------------------------------------------------------------------------------

map.pins[7393] = Pin({group = ns.groups.FACTION_TUSKARR}) -- Iskaara

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map.pins[2838] = AncientWaygate({coordinates = 51466802}) -- Cobalt Assembly
map.pins[2837] = AncientWaygate({coordinates = 63966829}) -- Vakthros

-------------------------------------------------------------------------------
------------------------------- COMMUNITY FEAST -------------------------------
-------------------------------------------------------------------------------

local CommunityFeast = Pin({group = ns.groups.COMMUNITY_FEAST}) -- Community Feast

map.pins[7218] = CommunityFeast -- Community Feast - Before
map.pins[7219] = CommunityFeast -- Community Feast - During
map.pins[7220] = CommunityFeast -- Community Feast - After

-------------------------------------------------------------------------------
------------------------------ DRAGONRIDING RACE ------------------------------
-------------------------------------------------------------------------------

map.pins[7760] = DragonridingRace -- Archive Ambit
map.pins[7756] = DragonridingRace -- Azure Span Slalom
map.pins[7755] = DragonridingRace -- Azure Span Sprint
map.pins[7759] = DragonridingRace -- Frostland Flyover
map.pins[7758] = DragonridingRace -- Iskaara Tour
map.pins[7757] = DragonridingRace -- Vakthros Ascent

-------------------------------------------------------------------------------
------------------------------- ELEMENTAL STORM -------------------------------
-------------------------------------------------------------------------------

map.pins[7229] = ElementalStorm -- Brakenhide Hollow - Thunderstorm
map.pins[7230] = ElementalStorm -- Brakenhide Hollow - Sandstorm
map.pins[7231] = ElementalStorm -- Brakenhide Hollow - Firestorm
map.pins[7232] = ElementalStorm -- Brakenhide Hollow - Snowstorm
map.pins[7233] = ElementalStorm -- Cobalt Assembly - Thunderstorm
map.pins[7234] = ElementalStorm -- Cobalt Assembly - Sandstorm
map.pins[7235] = ElementalStorm -- Cobalt Assembly - Firestorm
map.pins[7236] = ElementalStorm -- Cobalt Assembly - Snowstorm
map.pins[7237] = ElementalStorm -- Imbu - Thunderstorm
map.pins[7238] = ElementalStorm -- Imbu - Sandstorm
map.pins[7239] = ElementalStorm -- Imbu - Firestorm
map.pins[7240] = ElementalStorm -- Imbu - Snowstorm

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map.pins[7266] = FishingHole -- Grimtusks Fishing Hole

-------------------------------------------------------------------------------
------------------------------- FYRAKK ASSAULT --------------------------------
-------------------------------------------------------------------------------

map.pins[7432] = FyrakkAssault
map.pins[7433] = FyrakkAssault
map.pins[7434] = FyrakkAssault
map.pins[7435] = FyrakkAssault
map.pins[7488] = FyrakkAssault

-------------------------------------------------------------------------------
--------------------------------- THE BIG DIG ---------------------------------
-------------------------------------------------------------------------------

map.pins[7657] = Pin({group = ns.groups.THE_BIG_DIG})

-------------------------------------------------------------------------------
-------------------------- ZARALEK CAVERN ENTRANCES ---------------------------
-------------------------------------------------------------------------------

map.pins[7469] = ZaralekCavern -- Lookout Breach
