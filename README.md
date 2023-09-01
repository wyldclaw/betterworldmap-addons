# BetterWorldMap Addons
- [BetterWorldMap: Dragonflight](https://www.curseforge.com/wow/addons/betterworldmap-dragonflight)

## Development
This repository hosts all of my BetterWorldMap addons. Because the core code is consistent between addons it made sense to keep them in a single repository. This repositor cannot be cloned directly into your addons directory; the files will not be where World of Warcraft expects them to be.

The BetterWorldMap core has a hidden development feature to help with finding out more information about points of interest on the map. You can toggle this feature on or off by using `true` or `false`.

To enable development for BetterWorldMap: Dragonflight type the following in the chat window:
```
/bwm-df dev true
BetterWorldMap_Dragonflight: Dev enabled
```
BetterWorldMap will append additional detail to the tooltip on hover including `mapID`, `areaPoiID`, `atlas`, and `coordinates` for the current map.
