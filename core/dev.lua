-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

-------------------------------------------------------------------------------
---------------------------------- AREA POIS ----------------------------------
-------------------------------------------------------------------------------

hooksecurefunc(AreaPOIPinMixin, 'OnMouseEnter', function(self)
    if ns.GetOpt('dev_enabled') then
        local mapID = self:GetMap().mapID
        local areaPoiID = self.areaPoiID
        local poiInfo = C_AreaPoiInfo.GetAreaPOIInfo(mapID, areaPoiID)
        if not poiInfo then return end
        local r, g, b = NORMAL_FONT_COLOR:GetRGB()
        local atlasName = poiInfo.atlasName
        local coords = ns.GetCoord(poiInfo.position:GetXY())
        local tooltipShown = self:TryShowTooltip();
        if not tooltipShown then
            GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
            GameTooltip_SetTitle(GameTooltip, self.name, HIGHLIGHT_FONT_COLOR);
        end
        GameTooltip:AddLine(' ')
        GameTooltip:AddLine('BetterWorldMap:', 1, 1, 1)
        GameTooltip:AddDoubleLine('mapID:', mapID, r, g, b, 1, 1, 1)
        GameTooltip:AddDoubleLine('areaPoiID:', areaPoiID, r, g, b, 1, 1, 1)
        GameTooltip:AddDoubleLine('atlasName:', atlasName, r, g, b, 1, 1, 1)
        GameTooltip:AddDoubleLine('coordinates:', coords, r, g, b, 1, 1, 1)
        GameTooltip:Show()
    end
end)

-------------------------------------------------------------------------------
---------------------------------- INSTANCES ----------------------------------
-------------------------------------------------------------------------------

hooksecurefunc(DungeonEntrancePinMixin, 'OnMouseEnter', function(self)
    if ns.GetOpt('dev_enabled') then
        local mapID = self:GetMap().mapID
        local coords = ns.GetCoord(self:GetPosition())
        GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
        GameTooltip_SetTitle(GameTooltip, self.name, HIGHLIGHT_FONT_COLOR)
        GameTooltip:AddLine(' ')
        GameTooltip:AddLine('BetterWorldMap:', 1, 1, 1)
        GameTooltip:AddDoubleLine('mapID:', mapID, r, g, b, 1, 1, 1)
        GameTooltip:AddDoubleLine('coordinates:', coords, r, g, b, 1, 1, 1)
        GameTooltip:Show()
    end
end)

hooksecurefunc(DungeonEntrancePinMixin, 'OnMouseLeave', function(self)
    GameTooltip:Hide()
end)