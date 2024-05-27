-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Class = ns.Class
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local dws = ns.maps[422] or Map({id = 422, parent = 424}) -- Dread Wastes
local iot = ns.maps[504] or Map({id = 504, parent = 424}) -- Isle of Thunder
local kls = ns.maps[379] or Map({id = 379, parent = 424}) -- Kun-Lai Summit
local tjf = ns.maps[371] or Map({id = 371, parent = 424}) -- The Jade Forest
local tls = ns.maps[388] or Map({id = 388, parent = 424}) -- Townlong Steppes
local tvs = ns.maps[433] or Map({id = 433, parent = 424}) -- The Veiled Stair
local veb = ns.maps[390] or Map({id = 390, parent = 424}) -- Vale of Eternal Blossoms
local vfw = ns.maps[376] or Map({id = 376, parent = 424}) -- Valley of the Four Winds

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

kls.pins[6679] = Dungeon -- Shado-Pan Monastery
tjf.pins[6676] = Dungeon -- Temple of the Jade Serpent
tls.pins[6678] = Dungeon -- Siege of Niuzao Temple
veb.pins[6680] = Dungeon -- Mogu'shan Palace
veb.pins[6681] = Dungeon -- Gate of the Setting Sun
vfw.pins[6677] = Dungeon -- Stormstout Brewery

-------------------------------------------------------------------------------
------------------------------- INFINITE BAZAAR -------------------------------
-------------------------------------------------------------------------------

local InfiniteBazaar = Class('InfiniteBazaar', Pin, {
    group = ns.groups.INFINITE_BAZAAR
}) -- Infinite Bazaar

dws.pins[7721] = InfiniteBazaar
kls.pins[7719] = InfiniteBazaar
tjf.pins[7718] = InfiniteBazaar
tls.pins[7720] = InfiniteBazaar
veb.pins[7724] = InfiniteBazaar
vfw.pins[7722] = InfiniteBazaar

-------------------------------------------------------------------------------
------------------------------------ RAID -------------------------------------
-------------------------------------------------------------------------------

dws.pins[6510] = Raid -- Heart of Fear
kls.pins[6511] = Raid -- Mogu'shan Vaults
tvs.pins[6509] = Raid -- Terrace of Endless Spring
veb.pins[6507] = Raid -- Siege of Orgimmar

iot.pins[6508] = Raid({
	coordinates = 22580986
}) -- Throne of Thunder
