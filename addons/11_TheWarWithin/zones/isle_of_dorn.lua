-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map
local Class = ns.Class

local Delves = ns.pin.Delves
local SkyridingRace = ns.pin.SkyridingRace
local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

local map = Map({id = 2248, parent = 2274})
local dor = Map({id = 2339, parent = 2274})

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
-------------------------------------------------------------------------------

local FungalFolly = Class('FungalFolly', Delves, {
    coordinates = 77282930
}) -- Fungal Folly

local EarthcrawlMines = Class('EarthcrawlMines', Delves, {
    coordinates = 67003540
}) -- Earthcrawl Mines

local KriegvalsRest = Class('KriegvalsRest', Delves, {
    coordinates = 79082062
}) -- Kriegval's Rest

-- DELVES
map.pins[7863] = EarthcrawlMines -- Earthcrawl Mines
map.pins[7864] = FungalFolly -- Fungal Folly
map.pins[7865] = KriegvalsRest -- Kriegval's Rest

-- BOUNTIFUL DELVES
map.pins[7779] = FungalFolly -- Fungal Folly
map.pins[7781] = KriegvalsRest -- Kriegval's Rest
map.pins[7787] = EarthcrawlMines -- Earthcrawl Mines

-------------------------------------------------------------------------------
----------------------------------- DORNOGAL ----------------------------------
-------------------------------------------------------------------------------

map.pins[7898] = Pin({
    group = ns.groups.FACTION_DORNOGAL,
    coordinates = 70351801
}) -- Dornogal

-------------------------------------------------------------------------------
------------------------------- SKYRIDING RACE --------------------------------
-------------------------------------------------------------------------------

map.pins[7793] = SkyridingRace({coordinates = nil}) -- Basin Bypass
map.pins[7793] = SkyridingRace({coordinates = nil}) -- Dornogal Drift
map.pins[7794] = SkyridingRace({coordinates = nil}) -- Storm's Watch Survey
map.pins[7796] = SkyridingRace({coordinates = nil}) -- The Wold Ways
map.pins[7797] = SkyridingRace({coordinates = nil}) -- Thunderhead Trail
map.pins[7798] = SkyridingRace({coordinates = nil}) -- Orecreg's Doglegs

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

map.pins[7655] = Dungeon({
    coordinates = 68321890
}) -- The Rookery

map.pins[7857] = Dungeon({
    coordinates = 83632034
}) -- Cinderbrew Meadery

-------------------------------------------------------------------------------
--------------------------------- GREAT VAULT ---------------------------------
-------------------------------------------------------------------------------

local GreatVault = Pin({
    group = ns.groups.GREAT_VAULT,
    coordinates = 72622016
}) -- Great Vault

dor.pins[7831] = GreatVault -- Nerub-ar Palace
dor.pins[7958] = GreatVault -- Rewards Available

-------------------------------------------------------------------------------
------------------------------- THEATER TROUPE --------------------------------
-------------------------------------------------------------------------------

local TheaterTroupe = Pin({
    group = ns.groups.THEATER_TROUPE,
    coordinates = 74652141
}) -- Theater Troupe

map.pins[7654] = TheaterTroupe -- The Rivals
map.pins[7899] = TheaterTroupe -- The Wanderer
map.pins[7900] = TheaterTroupe -- Forget Me Not
map.pins[7901] = TheaterTroupe -- The Cruelty of Dornic
map.pins[7902] = TheaterTroupe -- The Thraegar's Descent
map.pins[7941] = TheaterTroupe -- The Rivals
map.pins[7943] = TheaterTroupe -- The Wanderer
