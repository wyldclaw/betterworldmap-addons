-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Delves = ns.pin.Delves
local SkyridingRace = ns.pin.SkyridingRace
local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

local map = Map({id = 2214, parent = 2274})

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
-------------------------------------------------------------------------------

-- DELVES
map.pins[7866] = Delves -- The Waterworks
map.pins[7867] = Delves -- The Dread Pit

-- BOUNTIFUL DELVES
map.pins[7782] = Delves -- The Waterworks
map.pins[7788] = Delves -- The Dread Pit

-------------------------------------------------------------------------------
------------------------------- SKYRIDING RACE --------------------------------
-------------------------------------------------------------------------------

map.pins[7799] = SkyridingRace -- Earthenworks Weave
map.pins[7800] = SkyridingRace -- Ringing Deeps Ramble
map.pins[7801] = SkyridingRace -- Chittering Concourse
map.pins[7802] = SkyridingRace -- Cataract River Cruise
map.pins[7803] = SkyridingRace -- Taelloch Twist
map.pins[7804] = SkyridingRace -- Opportunity Point Amble

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
