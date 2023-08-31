-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local ash = Map({id = 63, parent = 12}) -- Ashenvale
local des = Map({id = 66, parent = 12}) -- Desolace
local dwm = Map({id = 70, parent = 12}) -- Dustwallow Marsh
local fer = Map({id = 69, parent = 12}) -- Feralas
local hyj = Map({id = 198, parent = 12}) -- Mount Hyjal
local nbs = Map({id = 10, parent = 12}) -- Norther Barrens
local nee = Map({id = 64, parent = 12}) -- Thousand Needles
local org = Map({id = 85, parent = 12}) -- Orgimmar
local sil = Map({id = 81, parent = 12}) -- Silithus
local tan = Map({id = 71, parent = 12}) -- Tanaris
local uld = Map({id = 249, parent = 12}) -- Uldum
local zth = Map({id = 1527, parent = 12}) -- Uludum (N'Zoth)

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

ash.pins[6498] = Dungeon -- Blackfathom Deeps
des.pins[6503] = Dungeon -- Maraudon
fer.pins[6501] = Dungeon -- Dire Maul
nbs.pins[6720] = Dungeon -- Wailing Caverns
nee.pins[6727] = Dungeon -- Razorfen Kraul
nee.pins[6728] = Dungeon -- Razorfen Downs
org.pins[6846] = Dungeon -- Ragefire Chasm
tan.pins[6719] = Dungeon -- Zul'Farrak
uld.pins[6685] = Dungeon -- The Vortex Pinnacle
uld.pins[6686] = Dungeon -- Lost City of the Tol'vir
uld.pins[6688] = Dungeon -- Halls of Origination

-------------------------------------------------------------------------------
------------------------------------ RAIDS ------------------------------------
-------------------------------------------------------------------------------

dwm.pins[6527] = Raid -- Onyxia's Lair
hyj.pins[6514] = Raid -- Firelands
sil.pins[6537] = Raid -- Temple of Ahn'Qiraj
sil.pins[6538] = Raid -- Ruins of Ahn'Qiraj
uld.pins[6515] = Raid -- Throne of the Four Winds
zth.pins[6540] = Raid -- Ny'alotha, the Waking City
