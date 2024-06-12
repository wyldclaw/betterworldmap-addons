-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Delves = ns.pin.Delves
local DragonridingRace = ns.pin.DragonridingRace
local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local map = Map({id = 2255, parent = 2274})

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
-------------------------------------------------------------------------------

-- DELVES
map.pins[7872] = Delves -- The Underkeep
map.pins[7873] = Delves -- Tak-Rethan Abyss
map.pins[7874] = Delves -- The Spiral Weave
map.pins[7875] = Delves -- Zekvir's Lair

-- BOUNTIFUL DELVES
map.pins[7786] = Delves -- The Underkeep
map.pins[7784] = Delves -- Tak-Rethan Abyss
map.pins[7790] = Delves -- The Spiral Weave

-------------------------------------------------------------------------------
------------------------------ DRAGONRIDING RACE ------------------------------
-------------------------------------------------------------------------------

map.pins[7811] = DragonridingRace -- City of Threads Twist
map.pins[7812] = DragonridingRace -- Maddening Deep Dip
map.pins[7813] = DragonridingRace -- The Weaver's Wing
map.pins[7814] = DragonridingRace -- Rak-Ahat Rush
map.pins[7815] = DragonridingRace -- Pit Plunge
map.pins[7816] = DragonridingRace -- Siegehold Scuttle

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

map.pins[7545] = Dungeon -- Ara-Kara, City of Echoes
map.pins[7548] = Dungeon -- City of Threads

-------------------------------------------------------------------------------
------------------------------------ RAID -------------------------------------
-------------------------------------------------------------------------------

map.pins[7546] = Raid -- Nerub'ar Palace

-------------------------------------------------------------------------------
------------------------------ THE WEAVER'S LAIR ------------------------------
-------------------------------------------------------------------------------

map.pins[7940] = Pin({
	group = ns.groups.FACTION_WEAVERS_LAIR
}) -- The Weaver's Lair
