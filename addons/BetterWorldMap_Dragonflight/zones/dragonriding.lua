-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

local ash = Map({id = 63, parent = 12}) -- Ashenvale
local azs = Map({id = 76, parent = 12}) -- Azshara
local des = Map({id = 66, parent = 12}) -- Desolace
local dur = Map({id = 1, parent = 12}) -- Durotar
local fel = Map({id = 77, parent = 12}) -- Felwood
local fer = Map({id = 69, parent = 12}) -- Feralas
local hyj = Map({id = 198, parent = 12}) -- Mount Hyjal
local nee = Map({id = 64, parent = 12}) -- Thousand Needles
local sbs = Map({id = 199, parent = 12}) -- Southern Barrens
local sil = Map({id = 81, parent = 12}) -- Silithus
local stm = Map({id = 65, parent = 12}) -- Stonetalon Mountains
local ugc = Map({id = 78, parent = 12}) -- Un'Goro Crater
local uld = Map({id = 249, parent = 12}) -- Uldum
local wsp = Map({id = 83, parent = 12}) -- Winterspring

local bad = Map({id = 15, parent = 13}) -- Badlands
local bla = Map({id = 17, parent = 13}) -- Blasted Lands
local cos = Map({id = 210, parent = 13}) -- The Cape of Stranglethorn
local dun = Map({id = 27, parent = 13}) -- Dun Morogh
local dwp = Map({id = 42, parent = 13}) -- Deadwind Pass
local elw = Map({id = 37, parent = 13}) -- Elwynn Forest
local epl = Map({id = 23, parent = 13}) -- Eastern Plaguelands
local lmd = Map({id = 48, parent = 13}) -- Lock Modan
local rog = Map({id = 217, parent = 13}) -- Ruins of Gilneas
local rrm = Map({id = 49, parent = 13}) -- Redridge Mountains
local sea = Map({id = 32, parent = 13}) -- Searing Gorge
local twi = Map({id = 241, parent = 13}) -- Twilight Highlands

-- local bem = Map({id = 105, parent = 101}) -- Blade's Edge Mountains
-- local hel = Map({id = 100, parent = 101}) -- Hellfire Peninsula
-- local nag = Map({id = 107, parent = 101}) -- Nagrand
-- local net = Map({id = 109, parent = 101}) -- Netherstorm
-- local smv = Map({id = 104, parent = 101}) -- Shadowmoon Valley
-- local ter = Map({id = 108, parent = 101}) -- Terokkar Forest
-- local zan = Map({id = 102, parent = 101}) -- Zangarmarsh

-------------------------------------------------------------------------------
-------------------------------- KALIMDOR CUP ---------------------------------
-------------------------------------------------------------------------------

local KalimdorCup = Pin({
    group = ns.groups.KALIMDOR_CUP
}) -- Kalimdor Cup

ash.pins[7499] = KalimdorCup -- Ashenvale Ambit
azs.pins[7498] = KalimdorCup -- Rocketway Ride
des.pins[7502] = KalimdorCup -- Desolace Drift
dur.pins[7500] = KalimdorCup -- Durotar Tour
fel.pins[7494] = KalimdorCup -- Fel Flyby
fer.pins[7506] = KalimdorCup -- Feralas Ruins Ramble
hyj.pins[7496] = KalimdorCup -- Nordrassil Spiral
hyj.pins[7497] = KalimdorCup -- Hyjal Hotfoot
nee.pins[7505] = KalimdorCup -- Thousand Needles Thread
sbs.pins[7503] = KalimdorCup -- Barrens Divide Dive
sbs.pins[7504] = KalimdorCup -- Razorfen Roundabout
sil.pins[7507] = KalimdorCup -- Ahn'Qiraj Circuit
stm.pins[7501] = KalimdorCup -- Webwinder Weave
ugc.pins[7509] = KalimdorCup -- Un'Goro Crater Circuit
uld.pins[7508] = KalimdorCup -- Uldum Tour
wsp.pins[7495] = KalimdorCup -- Winter Wander

-------------------------------------------------------------------------------
---------------------------- Eastern Kingdoms Cup -----------------------------
-------------------------------------------------------------------------------

local EasternKingdomsCup = Pin({
    group = ns.groups.EASTERN_KINGDOMS_CUP
}) -- Eastern Kingdoms Cup

bad.pins[7582] = EasternKingdomsCup -- Fuselight Night Flight
bla.pins[7579] = EasternKingdomsCup -- Blasted Lands Bolt
cos.pins[7577] = EasternKingdomsCup -- Gurubashi Gala
cos.pins[7581] = EasternKingdomsCup -- Booty Bay Blast
dun.pins[7578] = EasternKingdomsCup -- Ironforge Interceptor
dwp.pins[7575] = EasternKingdomsCup -- Deadwind Derby
elw.pins[7576] = EasternKingdomsCup -- Elwynn Forest Flash
epl.pins[7580] = EasternKingdomsCup -- Plaguelands Plunge
lmd.pins[7572] = EasternKingdomsCup -- Loch Modan Loop
rog.pins[7571] = EasternKingdomsCup -- Gilneas Gambit
rrm.pins[7584] = EasternKingdomsCup -- Redridge Rally
sea.pins[7573] = EasternKingdomsCup -- Searing Slalom
twi.pins[7574] = EasternKingdomsCup -- Twilight Terror
twi.pins[7583] = EasternKingdomsCup -- Krazzworks Klash

-------------------------------------------------------------------------------
--------------------------------- Outland Cup ---------------------------------
-------------------------------------------------------------------------------

-- local OutlandCup = Pin({
--     group = ns.groups.OUTLAND_CUP
-- }) -- Outland Cup

-- bem.pins[7591] = OutlandCup -- Blade's Edge Brawl
-- hel.pins[7589] = OutlandCup -- Hellfire Hustle
-- hel.pins[7593] = OutlandCup -- Razorthorn Rise Rush
-- nag.pins[7592] = OutlandCup -- Telaar Tear
-- nag.pins[7599] = OutlandCup -- Warmaul Wingding
-- net.pins[7595] = OutlandCup -- Tempest Keep Sweep
-- net.pins[7598] = OutlandCup -- Eco-Dome Excursion
-- smv.pins[7597] = OutlandCup -- Shadowmoon Slam
-- smv.pins[7601] = OutlandCup -- Fel Pit Fracas
-- ter.pins[7594] = OutlandCup -- Auchindoun Coaster
-- ter.pins[7596] = OutlandCup -- Shattrath City Sashay
-- ter.pins[7600] = OutlandCup -- Skettis Scramble
-- zan.pins[7590] = OutlandCup -- Coilfang Caper
