-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local AncientWaygate = ns.pin.AncientWaygate
local DragonridingRace = ns.pin.DragonridingRace
local DragonridingRally = ns.pin.DragonridingRally
local ElementalStorm = ns.pin.ElementalStorm
local FishingHole = ns.pin.FishingHole
local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

local map = Map({id = 2025, parent = 1978})
local val = Map({id = 2112, parent = 1978})

-------------------------------------------------------------------------------
--------------------------- THE SEAT OF THE ASPECTS ---------------------------
-------------------------------------------------------------------------------

map.pins[7391] = Pin({group = ns.groups.FACTION_VALDRAKKEN}) -- The Seat of the Aspects

-------------------------------------------------------------------------------
-------------------------------- ARCANE FORGE ---------------------------------
-------------------------------------------------------------------------------

val.pins[7614] = Pin({group = ns.groups.ARCANE_FORGE}) -- Arcane Forge

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map.pins[2834] = AncientWaygate({coordinates = 60925612}) -- Eon's Fringe
map.pins[2836] = AncientWaygate({coordinates = 64934099}) -- Algeth'era

-------------------------------------------------------------------------------
------------------------------ DRAGONRIDING RACE ------------------------------
-------------------------------------------------------------------------------

map.pins[7764] = DragonridingRace -- Academy Ascent
map.pins[7766] = DragonridingRace -- Caverns Criss-Cross
map.pins[7763] = DragonridingRace -- Cliffside Circuit
map.pins[7761] = DragonridingRace -- Flowing Forest Flight
map.pins[7765] = DragonridingRace -- Garden Gallivant
map.pins[7762] = DragonridingRace -- Tyrhold Trial

-------------------------------------------------------------------------------
------------------------------- ELEMENTAL STORM -------------------------------
-------------------------------------------------------------------------------

map.pins[7245] = ElementalStorm -- Tyrhold - Thunderstorm
map.pins[7246] = ElementalStorm -- Tyrhold - Sandstorm
map.pins[7247] = ElementalStorm -- Tyrhold - Firestorm
map.pins[7248] = ElementalStorm -- Tyrhold - Snowstorm
map.pins[7298] = ElementalStorm -- Primalist Future - Thunderstorm
map.pins[7299] = ElementalStorm -- Primalist Future - Sandstorm
map.pins[7300] = ElementalStorm -- Primalist Future - Firestorm
map.pins[7301] = ElementalStorm -- Primalist Future - Snowstorm

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map.pins[7271] = FishingHole -- Tyrhold Fishing Hole

-------------------------------------------------------------------------------
--------------------------------- GREAT VAULT ---------------------------------
-------------------------------------------------------------------------------

local GreatVault = Pin({group = ns.groups.GREAT_VAULT}) -- Great Vault

val.pins[7296] = GreatVault -- Vault of the Incarnates
val.pins[7297] = GreatVault -- Rewards Available
val.pins[7455] = GreatVault -- Aberrus, the Shadowed Crucible
val.pins[7552] = GreatVault -- Amirdrassil
val.pins[7739] = GreatVault -- Awakened Dragonflight Raids

-------------------------------------------------------------------------------
----------------------------- SECRETS OF AZEROTH ------------------------------
-------------------------------------------------------------------------------

val.pins[7544] = Pin({group = ns.groups.SECRETS_OF_AZEROTH}) -- Secrets of Azeroth

-------------------------------------------------------------------------------
---------------------------------- TIME RIFT ----------------------------------
-------------------------------------------------------------------------------

map.pins[7492] = Pin({group = ns.groups.TIME_RIFT}) -- Time Rift
