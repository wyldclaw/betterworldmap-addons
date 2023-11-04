# BetterWorldMap Addons
- BetterWorldMap: Dragonriding
- [BetterWorldMap: Dragonflight](https://www.curseforge.com/wow/addons/betterworldmap-dragonflight)

## Development
This repository (will eventually) hosts all of my BetterWorldMap addons. Because the core code will be consistent between addons it makes sense to keep them in a single repository. This repository cannot be cloned directly into your addons directory because the files will not be where World of Warcraft expects them to be.

The BetterWorldMap core has a hidden development feature to help with finding out more information about points of interest on the map. You can toggle this feature on or off by using `true` or `false`.

To enable development for BetterWorldMap: Dragonflight type the following in the chat window:
```
/bwm-df dev true
BetterWorldMap_Dragonflight: Dev enabled

/bwm-df dev false
BetterWorldMap_Dragonflight: Dev disabled
```
BetterWorldMap will append additional detail to the tooltip on hover including `mapID` for the current map, `areaPoiID` for the hovered Area POI, `atlas` for the hovered Area POI, and `coordinates` for the hoverd Area POI on the current map.
