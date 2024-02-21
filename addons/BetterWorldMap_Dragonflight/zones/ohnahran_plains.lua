-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local AncientWaygate = ns.pin.AncientWaygate
local DragonridingRally = ns.pin.DragonridingRally
local ElementalStorm = ns.pin.ElementalStorm
local FishingHole = ns.pin.FishingHole
local FyrakkAssault = ns.pin.FyrakkAssault
local Pin = ns.pin.Pin
local ZaralekCavern = ns.pin.ZaralekCavern

-------------------------------------------------------------------------------

local map = Map({id = 2023, parent = 1978})

-------------------------------------------------------------------------------
----------------------------------- MARUUKAI ----------------------------------
-------------------------------------------------------------------------------

map.pins[7392] = Pin({group = ns.groups.FACTION_CENTAUR}) -- Maruukai

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map.pins[2840] = AncientWaygate({coordinates = 34705779}) -- Shady Sanctuary
map.pins[2839] = AncientWaygate({coordinates = 49765289}) -- Ruszathar Reach

-------------------------------------------------------------------------------
-------------------------------- AYLAAG CAMPS ---------------------------------
-------------------------------------------------------------------------------

local AylaagCamp = Pin({group = ns.groups.AYLAAG_CAMPS}) -- Aylaag Camp

map.pins[7101] = AylaagCamp -- Aylaag Camp - River Camp
map.pins[7102] = AylaagCamp -- Aylaag Camp - Aylaag Outpost
map.pins[7103] = AylaagCamp -- Aylaag Camp - Eaglewatch Outpost

-------------------------------------------------------------------------------
------------------------------ DRAGONRIDING RALLY -----------------------------
-------------------------------------------------------------------------------

map.pins[7262] = DragonridingRally -- Ohn'ahran Plains Rally

-------------------------------------------------------------------------------
------------------------------- ELEMENTAL STORM -------------------------------
-------------------------------------------------------------------------------

map.pins[7221] = ElementalStorm -- Nokhudon Hold - Thunderstorm
map.pins[7222] = ElementalStorm -- Nokhudon Hold - Sandstorm
map.pins[7223] = ElementalStorm -- Nokhudon Hold - Firestorm
map.pins[7224] = ElementalStorm -- Nokhudon Hold - Snowstorm

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map.pins[7270] = FishingHole -- Dragonsprings Fishing Hole

-------------------------------------------------------------------------------
------------------------------- FYRAKK ASSAULT --------------------------------
-------------------------------------------------------------------------------

map.pins[7429] = FyrakkAssault
map.pins[7471] = FyrakkAssault
map.pins[7473] = FyrakkAssault
map.pins[7486] = FyrakkAssault
map.pins[7487] = FyrakkAssault

-------------------------------------------------------------------------------
-------------------------- ZARALEK CAVERN ENTRANCES ---------------------------
-------------------------------------------------------------------------------

map.pins[7438] = ZaralekCavern -- The Throughway
map.pins[7467] = ZaralekCavern -- Old Loamm Road
