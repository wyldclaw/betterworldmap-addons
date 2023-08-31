-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local ard = Map({id = 1565, parent = 1550}) -- Ardenweald
local bas = Map({id = 1533, parent = 1550}) -- Bastion
local mal = Map({id = 1536, parent = 1550}) -- Maldraxxus
local maw = Map({id = 1543, parent = 1550}) -- The Maw
local rev = Map({id = 1525, parent = 1550}) -- Revendreth
local taz = Map({id = 2016, parent = 1550}) -- Tazavesh, the Veiled Market
local zer = Map({id = 1970, parent = 1550}) -- Zereth Mortis

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

ard.pins[6586] = Dungeon -- Mists of Tirna Scithe
ard.pins[6587] = Dungeon -- De Other Side
bas.pins[6582] = Dungeon -- Necrotic Wake
bas.pins[6583] = Dungeon -- Spires of Ascension
mal.pins[6584] = Dungeon -- Theater of Pain
mal.pins[6585] = Dungeon -- Plaguefall
rev.pins[6588] = Dungeon -- Halls of Atonement
rev.pins[6589] = Dungeon -- Sanguine Depths

-- taz.pins[] = Pin({
--     coordinates = 88954412,
--     group = ns.groups.DUNGEON,
-- }) -- Tazavesh, the Veiled Market

-------------------------------------------------------------------------------
------------------------------------ RAIDS ------------------------------------
-------------------------------------------------------------------------------

maw.pins[6994] = Raid -- Sanctum of Domination
rev.pins[6590] = Raid -- Castle Nathria

zer.pins[7021] = Pin({
    coordinates = 89367970,
    group = ns.groups.RAID,
    passive = true
}) -- Sepulcher of the First Ones
