-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local Pin = ns.pin.Pin

-------------------------------------------------------------------------------

local bem = Map({id = 105, parent = 101}) -- Blade's Edge Mountains
local hel = Map({id = 100, parent = 101}) -- Hellfire Peninsula
local nag = Map({id = 107, parent = 101}) -- Nagrand
local net = Map({id = 109, parent = 101}) -- Netherstorm
local smv = Map({id = 104, parent = 101}) -- Shadowmoon Valley
local ter = Map({id = 108, parent = 101}) -- Terokkar Forest
local zan = Map({id = 102, parent = 101}) -- Zangarmarsh

-------------------------------------------------------------------------------
--------------------------------- OUTLAND CUP ---------------------------------
-------------------------------------------------------------------------------

local OutlandCup = Pin({group = ns.groups.OUTLAND_CUP}) -- Outland Cup

bem.pins[7591] = OutlandCup -- Blade's Edge Brawl
hel.pins[7589] = OutlandCup -- Hellfire Hustle
hel.pins[7593] = OutlandCup -- Razorthorn Rise Rush
nag.pins[7592] = OutlandCup -- Telaar Tear
nag.pins[7599] = OutlandCup -- Warmaul Wingding
net.pins[7595] = OutlandCup -- Tempest Keep Sweep
net.pins[7598] = OutlandCup -- Eco-Dome Excursion
smv.pins[7597] = OutlandCup -- Shadowmoon Slam
smv.pins[7601] = OutlandCup -- Fel Pit Fracas
ter.pins[7594] = OutlandCup -- Auchindoun Coaster
ter.pins[7596] = OutlandCup -- Shattrath City Sashay
ter.pins[7600] = OutlandCup -- Skettis Scramble
zan.pins[7590] = OutlandCup -- Coilfang Caper
