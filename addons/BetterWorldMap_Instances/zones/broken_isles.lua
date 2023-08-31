-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Dungeon = ns.pin.Dungeon
local Pin = ns.pin.Pin
local Raid = ns.pin.Raid

-------------------------------------------------------------------------------

local ant = Map({id = 885, parent = 619}) -- Antoran Wastes
local azs = Map({id = 630, parent = 619}) -- Azsuna
local dal = Map({id = 627, parent = 619}) -- Dalaran
local ere = Map({id = 882, parent = 619}) -- Eredath
local mnt = Map({id = 650, parent = 619}) -- Highmountain
local stm = Map({id = 634, parent = 619}) -- Stormheim
local sur = Map({id = 680, parent = 619}) -- Suramar
local tbs = Map({id = 646, parent = 619}) -- The Broken Shore
local val = Map({id = 641, parent = 619}) -- Val'Sharah

-------------------------------------------------------------------------------
---------------------------------- DUNGEONS -----------------------------------
-------------------------------------------------------------------------------

azs.pins[5091] = Dungeon -- Eye of Azshara
azs.pins[5092] = Dungeon -- Vault of the Wardens
dal.pins[5098] = Dungeon -- Assault on Violet Hold
ere.pins[5327] = Dungeon -- Seat of the Triumvirate
mnt.pins[5103] = Dungeon -- Neltharion's Lair
stm.pins[5096] = Dungeon -- Halls of Valor
stm.pins[5097] = Dungeon -- Maw of Souls
sur.pins[5099] = Dungeon -- The Arcway
sur.pins[5100] = Dungeon -- Court of Stars
val.pins[5093] = Dungeon -- Black Rook Hold
val.pins[5094] = Dungeon -- Darkheart Thicket

tbs.pins[5251] = Pin({
    coordinates = 89881435,
    group = ns.groups.DUNGEON,
    passive = true
}) -- Cathedral of Eternal Night

-------------------------------------------------------------------------------
------------------------------------ RAIDS ------------------------------------
-------------------------------------------------------------------------------

stm.pins[5164] = Raid -- Trial of Valor
sur.pins[5101] = Raid -- The Nighthold
tbs.pins[5250] = Raid -- Tomb of Sargeras
val.pins[5095] = Raid -- Emerald Nightmare

ant.pins[5440] = Pin({
    coordinates = 80991883,
    group = ns.groups.RAID,
    passive = true
}) -- Antorus, the Burning Throne
