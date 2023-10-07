-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

ns.POI = {}

-------------------------------------------------------------------------------
---------------------------------- AREA POIS ----------------------------------
-------------------------------------------------------------------------------

ns.POI.ProcessPOIInfo = function(self, map, mapID, childMapID, poiInfo)
    local poi = ns.maps[childMapID].pins[poiInfo.areaPoiID]
    if ns.IsGroupEnabled(poi.group) then
        if poi.coordinates then
            local x, y = ns.GetXY(poi.coordinates)
            poiInfo.position:SetXY(x, y)
        else
            local oX, oY = poiInfo.position:GetXY()
            local nX, nY = ns.libs.HBD:TranslateZoneCoordinates(oX, oY, childMapID, mapID)
            poiInfo.position:SetXY(nX, nY)
        end
        poiInfo.dataProvider = self
        map:AcquirePin(self:GetPinTemplate(), poiInfo)
    end
end

ns.POI.ProcessPassiveMapPOIs = function(self, map, mapID, childMapID)
    for poiID, poiData in pairs(ns.maps[childMapID].pins) do
        if poiData.passive and poiData.passive == true then
            local poiInfo = C_AreaPoiInfo.GetAreaPOIInfo(childMapID, poiID)
            if poiInfo then
                ns.POI.ProcessPOIInfo(self, map, mapID, childMapID, poiInfo)
            end
        end
    end
end

ns.POI.ProcessActiveMapPOIs = function(self, map, mapID, childMapID)
    for _, poiID in next, C_AreaPoiInfo.GetAreaPOIForMap(childMapID) do
        local poiInfo = C_AreaPoiInfo.GetAreaPOIInfo(childMapID, poiID)
        if poiInfo and ns.IsValidID(childMapID, poiID) then
            ns.POI.ProcessPOIInfo(self, map, mapID, childMapID, poiInfo)
        end
    end
end

ns.POI.ProcessChildMap = function(self, map, mapID)
    for childMapID, childMap in pairs(ns.maps) do
        if childMap.parent == mapID then
            ns.POI.ProcessActiveMapPOIs(self, map, mapID, childMapID)
            ns.POI.ProcessPassiveMapPOIs(self, map, mapID, childMapID)
        end
    end
end

ns.POI.UpdateAreaPOIs = function(self)
    local map = self:GetMap()
    local mapID = map:GetMapID()
    if ns.IsActiveMap(mapID) then
        ns.POI.ProcessChildMap(self, map, mapID)
    end
end

for provider in next, WorldMapFrame.dataProviders do
    if provider.GetPinTemplate then
        if provider:GetPinTemplate() == 'AreaPOIPinTemplate' then
            hooksecurefunc(provider, 'RefreshAllData', ns.POI.UpdateAreaPOIs)
        end
    end
end
