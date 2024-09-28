-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin
local SkyridingRace = ns.pin.SkyridingRace

local Delves = ns.pin.Delves
local Entrance = ns.pin.Entrance
local Portal = ns.pin.Portal
local SpecialAssignment = ns.pin.SpecialAssignment

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
---------------------------------- ENTRANCE -----------------------------------
-------------------------------------------------------------------------------

map.pins[8004] = Entrance -- Isle of Dorn
map.pins[8005] = Entrance -- Isle of Dorn
map.pins[8007] = Entrance -- Halowfall

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

-------------------------------------------------------------------------------
----------------------------------- PORTALS -----------------------------------
-------------------------------------------------------------------------------

map.pins[8010] = Portal -- Isle of Dorn

-------------------------------------------------------------------------------
----------------------------- SPECIAL ASSIGNMENT ------------------------------
-------------------------------------------------------------------------------

map.pins[7825] = SpecialAssignment -- Shadows Below
map.pins[7826] = SpecialAssignment -- When the Deeps Stir
