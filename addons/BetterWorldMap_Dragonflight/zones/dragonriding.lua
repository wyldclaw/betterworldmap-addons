-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Pin = ns.pin.Pin

-------------------------------------------------------------------------------
-------------------------------- KALIMDOR CUP ---------------------------------
-------------------------------------------------------------------------------

local ash = ns.maps[63] or Map({id = 63, parent = 12}) -- Ashenvale
local azs = ns.maps[76] or Map({id = 76, parent = 12}) -- Azshara
local des = ns.maps[66] or Map({id = 66, parent = 12}) -- Desolace
local dur = ns.maps[1] or Map({id = 1, parent = 12}) -- Durotar
local fel = ns.maps[77] or Map({id = 77, parent = 12}) -- Felwood
local fer = ns.maps[69] or Map({id = 69, parent = 12}) -- Feralas
local hyj = ns.maps[198] or Map({id = 198, parent = 12}) -- Mount Hyjal
local nee = ns.maps[64] or Map({id = 64, parent = 12}) -- Thousand Needles
local sbs = ns.maps[199] or Map({id = 199, parent = 12}) -- Southern Barrens
local sil = ns.maps[81] or Map({id = 81, parent = 12}) -- Silithus
local stm = ns.maps[65] or Map({id = 65, parent = 12}) -- Stonetalon Mountains
local ugc = ns.maps[78] or Map({id = 78, parent = 12}) -- Un'Goro Crater
local uld = ns.maps[249] or Map({id = 249, parent = 12}) -- Uldum
local wsp = ns.maps[83] or Map({id = 83, parent = 12}) -- Winterspring

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
---------------------------- EASTERN KINGDOMS CUP -----------------------------
-------------------------------------------------------------------------------

local bad = ns.maps[15] or Map({id = 15, parent = 13}) -- Badlands
local bla = ns.maps[17] or Map({id = 17, parent = 13}) -- Blasted Lands
local cos = ns.maps[210] or Map({id = 210, parent = 13}) -- The Cape of Stranglethorn
local dun = ns.maps[27] or Map({id = 27, parent = 13}) -- Dun Morogh
local dwp = ns.maps[42] or Map({id = 42, parent = 13}) -- Deadwind Pass
local elw = ns.maps[37] or Map({id = 37, parent = 13}) -- Elwynn Forest
local epl = ns.maps[23] or Map({id = 23, parent = 13}) -- Eastern Plaguelands
local lmd = ns.maps[48] or Map({id = 48, parent = 13}) -- Lock Modan
local nst = ns.maps[50] or Map({id = 50, parent = 13}) -- Northern Stranglethorn
local rog = ns.maps[217] or Map({id = 217, parent = 13}) -- Ruins of Gilneas
local rrm = ns.maps[49] or Map({id = 49, parent = 13}) -- Redridge Mountains
local sea = ns.maps[32] or Map({id = 32, parent = 13}) -- Searing Gorge
local twi = ns.maps[241] or Map({id = 241, parent = 13}) -- Twilight Highlands

local EasternKingdomsCup = Pin({
    group = ns.groups.EASTERN_KINGDOMS_CUP
}) -- Eastern Kingdoms Cup

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

-------------------------------------------------------------------------------
--------------------------------- OUTLAND CUP ---------------------------------
-------------------------------------------------------------------------------

local bem = ns.maps[105] or Map({id = 105, parent = 101}) -- Blade's Edge Mountains
local hel = ns.maps[100] or Map({id = 100, parent = 101}) -- Hellfire Peninsula
local nag = ns.maps[107] or Map({id = 107, parent = 101}) -- Nagrand
local net = ns.maps[109] or Map({id = 109, parent = 101}) -- Netherstorm
local smv = ns.maps[104] or Map({id = 104, parent = 101}) -- Shadowmoon Valley
local ter = ns.maps[108] or Map({id = 108, parent = 101}) -- Terokkar Forest
local zan = ns.maps[102] or Map({id = 102, parent = 101}) -- Zangarmarsh

local OutlandCup = Pin({
    group = ns.groups.OUTLAND_CUP
}) -- Outland Cup

bem.pins[7591] = OutlandCup -- Blade's Edge Brawl
hel.pins[7589] = OutlandCup -- Hellfire Hustle
nag.pins[7592] = OutlandCup -- Telaar Tear
nag.pins[7599] = OutlandCup -- Warmaul Wingding
net.pins[7595] = OutlandCup -- Tempest Keep Sweep
net.pins[7598] = OutlandCup -- Eco-Dome Excursion
smv.pins[7597] = OutlandCup -- Shadowmoon Slam
smv.pins[7601] = OutlandCup -- Fel Pit Fracas
ter.pins[7593] = OutlandCup -- Razorthorn Rise Rush
ter.pins[7594] = OutlandCup -- Auchindoun Coaster
ter.pins[7596] = OutlandCup -- Shattrath City Sashay
ter.pins[7600] = OutlandCup -- Skettis Scramble
zan.pins[7590] = OutlandCup -- Coilfang Caper

-------------------------------------------------------------------------------
-------------------------------- NORTHREND CUP --------------------------------
-------------------------------------------------------------------------------

local bor = ns.maps[114] or Map({id = 114, parent = 113}) -- Borean Tundra
local cry = ns.maps[127] or Map({id = 127, parent = 113}) -- Crystalsong Forest
local dbl = ns.maps[115] or Map({id = 115, parent = 113}) -- Dragonblight
local fjo = ns.maps[117] or Map({id = 117, parent = 113}) -- Howling Fjord
local gri = ns.maps[116] or Map({id = 116, parent = 113}) -- Grizzly Hills
local ice = ns.maps[118] or Map({id = 118, parent = 113}) -- Icecrown
local sho = ns.maps[119] or Map({id = 119, parent = 113}) -- Sholazar Basin
local tsp = ns.maps[120] or Map({id = 120, parent = 113}) -- The Storm Peaks
local zul = ns.maps[121] or Map({id = 121, parent = 113}) -- Zul'Drak

local NorthrendCup = Pin({
    group = ns.groups.NORTHREND_CUP
}) -- Northrend Cup

bor.pins[7698] = NorthrendCup -- Geothermal Jaunt
bor.pins[7700] = NorthrendCup -- Coldarra Climb
cry.pins[7694] = NorthrendCup -- Crystalsong Crisis
dbl.pins[7695] = NorthrendCup -- Dragonblight Dragon Flight
fjo.pins[7689] = NorthrendCup -- Scalawag Slither
fjo.pins[7690] = NorthrendCup -- Daggercap Dart
gri.pins[7691] = NorthrendCup -- Blackriver Burble
ice.pins[7696] = NorthrendCup -- Citadel Sortie
sho.pins[7697] = NorthrendCup -- Sholazar Spree
tsp.pins[7693] = NorthrendCup -- Makers Marathon
zul.pins[7692] = NorthrendCup -- Zul'Drak Zephyr
zul.pins[7699] = NorthrendCup -- Gundrak Fast Track

-------------------------------------------------------------------------------
-------------------------------- PANDARIA CUP ---------------------------------
-------------------------------------------------------------------------------

local dws = ns.maps[422] or Map({id = 422, parent = 424}) -- Dread Wastes
local kls = ns.maps[379] or Map({id = 379, parent = 424}) -- Kun-Lai Summit
local kra = ns.maps[418] or Map({id = 418, parent = 424}) -- Krsarang Wilds
local tjf = ns.maps[371] or Map({id = 371, parent = 424}) -- The Jade Forest
local tls = ns.maps[388] or Map({id = 388, parent = 424}) -- Townlong Steppes
local veb = ns.maps[390] or Map({id = 390, parent = 424}) -- Vale of Eternal Blossoms
local vfw = ns.maps[376] or Map({id = 376, parent = 424}) -- Valley of the Four Winds

local PandariaCup = Pin({
    group = ns.groups.PANDARIA_CUP
}) -- Pandaria Cup

-------------------------------------------------------------------------------
------------------------------ BROKEN ISLES CUP -------------------------------
-------------------------------------------------------------------------------

local azs = ns.maps[630] or Map({id = 630, parent = 619}) -- Azsuna
local bro = ns.maps[646] or Map({id = 646, parent = 619}) -- The Broken Shore
local hmt = ns.maps[650] or Map({id = 650, parent = 619}) -- Highmountain
local stm = ns.maps[634] or Map({id = 634, parent = 619}) -- Stormheim
local sur = ns.maps[680] or Map({id = 680, parent = 619}) -- Suramar
local val = ns.maps[641] or Map({id = 641, parent = 619}) -- Val'Sharah

local BrokenIslesCup = Pin({
    group = ns.groups.BROKEN_ISLES_CUP
}) -- Broken Isles Cup
