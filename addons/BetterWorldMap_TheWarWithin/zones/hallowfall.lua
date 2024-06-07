-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Delve = ns.pin.Delve
local DragonridingRace = ns.pin.DragonridingRace
local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

local map = Map({id = 2215, parent = 2274})

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
-------------------------------------------------------------------------------

-- DELVE
map.pins[7868] = Delve -- Nightfall Sanctum
map.pins[7869] = Delve -- Mycomancer Cavern
map.pins[7870] = Delve -- The Sinkhole
map.pins[7871] = Delve -- Skittering Breach

-- BOUNTIFUL DELVE
map.pins[7780] = Delve -- Mycomancer Cavern
map.pins[7783] = Delve -- The Sinkhole
map.pins[7785] = Delve -- Nightfall Sanctum
map.pins[7789] = Delve -- Skittering Breach

-------------------------------------------------------------------------------
------------------------------ DRAGONRIDING RACE ------------------------------
-------------------------------------------------------------------------------

map.pins[7805] = DragonridingRace -- Dunelle's Detour
map.pins[7806] = DragonridingRace -- Tenir's Traversal
map.pins[7807] = DragonridingRace -- Light's Redoubt Descent
map.pins[7808] = DragonridingRace -- Stillstone Slalom
map.pins[7809] = DragonridingRace -- Mereldar Meander
map.pins[7810] = DragonridingRace -- Velhan's Venture

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

map.pins[7858] = Dungeon -- Priory of the Sacred Flame
map.pins[7892] = Dungeon -- The Dawnbreaker

-------------------------------------------------------------------------------
----------------------------------- MERELDAR ----------------------------------
-------------------------------------------------------------------------------

map.pins[7893] = Pin({
	group = ns.groups.FACTION_MERELDAR
}) -- Mereldar
