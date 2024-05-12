-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Delve = ns.pin.Delve
local DragonridingRace = ns.pin.DragonridingRace
local Dungeon = ns.pin.Dungeon

-------------------------------------------------------------------------------

local map = Map({id = 2214, parent = 2274})

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
-------------------------------------------------------------------------------

-- DELVE
map.pins[7866] = Delve -- The Waterworks
map.pins[7867] = Delve -- The Dread Pit

-- BOUNTIFUL DELVE
map.pins[7782] = Delve -- The Waterworks
map.pins[7788] = Delve -- The Dread Pit

-------------------------------------------------------------------------------
------------------------------ DRAGONRIDING RACE ------------------------------
-------------------------------------------------------------------------------

map.pins[7799] = DragonridingRace -- Earthenworks Weave
map.pins[7800] = DragonridingRace -- Ringing Deeps Ramble
map.pins[7801] = DragonridingRace -- Chittering Concourse
map.pins[7802] = DragonridingRace -- Cataract River Cruise
map.pins[7803] = DragonridingRace -- Taelloch Twist
map.pins[7804] = DragonridingRace -- Opportunity Point Amble

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

map.pins[7820] = Dungeon -- The Stonevault
map.pins[7821] = Dungeon -- Darkflame Cleft

-------------------------------------------------------------------------------
---------------------------------- GUNDARGAZ ----------------------------------
-------------------------------------------------------------------------------

map.pins[7911] = Pin({
	group = ns.groups.FACTION_GUNDARGAZ
}) -- Gundargaz
