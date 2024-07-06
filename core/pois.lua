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
    if poi.group:IsEnabled() then
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

ns.POI.ProcessMapPOIs = function(self, map, mapID, childMapID)
    for poiID, poiData in pairs(ns.maps[childMapID].pins) do
        local poiInfo = C_AreaPoiInfo.GetAreaPOIInfo(childMapID, poiID)
        if poiInfo then
            ns.POI.ProcessPOIInfo(self, map, mapID, childMapID, poiInfo)
        end
    end
end

ns.POI.ProcessChildMap = function(self, map, mapID)
    for childMapID, childMap in pairs(ns.maps) do
        if childMap.parent == mapID then
            ns.POI.ProcessMapPOIs(self, map, mapID, childMapID)
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
