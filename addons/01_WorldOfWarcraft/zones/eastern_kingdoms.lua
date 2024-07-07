-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local EasternKingdomsCup = ns.pin.EasternKingdomsCup

-------------------------------------------------------------------------------

local bad = Map({id = 15, parent = 13}) -- Badlands
local bla = Map({id = 17, parent = 13}) -- Blasted Lands
local cos = Map({id = 210, parent = 13}) -- The Cape of Stranglethorn
local dun = Map({id = 27, parent = 13}) -- Dun Morogh
local dwp = Map({id = 42, parent = 13}) -- Deadwind Pass
local elw = Map({id = 37, parent = 13}) -- Elwynn Forest
local epl = Map({id = 23, parent = 13}) -- Eastern Plaguelands
local lmd = Map({id = 48, parent = 13}) -- Lock Modan
local nst = Map({id = 50, parent = 13}) -- Northern Stranglethorn
local rog = Map({id = 217, parent = 13}) -- Ruins of Gilneas
local rrm = Map({id = 49, parent = 13}) -- Redridge Mountains
local sea = Map({id = 32, parent = 13}) -- Searing Gorge
local twi = Map({id = 241, parent = 13}) -- Twilight Highlands

-------------------------------------------------------------------------------
---------------------------- EASTERN KINGDOMS CUP -----------------------------
-------------------------------------------------------------------------------

bad.pins[7582] = EasternKingdomsCup -- Fuselight Night Flight
bla.pins[7579] = EasternKingdomsCup -- Blasted Lands Bolt
cos.pins[7581] = EasternKingdomsCup -- Booty Bay Blast
dun.pins[7578] = EasternKingdomsCup -- Ironforge Interceptor
dwp.pins[7575] = EasternKingdomsCup -- Deadwind Derby
elw.pins[7576] = EasternKingdomsCup -- Elwynn Forest Flash
epl.pins[7580] = EasternKingdomsCup -- Plaguelands Plunge
lmd.pins[7572] = EasternKingdomsCup -- Loch Modan Loop
nst.pins[7577] = EasternKingdomsCup -- Gurubashi Gala
rog.pins[7571] = EasternKingdomsCup -- Gilneas Gambit
rrm.pins[7584] = EasternKingdomsCup -- Redridge Rally
sea.pins[7573] = EasternKingdomsCup -- Searing Slalom
twi.pins[7574] = EasternKingdomsCup -- Twilight Terror
twi.pins[7583] = EasternKingdomsCup -- Krazzworks Klash
