# BetterWorldMap Addons
- [BetterWorldMap: Dragonflight](https://www.curseforge.com/wow/addons/betterworldmap-dragonflight)
- [BetterWorldMap: The War Within](https://www.curseforge.com/wow/addons/betterworldmap-the-war-within)

## Installation
This repository hosts all of my BetterWorldMap addons. Because the core code will be consistent between addons it makes sense to keep them in a single repository. This repository cannot be cloned directly into your addons directory because the files will not be where World of Warcraft expects them to be.

Use the `install.bat` file located in each expansion directory to install the addon and required libs in the appropriate `Interface/AddOns` folder. This script will create symbolic links to the required directories and files for each addon. After installation, use `/reload` to see any changes made in-game.

```
$ install.bat --help
install.bat [-h] [-d] [-i] Path\To\Interface\AddOns
Note: Must be run as administrator to create symlinks
    -h, --help      show this help message and exit
    -i, --install   install this addon
    -d, --delete    delete and exit
```

## Development
The BetterWorldMap core has a hidden development feature to help with finding out more information about points of interest on the map. You can toggle this feature on or off by using `true` or `false`.

To enable development for BetterWorldMap type the following in the chat window:
```
/bwm true
BetterWorldMap_Dragonflight: Developer mode enabled

/bwm false
BetterWorldMap_Dragonflight: Developer mode disabled
```
BetterWorldMap will append additional detail to the tooltip on hover including `mapID`, `areaPoiID`, and `atlas` for the hovered Area POI as well as `coordinates` for the hoverd Area POI on the current map.
