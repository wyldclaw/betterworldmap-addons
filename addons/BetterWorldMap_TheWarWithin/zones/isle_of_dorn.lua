-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Delve = ns.pin.Delve
local DragonridingRace = ns.pins.DragonridingRace

-------------------------------------------------------------------------------

local map = Map({id = 2248, parent = 2274})

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
-------------------------------------------------------------------------------

-- DELVE
map.pins[7863] = Delve -- Earthcrawl Mines
map.pins[7864] = Delve -- Fungal Folly
map.pins[7865] = Delve -- Kriegval's Rest

-- BOUNTIFUL DELVE
map.pins[7779] = Delve -- Fungal Folly
map.pins[7781] = Delve -- Kriegval's Rest
map.pins[7787] = Delve -- Earthcrawl Mines

-------------------------------------------------------------------------------
----------------------------------- DORNOGAL ----------------------------------
-------------------------------------------------------------------------------

map.pins[7898] = Pin({group = ns.groups.FACTION_DORNOGAL}) -- Dornogal

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
--------------------------------- GREAT VAULT ---------------------------------
-------------------------------------------------------------------------------

local GreatVault = Pin({group = ns.groups.GREAT_VAULT}) -- Great Vault

map.pins[7831] = GreatVault -- Nerub-ar Palace
