-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local ffr = Map({id = 525, parent = 572}) -- Frostfire Ridge
local gor = Map({id = 543, parent = 572}) -- Gorgrond
local nag = Map({id = 550, parent = 572}) -- Nagrand
local smv = Map({id = 539, parent = 572}) -- Shadowmoon Valley
local soa = Map({id = 542, parent = 572}) -- Spires of Arak
local tal = Map({id = 535, parent = 572}) -- Talador
local tan = Map({id = 534, parent = 572}) -- Tanaan Jungle

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

ffr.pins[6672] = Dungeon -- Bloodmaul Slag Mines
gor.pins[6669] = Dungeon -- The Everbloom
gor.pins[6670] = Dungeon -- Grimrail Depot
gor.pins[6671] = Dungeon -- Iron Docks
smv.pins[6675] = Dungeon -- Shadowmoon Burial Grounds
soa.pins[6674] = Dungeon -- Skyreach
tal.pins[6673] = Dungeon -- Auchindoun

-------------------------------------------------------------------------------
------------------------------------ RAIDS ------------------------------------
-------------------------------------------------------------------------------

gor.pins[6505] = Raid -- Blackrock Foundry
nag.pins[6506] = Raid -- Highmaul
tan.pins[6504] = Raid -- Hellfire Citadel
