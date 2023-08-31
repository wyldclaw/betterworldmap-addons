-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local ohn = Map({id = 2023, parent = 1978}) -- Ohn'ahran Plains
local tas = Map({id = 2024, parent = 1978}) -- The Azure Span
local tha = Map({id = 2025, parent = 1978}) -- Thaldraszus
local tws = Map({id = 2022, parent = 1978}) -- The Waking Shores
local zar = Map({id = 2133, parent = 1978}) -- Zaralek Cavern

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

ohn.pins[7215] = Dungeon -- The Nokhud Offensive
tas.pins[7209] = Dungeon -- Brackenhide Hallow
tas.pins[7214] = Dungeon -- The Azure Vault
tha.pins[7210] = Dungeon -- Halls of Infusion
tha.pins[7213] = Dungeon -- Algeth'ar Academy
tha.pins[7525] = Dungeon -- Dawn of the Infinite
tws.pins[7211] = Dungeon -- Neltharus
tws.pins[7212] = Dungeon -- Ruby Life Pools

-------------------------------------------------------------------------------
------------------------------------ RAIDS ------------------------------------
-------------------------------------------------------------------------------

tha.pins[7048] = Raid -- Vault of the Incarnates

zar.pins[7491] = Pin({
    coordinates = 87097407,
    group = ns.groups.RAID,
    passive = true
}) -- Aberrus, the Shadowed Crucible
