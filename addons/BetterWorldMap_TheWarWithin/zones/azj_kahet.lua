-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Delve = ns.pin.Delve
local DragonridingRace = ns.pins.DragonridingRace

-------------------------------------------------------------------------------

local map = Map({id = 2255, parent = 2274})

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
-------------------------------------------------------------------------------

-- DELVE
map.pins[7872] = Delve -- The Underkeep
map.pins[7873] = Delve -- Tak-Rethan Abyss
map.pins[7874] = Delve -- The Spiral Weave
map.pins[7875] = Delve -- Zekvir's Lair

-- BOUNTIFUL DELVE
map.pins[7786] = Delve -- The Underkeep
map.pins[7784] = Delve -- Tak-Rethan Abyss
map.pins[7790] = Delve -- The Spiral Weave

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
------------------------------ THE WEAVER'S LAIR ------------------------------
-------------------------------------------------------------------------------

map.pins[7940] = Pin({group = ns.groups.FACTION_WEAVERS_LAIR}) -- The Weaver's Lair
