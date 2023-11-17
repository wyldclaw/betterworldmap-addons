-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local NorthrendCup = ns.pin.NorthrendCup

-------------------------------------------------------------------------------

local bor = Map({id = 114, parent = 113}) -- Borean Tundra
local cry = Map({id = 127, parent = 113}) -- Crystalsong Forest
local dbl = Map({id = 115, parent = 113}) -- Dragonblight
local fjo = Map({id = 117, parent = 113}) -- Howling Fjord
local gri = Map({id = 116, parent = 113}) -- Grizzly Hills
local ice = Map({id = 118, parent = 113}) -- Icecrown
local sho = Map({id = 119, parent = 113}) -- Sholazar Basin
local tsp = Map({id = 120, parent = 113}) -- The Storm Peaks
local zul = Map({id = 121, parent = 113}) -- Zul'Drak

-------------------------------------------------------------------------------
-------------------------------- NORTHREND CUP --------------------------------
-------------------------------------------------------------------------------

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
zul.pins[7699] = NorthrendCup -- Gunrak Fast Track
