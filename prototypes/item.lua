--[[ Copyright (c) David-John Miller AKA Anoyomouse 2016
 * Part of the warehousing mod
 *
 * See LICENCE in the project directory for licence information
--]]
data:extend({
	{
		type = "item",
		name = "warehouse-basic",
		icon = "__Warehousing__/graphics/icons/warehouse-basic.png",
		flags = {"goes-to-quickbar"},
		subgroup = "storage",
		order = "d[items]-b[steel-chest]",
		place_result = "warehouse-basic",
		stack_size = 15
	},
	{
		type = "item",
		name = "warehouse-passive-provider",
		icon = "__Warehousing__/graphics/icons/warehouse-passive-provider.png",
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-passive-provider]",
		place_result = "warehouse-passive-provider",
		stack_size = 15
	},
	{
		type = "item",
		name = "warehouse-storage",
		icon = "__Warehousing__/graphics/icons/warehouse-storage.png",
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-storage]",
		place_result = "warehouse-storage",
		stack_size = 15
	},
	{
		type = "item",
		name = "warehouse-active-provider",
		icon = "__Warehousing__/graphics/icons/warehouse-active-provider.png",
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-active-provider]",
		place_result = "warehouse-active-provider",
		stack_size = 15
	},
	{
		type = "item",
		name = "warehouse-requester",
		icon = "__Warehousing__/graphics/icons/warehouse-requester.png",
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-requester]",
		place_result = "warehouse-requester",
		stack_size = 15
	},
	{
		type = "item",
		name = "storehouse-basic",
		icon = "__Warehousing__/graphics/icons/storehouse-basic.png",
		flags = {"goes-to-quickbar"},
		subgroup = "storage",
		order = "d[items]-b[steel-chest]",
		place_result = "storehouse-basic",
		stack_size = 15
	},
	{
		type = "item",
		name = "storehouse-passive-provider",
		icon = "__Warehousing__/graphics/icons/storehouse-passive-provider.png",
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-passive-provider]",
		place_result = "storehouse-passive-provider",
		stack_size = 15
	},
	{
		type = "item",
		name = "storehouse-storage",
		icon = "__Warehousing__/graphics/icons/storehouse-storage.png",
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-storage]",
		place_result = "storehouse-storage",
		stack_size = 15
	},
	{
		type = "item",
		name = "storehouse-active-provider",
		icon = "__Warehousing__/graphics/icons/storehouse-active-provider.png",
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-active-provider]",
		place_result = "storehouse-active-provider",
		stack_size = 15
	},
	{
		type = "item",
		name = "storehouse-requester",
		icon = "__Warehousing__/graphics/icons/storehouse-requester.png",
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-requester]",
		place_result = "storehouse-requester",
		stack_size = 15
	},
})
