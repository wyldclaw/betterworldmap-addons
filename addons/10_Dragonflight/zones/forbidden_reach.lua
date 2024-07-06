-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local AncientWaygate = ns.pin.AncientWaygate
local FishingHole = ns.pin.FishingHole
local SkyridingRace = ns.pin.SkyridingRace

-------------------------------------------------------------------------------

local map = Map({id = 2151, parent = 1978})

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map.pins[2862] = AncientWaygate({
    coordinates = 61221253
}) -- Morqut Islet

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map.pins[7412] = FishingHole -- Dragonskull Island Fishing Hole

-------------------------------------------------------------------------------
------------------------------- SKYRIDING RACE --------------------------------
-------------------------------------------------------------------------------

map.pins[7769] = SkyridingRace -- Aerie Chasm Cruise
map.pins[7771] = SkyridingRace -- Caldera Coaster
map.pins[7772] = SkyridingRace -- Forbidden Reach Rush
map.pins[7768] = SkyridingRace -- Morqut Ascent
map.pins[7770] = SkyridingRace -- Southern Reach Route
map.pins[7767] = SkyridingRace -- Stormsunder Crater Circuit
