local _GG = GLOBAL
local require = _GG.require
local Vector3 = _GG.Vector3
local net_entity = _GG.net_entity

local containers = require('containers')
containers.MAXITEMSLOTS = 150

do
    local function addItemSlotNetvarsInContainer(inst)
        if (#inst._itemspool < containers.MAXITEMSLOTS) then
            for i = #inst._itemspool + 1, containers.MAXITEMSLOTS do
                table.insert(
                    inst._itemspool,
                    net_entity(
                        inst.GUID,
                        'container._items[' .. tostring(i) .. ']',
                        'items[' .. tostring(i) .. ']dirty'
                    )
                )
            end
        end
    end
    AddPrefabPostInit('container_classified', addItemSlotNetvarsInContainer)
end

do
    local config = {}
    config.BACKPACK = GetModConfigData('BACKPACKIMPROVED_GENERNAL')
    config.PIGPACK = GetModConfigData('BACKPACKIMPROVED_PIGPACK')
    config.KRAMPUSSACK = GetModConfigData('BACKPACKIMPROVED_KRAMPUSSACK')

    local widgetsetup_d = containers.widgetsetup or function()
            return true
        end
    containers.widgetsetup = function(container, prefab, data, ...)
        local PREDEFINED_UI = 'ui_krampusbag_2x10'
        local prefab = prefab or container.inst.prefab
        local result = widgetsetup_d(container, prefab, data, ...)
        local y_offset = 0
        if (prefab == 'backpack' or prefab == 'icepack') and config.BACKPACK ~= 8 then
            y_offset = 330
        elseif prefab == "piggyback" and config.PIGPACK ~= 12 then
            y_offset = 297
        elseif prefab == "krampus_sack" and config.KRAMPUSSACK ~=14 then
            y_offset = 413
        end

        if y_offset ~= 0 then
            container.widget.slotpos = {}
            local multi = config.BACKPACK / 10
            container.widget.animebank = PREDEFINED_UI
            container.widget.animebuild = PREDEFINED_UI
            for y = 0, 9 do
                -- statements
                for x = 0, multi - 1 do
                    table.insert(container.widget.slotpos, Vector3(-50 - x * 65, -y * 65 + y_offset, 0))
                end
            end
            container:SetNumSlots(container.widget.slotpos ~= nil and #container.widget.slotpos or 0)
        end
        return result;
    end
end
