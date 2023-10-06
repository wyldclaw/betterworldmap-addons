-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

-------------------------------------------------------------------------------
------------------------------ WORLD MAP BUTTON -------------------------------
-------------------------------------------------------------------------------

local WorldMapOptionsButtonMixin = {}
_G[ADDON_NAME .. 'WorldMapOptionsButtonMixin'] = WorldMapOptionsButtonMixin

function WorldMapOptionsButtonMixin:OnLoad()
    local drop_down_name = ADDON_NAME .. 'WorldMapDropDownMenu'
    self.DropDown = ns.libs.DDM:Create_UIDropDownMenu(drop_down_name, self)
    ns.libs.DDM:UIDropDownMenu_SetInitializeFunction(self.DropDown, function(dropdown)
        dropdown:GetParent():InitializeDropDown()
    end)
    ns.libs.DDM:UIDropDownMenu_SetDisplayMode(self.DropDown, 'MENU')
end

function WorldMapOptionsButtonMixin:OnMouseDown()
    self.Icon:SetPoint('TOPLEFT', 8, -8)
    local xOffset = WorldMapFrame.isMaximized and 30 or 0
    self.DropDown.point = WorldMapFrame.isMaximized and 'TOPRIGHT' or 'TOPLEFT'
    ns.libs.DDM:ToggleDropDownMenu(1, nil, self.DropDown, self, xOffset, -5)
    PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
end

function WorldMapOptionsButtonMixin:OnMouseUp()
    self.Icon:SetPoint('TOPLEFT', self, 'TOPLEFT', 6, -6)
end

function WorldMapOptionsButtonMixin:OnEnter()
    GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
    GameTooltip_SetTitle(GameTooltip, ns.addon_name)
    GameTooltip_AddNormalLine(GameTooltip, L['addon_description'])
    GameTooltip:Show()
end

function WorldMapOptionsButtonMixin:Refresh()
    local mapID = self:GetParent():GetMapID()
    if ns.IsActiveMap(mapID) and ns.HasVisibleGroups(mapID) then
        self:Show()
    else
        self:Hide()
    end
end

function WorldMapOptionsButtonMixin:InitializeDropDown()
    local mapID = self:GetParent():GetMapID()
    if ns.IsActiveMap(mapID) then
        local menuGroup = ns.menuGroups[mapID]
        for _, section in ipairs(menuGroup) do
            if section.title then
                ns.libs.DDM:UIDropDownMenu_AddButton({
                    isTitle = true,
                    text = section.title,
                    notClickable = 1,
                    notCheckable = 1
                })
            end
            for _, group in ipairs(section.groups) do
                if group.IsVisible() then
                    local atlas = CreateAtlasMarkup(group.atlas, 20, 20)
                    ns.libs.DDM:UIDropDownMenu_AddButton({
                        text = atlas .. ' ' .. ns.RenderText(group.label),
                        isNotRadio = true,
                        keepShownOnClick = true,
                        checked = ns.GetOpt('enable_' .. group.name),
                        func = function()
                            ns.SetOpt('enable_' .. group.name)
                        end
                    })
                end
            end
        end
    end
end