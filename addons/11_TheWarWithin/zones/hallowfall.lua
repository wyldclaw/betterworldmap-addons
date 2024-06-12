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

local map = Map({id = 2215, parent = 2274})

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
-------------------------------------------------------------------------------

-- DELVES
map.pins[7868] = Delves -- Nightfall Sanctum
map.pins[7869] = Delves -- Mycomancer Cavern
map.pins[7870] = Delves -- The Sinkhole
map.pins[7871] = Delves -- Skittering Breach

-- BOUNTIFUL DELVES
map.pins[7780] = Delves -- Mycomancer Cavern
map.pins[7783] = Delves -- The Sinkhole
map.pins[7785] = Delves -- Nightfall Sanctum
map.pins[7789] = Delves -- Skittering Breach

-------------------------------------------------------------------------------
------------------------------- SKYRIDING RACE --------------------------------
-------------------------------------------------------------------------------

map.pins[7805] = SkyridingRace -- Dunelle's Detour
map.pins[7806] = SkyridingRace -- Tenir's Traversal
map.pins[7807] = SkyridingRace -- Light's Redoubt Descent
map.pins[7808] = SkyridingRace -- Stillstone Slalom
map.pins[7809] = SkyridingRace -- Mereldar Meander
map.pins[7810] = SkyridingRace -- Velhan's Venture

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
