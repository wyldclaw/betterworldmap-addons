-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

ns.FP = {}

-------------------------------------------------------------------------------
-------------------------------- FLIGHT POINTS --------------------------------
-------------------------------------------------------------------------------

ns.FP.CreatePin = function(nodeID, group)
    local pin = CreateFrame('Frame', 'BWM_PIN_FP_' .. nodeID, nil)
    pin:SetWidth(22)
    pin:SetHeight(22)
    pin.texture = pin:CreateTexture()
    pin.texture:SetAtlas(group.atlas, true)
    pin.texture:SetAllPoints()
    return pin
end

ns.FP.ProcessTaxiNode = function(mapID, childMapID, taxiNode, group)
    local fp = ns.maps[childMapID].pins[taxiNode.nodeID]
    if not fp.pin then fp.pin = ns.FP.CreatePin(taxiNode.nodeID, group) end
    local pin = fp.pin
    pin:HookScript('OnEnter', function()
        GameTooltip:SetOwner(pin, 'ANCHOR_TOP')
        GameTooltip:AddLine(taxiNode.name, 1, 1, 1)
        GameTooltip:Show()
    end)
    pin:HookScript('OnLeave', function()
        GameTooltip:Hide()
    end)
    local x, y = ns.GetXY(fp.coordinates)
    ns.libs.PIN:AddWorldMapIconMap(ADDON_NAME, pin, mapID, x, y)
    pin:Show()
end

ns.FP.ProcessTaxiNodes = function(mapID, childMapID, group)
    local taxiNodes = C_TaxiMap.GetTaxiNodesForMap(childMapID)
    for _, taxiNode in pairs(taxiNodes) do
        if taxiNode and ns.IsValidID(childMapID, taxiNode.nodeID) then
            if ns.IsGroupMember(childMapID, taxiNode.nodeID, group) then
                ns.FP.ProcessTaxiNode(mapID, childMapID, taxiNode, group)
            end
        end
    end
end

ns.FP.ProcessChildMap = function(mapID, group)
    for childMapID, childMap in pairs(ns.maps) do
        if childMap.parent == mapID then
            ns.FP.ProcessTaxiNodes(mapID, childMapID, group)
        end
    end
end

ns.FP.UpdateFlightPoints = function(mapID, group)
    if ns.IsActiveMap(mapID) then
        if ns.IsGroupEnabled(group) then
            ns.FP.ProcessChildMap(mapID, group)
        else
            ns.libs.PIN:RemoveAllWorldMapIcons(ADDON_NAME)
        end
    end
end

ns.FP.UpdateAllFlightPoints = function(mapID)
    for _, group in pairs(ns.groups) do
        if group.type and group.type == 'flightpoint' then
            ns.FP.UpdateFlightPoints(mapID, group)
        end
    end
end

hooksecurefunc(WorldMapFrame, 'OnMapChanged', function()
    ns.FP.UpdateAllFlightPoints(WorldMapFrame.mapID)
end)
