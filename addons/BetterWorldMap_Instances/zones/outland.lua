-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local bem = Map({id = 105, parent = 101}) -- Blade's Edge Mountains
local hel = Map({id = 100, parent = 101}) -- Hellfire Peninsula
local net = Map({id = 109, parent = 101}) -- Netherstorm
local smv = Map({id = 104, parent = 101}) -- Shadowmoon Valley
local ter = Map({id = 108, parent = 101}) -- Terokkar Forest
local zan = Map({id = 102, parent = 101}) -- Zangarmarsh

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

hel.pins[6708] = Dungeon -- The Blood Furnace
hel.pins[6709] = Dungeon -- Hellfire Ramparts
hel.pins[6710] = Dungeon -- The Shattered Halls
net.pins[6711] = Dungeon -- The Botanica
net.pins[6712] = Dungeon -- The Mechanar
net.pins[6713] = Dungeon -- The Arcatraz
ter.pins[6714] = Dungeon -- Shadow Labyrinth
ter.pins[6715] = Dungeon -- Auchenai Crypts
ter.pins[6716] = Dungeon -- Mana-Tombs
ter.pins[6717] = Dungeon -- Sethekk Halls
zan.pins[6705] = Dungeon -- The Slave Pens
zan.pins[6706] = Dungeon -- The Steamvault
zan.pins[6707] = Dungeon -- The Underbog

-------------------------------------------------------------------------------
------------------------------------ RAIDS ------------------------------------
-------------------------------------------------------------------------------

bem.pins[6529] = Raid -- Gruul's Lair
hel.pins[6531] = Raid -- Magtheridon's Lair
net.pins[6534] = Raid -- The Eye
smv.pins[6532] = Raid -- Black Temple
zan.pins[6530] = Raid -- Serpentshrine Cavern
