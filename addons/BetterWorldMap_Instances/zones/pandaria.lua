-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local drw = Map({id = 422, parent = 424}) -- Dread Wastes
local iot = Map({id = 504, parent = 424}) -- Isle of Thunder
local kls = Map({id = 379, parent = 424}) -- Kun-Lai Summit
local tjf = Map({id = 371, parent = 424}) -- The Jade Forest
local tls = Map({id = 388, parent = 424}) -- Townlong Steppes
local tvs = Map({id = 433, parent = 424}) -- The Veiled Stair
local veb = Map({id = 390, parent = 424}) -- Vale of Eternal Blossoms
local vfw = Map({id = 376, parent = 424}) -- Valley of the Four Winds
local zth = Map({id = 1530, parent = 424}) -- Vale of Eternal Blossoms (N'Zoth)

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

kls.pins[6679] = Dungeon -- Shadow-Pan Monastery
tjf.pins[6676] = Dungeon -- Temple of the Jade Serpent
tls.pins[6678] = Dungeon -- Siege of Niuzao Temple
veb.pins[6680] = Dungeon -- Mogu'shan Palace
veb.pins[6681] = Dungeon -- Gate of the Setting Sun
vfw.pins[6677] = Dungeon -- Stormstout Brewery

-------------------------------------------------------------------------------
------------------------------------ RAIDS ------------------------------------
-------------------------------------------------------------------------------

drw.pins[6510] = Raid -- Heart of Fear
kls.pins[6511] = Raid -- Mogu'shan Vaults
tvs.pins[6509] = Raid -- Terrance of Endless Spring
veb.pins[6507] = Raid -- Siege of Orgimmar
zth.pins[6539] = Raid -- Ny'alotha, the Waking City

iot.pins[6508] = Pin({
    coordinates = 22610893,
    group = ns.groups.RAID,
    passive = true
}) -- Throne of Thunder
