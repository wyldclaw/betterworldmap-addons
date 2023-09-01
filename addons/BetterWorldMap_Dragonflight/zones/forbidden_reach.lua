-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local AncientWaygate = ns.pin.AncientWaygate
local FishingHole = ns.pin.FishingHole
local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

local map = Map({id = 2151, parent = 1978})

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map.pins[2862] = AncientWaygate({coordinates = 61221253}) -- Morqut Islet

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map.pins[7412] = FishingHole -- Dragonskull Island Fishing Hole

-------------------------------------------------------------------------------
------------------------ FROSTSTONE VAULT PRIMAL STORM ------------------------
-------------------------------------------------------------------------------

local FrostStoneVaultStorm = Pin({
	group = ns.groups.FROSTSTONE_VAULT_STORM
}) -- Frostone Vault Primal Storm

map.pins[7408] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Air
map.pins[7409] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Earth
map.pins[7410] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Fire
map.pins[7411] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Water
