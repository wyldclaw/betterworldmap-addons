-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local KalimdorCup = ns.pin.KalimdorCup

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

-------------------------------------------------------------------------------
-------------------------------- KALIMDOR CUP ---------------------------------
-------------------------------------------------------------------------------

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
