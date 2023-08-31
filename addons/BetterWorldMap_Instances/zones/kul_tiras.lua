-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local dru = Map({id = 896, parent = 876}) -- Drustvar
local gon = Map({id = 1462, parent = 876}) -- Mechagon
local ssv = Map({id = 942, parent = 876}) -- Stormsong Valley
local tir = Map({id = 895, parent = 876}) -- Tiragarde Sound
local tol = Map({id = 1169, parent = 876}) -- Tol Dagor

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

dru.pins[5832] = Dungeon -- Waycrest Manor
gon.pins[6129] = Dungeon -- Operation: Mechagon
ssv.pins[5835] = Dungeon -- Shrine of the Storm
tir.pins[5833] = Dungeon -- Siege of Boralus (Alliance)
tir.pins[5834] = Dungeon -- Freehold
tol.pins[5831] = Dungeon -- Tol Dagor

-------------------------------------------------------------------------------
------------------------------------ RAIDS ------------------------------------
-------------------------------------------------------------------------------

ssv.pins[6116] = Raid -- Crucible of Storms
tir.pins[6013] = Raid -- Battle of Dazar'alor (Alliance)
