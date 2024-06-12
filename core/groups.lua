-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale

-------------------------------------------------------------------------------
------------------------------------ GROUP ------------------------------------
-------------------------------------------------------------------------------

local Group = Class('Group')

function Group:Initialize(attrs)
    if attrs then for k, v in pairs(attrs) do self[k] = v end end

    if not self.atlas then error('Group must have an atlas!') end
    if not self.label then error('Group must have a label!') end
    if not self.name then error('Group must have a name!') end

    ns.PrepareText(self.label)
end

function Group:IsVisible() return true end

function Group:IsEnabled() return ns.GetOpt('enable_' .. self.name) end

-------------------------------------------------------------------------------

ns.Group = Group

ns.groups = {
    DUNGEON = Group({
        atlas = 'dungeon',
        label = L['dungeon_label'],
        name = 'dungeon'
    }),
    RAID = Group({
        atlas = 'raid',
        label = L['raid_label'],
        name = 'raid'
    }),
    SKYRIDING_RACE = Group({
        atlas = 'racing',
        label = L['skyriding_race_label'],
        name = 'skyriding_race'
    })
}
