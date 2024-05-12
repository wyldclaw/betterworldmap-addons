-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Class = ns.Class

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local Map = Class('Map')

function Map:Initialize(attrs)
    if attrs then for k, v in pairs(attrs) do self[k] = v end end

    if not self.id then error('Map must have an id!') end
    if not self.parent then error('Map must have a parent!') end

    self.pins = {}

    if ns.maps[self.id] then error('Map already added: ' .. self.id) end
    ns.maps[self.id] = self
end

-------------------------------------------------------------------------------

ns.Map = Map
