-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin

local AncientWaygate = ns.pin.AncientWaygate
local SkyridingRace = ns.pin.SkyridingRace
local ElementalStorm = ns.pin.ElementalStorm
local FishingHole = ns.pin.FishingHole

-------------------------------------------------------------------------------

local map = Map({id = 2022, parent = 1978})

-------------------------------------------------------------------------------
----------------------------- DRAGONSCALE BASECAMP ----------------------------
-------------------------------------------------------------------------------

map.pins[7365] = Pin({
    group = ns.groups.FACTION_EXPEDITION
}) -- Dragonscale Basecamp

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map.pins[2842] = AncientWaygate({
    coordinates = 48904632
}) -- Rubyscale Outpost

map.pins[2841] = AncientWaygate({
    coordinates = 57673589
}) -- Skytop Observatory

-------------------------------------------------------------------------------
------------------------------ DRAGONBANE SIEGE -------------------------------
-------------------------------------------------------------------------------

local DragonbaneSiege = Pin({
    group = ns.groups.DRAGONBANE_SIEGE
}) -- Seige on Dragonbane Keep

map.pins[7267] = DragonbaneSiege -- Siege on Dragonbane Keep - Before
map.pins[7104] = DragonbaneSiege -- Siege on Dragonbane Keep - During
map.pins[7413] = DragonbaneSiege -- Siege on Dragonbane Keep - After

-------------------------------------------------------------------------------
------------------------------- SKYRIDING RACE --------------------------------
-------------------------------------------------------------------------------

map.pins[7744] = SkyridingRace -- Apex Canopy River Run
map.pins[7743] = SkyridingRace -- Emberflow Flight
map.pins[7741] = SkyridingRace -- Flashfrost Flyover
map.pins[7740] = SkyridingRace -- Ruby Lifeshrine Loop
map.pins[7745] = SkyridingRace -- Uktulut Coaster
map.pins[7747] = SkyridingRace -- Wild Preserve Circuit
map.pins[7742] = SkyridingRace -- Wild Preserve Slalom
map.pins[7746] = SkyridingRace -- Wingrest Roundabout

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

map.pins[7211] = Dungeon -- Neltharus
map.pins[7212] = Dungeon -- Ruby Life Pools

-------------------------------------------------------------------------------
------------------------------- ELEMENTAL STORM -------------------------------
-------------------------------------------------------------------------------

map.pins[7249] = ElementalStorm -- Dragonbane Keep - Thunderstorm
map.pins[7250] = ElementalStorm -- Dragonbane Keep - Sandstorm
map.pins[7251] = ElementalStorm -- Dragonbane Keep - Firestorm
map.pins[7252] = ElementalStorm -- Dragonbane Keep - Snowstorm
map.pins[7253] = ElementalStorm -- Slagmire - Thunderstorm
map.pins[7254] = ElementalStorm -- Slagmire - Sandstorm
map.pins[7255] = ElementalStorm -- Slagmire - Firestorm
map.pins[7256] = ElementalStorm -- Slagmire - Snowstorm
map.pins[7257] = ElementalStorm -- Scalecracker Keep - Thunderstorm
map.pins[7258] = ElementalStorm -- Scalecracker Keep - Sandstorm
map.pins[7259] = ElementalStorm -- Scalecracker Keep - Firestorm
map.pins[7260] = ElementalStorm -- Scalecracker Keep - Snowstorm

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map.pins[7086] = FishingHole -- River Mouth Fishing Hole
map.pins[7272] = FishingHole -- Burning Ascent Fishing Hole
