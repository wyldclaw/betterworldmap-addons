-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Delves = ns.pin.Delves
local DragonridingRace = ns.pin.DragonridingRace
local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

local map = Map({id = 2248, parent = 2274})
local dor = Map({id = 2339, parent = 2274})

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
-------------------------------------------------------------------------------

-- DELVES
map.pins[7863] = Delves -- Earthcrawl Mines
map.pins[7864] = Delves -- Fungal Folly
map.pins[7865] = Delves -- Kriegval's Rest

-- BOUNTIFUL DELVES
map.pins[7779] = Delves -- Fungal Folly
map.pins[7781] = Delves -- Kriegval's Rest
map.pins[7787] = Delves -- Earthcrawl Mines

-------------------------------------------------------------------------------
----------------------------------- DORNOGAL ----------------------------------
-------------------------------------------------------------------------------

map.pins[7898] = Pin({
	group = ns.groups.FACTION_DORNOGAL
}) -- Dornogal

-------------------------------------------------------------------------------
------------------------------ DRAGONRIDING RACE ------------------------------
-------------------------------------------------------------------------------

map.pins[7793] = DragonridingRace -- Basin Bypass
map.pins[7793] = DragonridingRace -- Dornogal Drift
map.pins[7794] = DragonridingRace -- Storm's Watch Survey
map.pins[7796] = DragonridingRace -- The Wold Ways
map.pins[7797] = DragonridingRace -- Thunderhead Trail
map.pins[7798] = DragonridingRace -- Orecreg's Doglegs

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

map.pins[7655] = Dungeon -- The Rookery
map.pins[7857] = Dungeon -- Cinderbrew Meadery

-------------------------------------------------------------------------------
--------------------------------- GREAT VAULT ---------------------------------
-------------------------------------------------------------------------------

local GreatVault = Pin({
	group = ns.groups.GREAT_VAULT
}) -- Great Vault

dor.pins[7831] = GreatVault -- Nerub-ar Palace
dor.pins[7958] = GreatVault -- Rewards Available
-------------------------------------------------------------------------------
------------------------------- THEATER TROUPE --------------------------------
-------------------------------------------------------------------------------

local TheaterTroupe = Pin({
	group = ns.groups.THEATER_TROUPE
}) -- Theater Troupe

map.pins[7654] = TheaterTroupe -- The Rivals
map.pins[7899] = TheaterTroupe -- The Wanderer
map.pins[7900] = TheaterTroupe -- Forget Me Not
map.pins[7901] = TheaterTroupe -- The Cruelty of Dornic
map.pins[7902] = TheaterTroupe -- The Thraegar's Descent
map.pins[7941] = TheaterTroupe -- The Rivals
map.pins[7943] = TheaterTroupe -- The Wanderer
