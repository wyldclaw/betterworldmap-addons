-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local AncientWaygate = ns.pin.AncientWaygate
local DragonridingRace = ns.pin.DragonridingRace
local FishingHole = ns.pin.FishingHole

-------------------------------------------------------------------------------

local map = Map({id = 2151, parent = 1978})

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map.pins[2862] = AncientWaygate({
	coordinates = 61221253
}) -- Morqut Islet

-------------------------------------------------------------------------------
------------------------------ DRAGONRIDING RACE ------------------------------
-------------------------------------------------------------------------------

map.pins[7769] = DragonridingRace -- Aerie Chasm Cruise
map.pins[7771] = DragonridingRace -- Caldera Coaster
map.pins[7772] = DragonridingRace -- Forbidden Reach Rush
map.pins[7768] = DragonridingRace -- Morqut Ascent
map.pins[7770] = DragonridingRace -- Southern Reach Route
map.pins[7767] = DragonridingRace -- Stormsunder Crater Circuit

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map.pins[7412] = FishingHole -- Dragonskull Island Fishing Hole
