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
})
