--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
 *
 * See License.txt in the project directory for license information.
--]]
function createItem(name, logistic_type, size, order)
	local i = table.deepcopy(data.raw["item"]["steel-chest"])
	i.type = "item"
	i.icon_size = 32
	i.order = order
	i.stack_size = 15
	if logistic_type == nil then
		i.name = name.."-"..size
		i.icon = "__Warehousing__/graphics/icons/"..name.."-"..size..".png"
		i.subgroup = "warehousing"
		i.place_result = name.."-"..size
	else
		i.name = name.."-"..logistic_type.."-"..size
		i.icon = "__Warehousing__/graphics/icons/"..name.."-"..logistic_type.."-"..size..".png"
		i.subgroup = "logistic-warehousing"
		i.place_result = name.."-"..logistic_type.."-"..size
	end
	return i
end

local storehouse_basic = createItem("storehouse", nil, "basic", "a[storehouse-basic]")
local storehouse_active_provider_basic = createItem("storehouse", "active-provider", "basic", "a[logistic-storehouse-basic]")
local storehouse_buffer_basic = createItem("storehouse", "buffer", "basic", "a[logistic-storehouse-basic]")
local storehouse_passive_provider_basic = createItem("storehouse", "passive-provider", "basic", "a[logistic-storehouse-basic]")
local storehouse_requester_basic = createItem("storehouse", "requester", "basic", "a[logistic-storehouse-basic]")
local storehouse_storage_basic = createItem("storehouse", "storage", "basic", "a[logistic-storehouse-basic]")

local storehouse_small = createItem("storehouse", nil, "small", "a[storehouse-small]")
local storehouse_active_provider_small = createItem("storehouse", "active-provider", "small", "d[logistic-storehouse-small]")
local storehouse_buffer_small = createItem("storehouse", "buffer", "small", "d[logistic-storehouse-small]")
local storehouse_passive_provider_small = createItem("storehouse", "passive-provider", "small", "d[logistic-storehouse-small]")
local storehouse_requester_small = createItem("storehouse", "requester", "small", "d[logistic-storehouse-small]")
local storehouse_storage_small = createItem("storehouse", "storage", "small", "d[logistic-storehouse-small]")

local storehouse_tiny = createItem("storehouse", nil, "tiny", "a[storehouse-tiny]")
local storehouse_active_provider_tiny = createItem("storehouse", "active-provider", "tiny", "f[logistic-storehouse-tiny]")
local storehouse_buffer_tiny = createItem("storehouse", "buffer", "tiny", "f[logistic-storehouse-tiny]")
local storehouse_passive_provider_tiny = createItem("storehouse", "passive-provider", "tiny", "f[logistic-storehouse-tiny]")
local storehouse_requester_tiny = createItem("storehouse", "requester", "tiny", "f[logistic-storehouse-tiny]")
local storehouse_storage_tiny = createItem("storehouse", "storage", "tiny", "f[logistic-storehouse-tiny]")

local warehouse_basic = createItem("warehouse", nil, "basic", "b[warehouse-basic]")
local warehouse_active_provider_basic = createItem("warehouse", "active-provider", "basic", "b[logistic-warehouse-basic]")
local warehouse_buffer_basic = createItem("warehouse", "buffer", "basic", "b[logistic-warehouse-basic]")
local warehouse_passive_provider_basic = createItem("warehouse", "passive-provider", "basic", "b[logistic-warehouse-basic]")
local warehouse_requester_basic = createItem("warehouse", "requester", "basic", "b[logistic-warehouse-basic]")
local warehouse_storage_basic = createItem("warehouse", "storage", "basic", "b[logistic-warehouse-basic]")

local warehouse_small = createItem("warehouse", nil, "small", "b[warehouse-small]")
local warehouse_active_provider_small = createItem("warehouse", "active-provider", "small", "e[logistic-warehouse-small]")
local warehouse_buffer_small = createItem("warehouse", "buffer", "small", "e[logistic-warehouse-small]")
local warehouse_passive_provider_small = createItem("warehouse", "passive-provider", "small", "e[logistic-warehouse-small]")
local warehouse_requester_small = createItem("warehouse", "requester", "small", "e[logistic-warehouse-small]")
local warehouse_storage_small = createItem("warehouse", "storage", "small", "e[logistic-warehouse-small]")

local warehouse_tiny = createItem("warehouse", nil, "tiny", "b[warehouse-tiny]")
local warehouse_active_provider_tiny = createItem("warehouse", "active-provider", "tiny", "g[logistic-warehouse-tiny]")
local warehouse_buffer_tiny = createItem("warehouse", "buffer", "tiny", "g[logistic-warehouse-tiny]")
local warehouse_passive_provider_tiny = createItem("warehouse", "passive-provider", "tiny", "g[logistic-warehouse-tiny]")
local warehouse_requester_tiny = createItem("warehouse", "requester", "tiny", "g[logistic-warehouse-tiny]")
local warehouse_storage_tiny = createItem("warehouse", "storage", "tiny", "g[logistic-warehouse-tiny]")

data:extend({
	storehouse_basic,
	storehouse_active_provider_basic,
	storehouse_buffer_basic,
	storehouse_passive_provider_basic,
	storehouse_requester_basic,
	storehouse_storage_basic,
	storehouse_small,
	storehouse_active_provider_small,
	storehouse_buffer_small,
	storehouse_passive_provider_small,
	storehouse_requester_small,
	storehouse_storage_small,
	storehouse_tiny,
	storehouse_active_provider_tiny,
	storehouse_buffer_tiny,
	storehouse_passive_provider_tiny,
	storehouse_requester_tiny,
	storehouse_storage_tiny,
	warehouse_basic,
	warehouse_active_provider_basic,
	warehouse_buffer_basic,
	warehouse_passive_provider_basic,
	warehouse_requester_basic,
	warehouse_storage_basic,
	warehouse_small,
	warehouse_active_provider_small,
	warehouse_buffer_small,
	warehouse_passive_provider_small,
	warehouse_requester_small,
	warehouse_storage_small,
	warehouse_tiny,
	warehouse_active_provider_tiny,
	warehouse_buffer_tiny,
	warehouse_passive_provider_tiny,
	warehouse_requester_tiny,
	warehouse_storage_tiny,
	{
		type = "item-subgroup",
		name = "warehousing",
		group = "logistics",
		order = "a",
	},
	{
		type = "item-subgroup",
		name = "logistic-warehousing",
		group = "logistics",
		order = "b",
	},
})
