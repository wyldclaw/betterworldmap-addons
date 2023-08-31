-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local bad = Map({id = 15, parent = 13}) -- Badlands
local brc = Map({id = 34, parent = 13}) -- Blackrock Caverns
local brd = Map({id = 35, parent = 13}) -- Blackrock Depths
local brs = Map({id = 33, parent = 13}) -- Blackrock Spire
local bur = Map({id = 36, parent = 13}) -- Burning Steppes
local cot = Map({id = 75, parent = 13}) -- Caverns of Time
local dun = Map({id = 27, parent = 13}) -- Dun Morogh
local dwp = Map({id = 42, parent = 13}) -- Deadwind Pass
local elw = Map({id = 37, parent = 13}) -- Elwynn Forest
local epl = Map({id = 23, parent = 13}) -- Eastern Plaguelands
local gho = Map({id = 95, parent = 13}) -- Ghostlands
local iqd = Map({id = 122, parent = 13}) -- Isle of Quel'Danas
local sos = Map({id = 51, parent = 13}) -- Swamp of Sorrows
local spf = Map({id = 21, parent = 13}) -- Silverpine Forest
local stv = Map({id = 224, parent = 13}) -- Stranglethorn Vale
local tfg = Map({id = 18, parent = 13}) -- Tirisfall Glades
local tol = Map({id = 244, parent = 13}) -- Tol Barad
local twi = Map({id = 241, parent = 13}) -- Twilight Highlands
local vas = Map({id = 203, parent = 13}) -- Vashj'ir
local wes = Map({id = 52, parent = 13}) -- Westfall
local wpl = Map({id = 22, parent = 13}) -- Western Plaguelands

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

bad.pins[6721] = Dungeon -- Uldaman
bad.pins[7216] = Dungeon -- Uldaman: Legacy of Tyr
brc.pins[6662] = Dungeon -- Blackrock Caverns
brd.pins[6499] = Dungeon -- Blackrock Depths
brs.pins[6660] = Dungeon -- Upper Blackrock Spire
brs.pins[6661] = Dungeon -- Lower Blackrock Spire
cot.pins[6663] = Dungeon -- The Culling of Stratholme
cot.pins[6664] = Dungeon -- The Black Morass
cot.pins[6665] = Dungeon -- Well of Eternity
cot.pins[6666] = Dungeon -- Old Hillsbrad Foothills
cot.pins[6667] = Dungeon -- End Time
cot.pins[6668] = Dungeon -- Hour of Twilight
dun.pins[6502] = Dungeon -- Gnomeregan
elw.pins[6723] = Dungeon -- The Stockade
epl.pins[6724] = Dungeon -- Stratholme
gho.pins[6683] = Dungeon -- Zul'Aman
iqd.pins[6718] = Dungeon -- Magisters' Terrace
sos.pins[6722] = Dungeon -- The Temple of Atal'hakkar
spf.pins[6725] = Dungeon -- Shadowfang Keep
stv.pins[6682] = Dungeon -- Zul'Gurub
tfg.pins[6496] = Dungeon -- Scarlet Halls
tfg.pins[6497] = Dungeon -- Scarlet Monastery
twi.pins[6689] = Dungeon -- Grim Batol
vas.pins[6684] = Dungeon -- Throne of the Tides
wes.pins[6500] = Dungeon -- The Deadmines
wpl.pins[6726] = Dungeon -- Scholomance

-------------------------------------------------------------------------------
------------------------------------ RAIDS ------------------------------------
-------------------------------------------------------------------------------

brd.pins[6535] = Raid -- Molten Core
brs.pins[6536] = Raid -- Blackwing Lair
bur.pins[6517] = Raid -- Blackwing Descent
cot.pins[6512] = Raid -- Dragon Soul
cot.pins[6513] = Raid -- Battle for Mount Hyjal
dwp.pins[6528] = Raid -- Karazhan
iqd.pins[6533] = Raid -- Sunwell Plateau
twi.pins[6516] = Raid -- The Bastion of Twilight

tol.pins[6518] = Pin({
	coordinates = 35325172,
	group = ns.groups.RAID,
	passive = true
}) -- Baradin Hold
