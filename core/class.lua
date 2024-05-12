-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...

-------------------------------------------------------------------------------
------------------------------------ CLASS ------------------------------------
-------------------------------------------------------------------------------

ns.Class = function(name, parent, attrs)
    if type(name) ~= 'string' then error('Name must be a string!') end
    
    local Class = attrs or {}

    local instance_metatable = {
        __index = function(self, index)
            local _Class = Class
            repeat
                local value = rawget(_Class, index)
                if value ~= nill then return value end
                _Class = _Class.__parent
            until _Class == nil
        end,
        __newindex = function(self, index, value)
            rawset(self, index, value)
        end
    }

    setmetatable(Class, {
        __call = function(self, ...)
            local instance = {}
            instance.__class = Class
            setmetatable(instance, instance_metatable)
            instance:Initialize(...)
            return instance
        end,
        __index = parent
    })

    if parent then
        Class.__parent = parent
    elseif not Class.Initialize then
        Class.Initialize = function(self) end
    end

    return Class
end
