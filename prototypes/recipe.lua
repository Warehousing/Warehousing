--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
 *
 * See License.txt in the project directory for license information.
--]]
function createRecipe(name, logistic_type, size)
	local r = table.deepcopy(data.raw["recipe"]["steel-chest"])
	r.type = "recipe"
	r.enabled = "false"
	if logistic_type == nil then
		r.name = name.."-"..size
		r.result = name.."-"..size
	else
		r.name = name.."-"..logistic_type.."-"..size
		r.result = name.."-"..logistic_type.."-"..size
	end
	if name == "warehouse" and logistic_type == nil then
		r.ingredients = {
			{"steel-plate", 200},
			{"stone-brick", 40},
			{"iron-stick", 85},
		}
	elseif name == "warehouse" and logistic_type ~= nil then
		r.ingredients = {
			{"warehouse-"..size, 1},
			{"logistic-chest-"..logistic_type, 1},
			{"steel-plate", 10},
			{"iron-stick", 15},
		}
	elseif name == "storehouse" and logistic_type == nil then
		r.ingredients = {
			{"steel-plate", 50},
			{"stone-brick", 10},
			{"iron-stick", 16},
		}
	elseif name == "storehouse" and logistic_type ~= nil then
		r.ingredients = {
			{"storehouse-"..size, 1},
			{"logistic-chest-"..logistic_type, 1},
			{"iron-stick", 4},
		}
	end
	return r
end

local storehouse_basic = createRecipe("storehouse", nil, "basic")
local storehouse_active_provider_basic = createRecipe("storehouse", "active-provider", "basic")
local storehouse_buffer_basic = createRecipe("storehouse", "buffer", "basic")
local storehouse_passive_provider_basic = createRecipe("storehouse", "passive-provider", "basic")
local storehouse_requester_basic = createRecipe("storehouse", "requester", "basic")
local storehouse_storage_basic = createRecipe("storehouse", "storage", "basic")

local storehouse_small = createRecipe("storehouse", nil, "small")
local storehouse_active_provider_small = createRecipe("storehouse", "active-provider", "small")
local storehouse_buffer_small = createRecipe("storehouse", "buffer", "small")
local storehouse_passive_provider_small = createRecipe("storehouse", "passive-provider", "small")
local storehouse_requester_small = createRecipe("storehouse", "requester", "small")
local storehouse_storage_small = createRecipe("storehouse", "storage", "small")

local storehouse_tiny = createRecipe("storehouse", nil, "tiny")
local storehouse_active_provider_tiny = createRecipe("storehouse", "active-provider", "tiny")
local storehouse_buffer_tiny = createRecipe("storehouse", "buffer", "tiny")
local storehouse_passive_provider_tiny = createRecipe("storehouse", "passive-provider", "tiny")
local storehouse_requester_tiny = createRecipe("storehouse", "requester", "tiny")
local storehouse_storage_tiny = createRecipe("storehouse", "storage", "tiny")

local warehouse_basic = createRecipe("warehouse", nil, "basic")
local warehouse_active_provider_basic = createRecipe("warehouse", "active-provider", "basic")
local warehouse_buffer_basic = createRecipe("warehouse", "buffer", "basic")
local warehouse_passive_provider_basic = createRecipe("warehouse", "passive-provider", "basic")
local warehouse_requester_basic = createRecipe("warehouse", "requester", "basic")
local warehouse_storage_basic = createRecipe("warehouse", "storage", "basic")

local warehouse_small = createRecipe("warehouse", nil, "small")
local warehouse_active_provider_small = createRecipe("warehouse", "active-provider", "small")
local warehouse_buffer_small = createRecipe("warehouse", "buffer", "small")
local warehouse_passive_provider_small = createRecipe("warehouse", "passive-provider", "small")
local warehouse_requester_small = createRecipe("warehouse", "requester", "small")
local warehouse_storage_small = createRecipe("warehouse", "storage", "small")

local warehouse_tiny = createRecipe("warehouse", nil, "tiny")
local warehouse_active_provider_tiny = createRecipe("warehouse", "active-provider", "tiny")
local warehouse_buffer_tiny = createRecipe("warehouse", "buffer", "tiny")
local warehouse_passive_provider_tiny = createRecipe("warehouse", "passive-provider", "tiny")
local warehouse_requester_tiny = createRecipe("warehouse", "requester", "tiny")
local warehouse_storage_tiny = createRecipe("warehouse", "storage", "tiny")

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
})
