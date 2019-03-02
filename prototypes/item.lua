--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
 *
 * See License.txt in the project directory for license information.
--]]
data:extend({
	-- Basic Warehouse
	{
		type = "item",
		name = "warehouse-basic",
		icon = "__Warehousing__/graphics/icons/warehouse-basic.png",
		icon_size = 32,
		subgroup = "storage",
		order = "a[items]-c[warehouse]-a[base]",
		place_result = "warehouse-basic",
		stack_size = 15
	},
	-- Passive Provider Warehouse
	{
		type = "item",
		name = "warehouse-passive-provider",
		icon = "__Warehousing__/graphics/icons/warehouse-passive-provider.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-passive-provider]-d[warehouse]",
		place_result = "warehouse-passive-provider",
		stack_size = 15
	},
	-- Storage Warehouse
	{
		type = "item",
		name = "warehouse-storage",
		icon = "__Warehousing__/graphics/icons/warehouse-storage.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-storage]-d[warehouse]",
		place_result = "warehouse-storage",
		stack_size = 15
	},
	-- Active Provider Warehouse
	{
		type = "item",
		name = "warehouse-active-provider",
		icon = "__Warehousing__/graphics/icons/warehouse-active-provider.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-active-provider]-d[warehouse]",
		place_result = "warehouse-active-provider",
		stack_size = 15
	},
	-- Requester Warehouse
	{
		type = "item",
		name = "warehouse-requester",
		icon = "__Warehousing__/graphics/icons/warehouse-requester.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-e[logistic-chest-requester]-d[warehouse]",
		place_result = "warehouse-requester",
		stack_size = 15
	},
	-- Buffer Warehouse
	{
		type = "item",
		name = "warehouse-buffer",
		icon = "__Warehousing__/graphics/icons/warehouse-buffer.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-d[logistic-chest-buffer]-d[warehouse]",
		place_result = "warehouse-buffer",
		stack_size = 15
	},
	-- Basic Warehouse Small
	{
		type = "item",
		name = "warehouse-basic-small",
		icon = "__Warehousing__/graphics/icons/warehouse-basic-small.png",
		icon_size = 32,
		subgroup = "storage",
		order = "a[items]-c[warehouse]-b[small]",
		place_result = "warehouse-basic-small",
		stack_size = 15
	},
	-- Passive Provider Warehouse Small
	{
		type = "item",
		name = "warehouse-passive-provider-small",
		icon = "__Warehousing__/graphics/icons/warehouse-passive-provider-small.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-passive-provider]-e[warehouse-small]",
		place_result = "warehouse-passive-provider-small",
		stack_size = 15
	},
	-- Storage Warehouse Small
	{
		type = "item",
		name = "warehouse-storage-small",
		icon = "__Warehousing__/graphics/icons/warehouse-storage-small.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-storage]-e[warehouse-small]",
		place_result = "warehouse-storage-small",
		stack_size = 15
	},
	-- Active Provider Warehouse
	{
		type = "item",
		name = "warehouse-active-provider-small",
		icon = "__Warehousing__/graphics/icons/warehouse-active-provider-small.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-active-provider]-e[warehouse-small]",
		place_result = "warehouse-active-provider-small",
		stack_size = 15
	},
	-- Requester Warehouse Small
	{
		type = "item",
		name = "warehouse-requester-small",
		icon = "__Warehousing__/graphics/icons/warehouse-requester-small.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-e[logistic-chest-requester]-e[warehouse-small]",
		place_result = "warehouse-requester-small",
		stack_size = 15
	},
	-- Buffer Warehouse Small
	{
		type = "item",
		name = "warehouse-buffer-small",
		icon = "__Warehousing__/graphics/icons/warehouse-buffer-small.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-d[logistic-chest-buffer]-e[warehouse-small]",
		place_result = "warehouse-buffer-small",
		stack_size = 15
	},
	-- Basic Warehouse Tiny
	{
		type = "item",
		name = "warehouse-basic-tiny",
		icon = "__Warehousing__/graphics/icons/warehouse-basic-tiny.png",
		icon_size = 32,
		subgroup = "storage",
		order = "a[items]-c[warehouse]-c[tiny]",
		place_result = "warehouse-basic-tiny",
		stack_size = 15
	},
	-- Passive Provider Warehouse Tiny
	{
		type = "item",
		name = "warehouse-passive-provider-tiny",
		icon = "__Warehousing__/graphics/icons/warehouse-passive-provider-tiny.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-passive-provider]-f[warehouse-tiny]",
		place_result = "warehouse-passive-provider-tiny",
		stack_size = 15
	},
	-- Storage Warehouse Tiny
	{
		type = "item",
		name = "warehouse-storage-tiny",
		icon = "__Warehousing__/graphics/icons/warehouse-storage-tiny.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-storage]-f[warehouse-tiny]",
		place_result = "warehouse-storage-tiny",
		stack_size = 15
	},
	-- Active Provider Warehouse Tiny
	{
		type = "item",
		name = "warehouse-active-provider-tiny",
		icon = "__Warehousing__/graphics/icons/warehouse-active-provider-tiny.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-active-provider]-f[warehouse-tiny]",
		place_result = "warehouse-active-provider-tiny",
		stack_size = 15
	},
	-- Requester Warehouse Tiny
	{
		type = "item",
		name = "warehouse-requester-tiny",
		icon = "__Warehousing__/graphics/icons/warehouse-requester-tiny.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-e[logistic-chest-requester]-f[warehouse-tiny]",
		place_result = "warehouse-requester-tiny",
		stack_size = 15
	},
	-- Buffer Warehouse Tiny
	{
		type = "item",
		name = "warehouse-buffer-tiny",
		icon = "__Warehousing__/graphics/icons/warehouse-buffer-tiny.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-d[logistic-chest-buffer]-f[warehouse-tiny]",
		place_result = "warehouse-buffer-tiny",
		stack_size = 15
	},
	-- Basic Storehouse
	{
		type = "item",
		name = "storehouse-basic",
		icon = "__Warehousing__/graphics/icons/storehouse-basic.png",
		icon_size = 32,
		subgroup = "storage",
		order = "a[items]-c[storehouse]-a[base]",
		place_result = "storehouse-basic",
		stack_size = 15
	},
	-- Passive Provider Storehouse
	{
		type = "item",
		name = "storehouse-passive-provider",
		icon = "__Warehousing__/graphics/icons/storehouse-passive-provider.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-passive-provider]-a[storehouse]",
		place_result = "storehouse-passive-provider",
		stack_size = 15
	},
	-- Storage Storehouse
	{
		type = "item",
		name = "storehouse-storage",
		icon = "__Warehousing__/graphics/icons/storehouse-storage.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-storage]-a[storehouse]",
		place_result = "storehouse-storage",
		stack_size = 15
	},
	-- Active Provider Storehouse
	{
		type = "item",
		name = "storehouse-active-provider",
		icon = "__Warehousing__/graphics/icons/storehouse-active-provider.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-active-provider]-a[storehouse]",
		place_result = "storehouse-active-provider",
		stack_size = 15
	},
	-- Requester Storehouse
	{
		type = "item",
		name = "storehouse-requester",
		icon = "__Warehousing__/graphics/icons/storehouse-requester.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-e[logistic-chest-requester]-a[storehouse]",
		place_result = "storehouse-requester",
		stack_size = 15
	},
	-- Buffer Storehouse
	{
		type = "item",
		name = "storehouse-buffer",
		icon = "__Warehousing__/graphics/icons/storehouse-buffer.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-d[logistic-chest-buffer]-a[storehouse]",
		place_result = "storehouse-buffer",
		stack_size = 15
	},
	-- Basic Storehouse Small
	{
		type = "item",
		name = "storehouse-basic-small",
		icon = "__Warehousing__/graphics/icons/storehouse-basic-small.png",
		icon_size = 32,
		subgroup = "storage",
		order = "a[items]-c[storehouse]-b[small]",
		place_result = "storehouse-basic-small",
		stack_size = 15
	},
	-- Passive Provider Storehouse Small
	{
		type = "item",
		name = "storehouse-passive-provider-small",
		icon = "__Warehousing__/graphics/icons/storehouse-passive-provider-small.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-passive-provider]-b[storehouse-small]",
		place_result = "storehouse-passive-provider-small",
		stack_size = 15
	},
	-- Storage Storehouse Small
	{
		type = "item",
		name = "storehouse-storage-small",
		icon = "__Warehousing__/graphics/icons/storehouse-storage-small.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-storage]-b[storehouse-small]",
		place_result = "storehouse-storage-small",
		stack_size = 15
	},
	-- Active Provider Storehouse Small
	{
		type = "item",
		name = "storehouse-active-provider-small",
		icon = "__Warehousing__/graphics/icons/storehouse-active-provider-small.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-active-provider]-b[storehouse-small]",
		place_result = "storehouse-active-provider-small",
		stack_size = 15
	},
	-- Requester Storehouse Small
	{
		type = "item",
		name = "storehouse-requester-small",
		icon = "__Warehousing__/graphics/icons/storehouse-requester-small.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-e[logistic-chest-requester]-b[storehouse-small]",
		place_result = "storehouse-requester-small",
		stack_size = 15
	},
	-- Buffer Storehouse Small
	{
		type = "item",
		name = "storehouse-buffer-small",
		icon = "__Warehousing__/graphics/icons/storehouse-buffer-small.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-d[logistic-chest-buffer]-b[storehouse-small]",
		place_result = "storehouse-buffer-small",
		stack_size = 15
	},
	-- Basic Storehouse Tiny
	{
		type = "item",
		name = "storehouse-basic-tiny",
		icon = "__Warehousing__/graphics/icons/storehouse-basic-tiny.png",
		icon_size = 32,
		subgroup = "storage",
		order = "a[items]-c[storehouse]-c[tiny]",
		place_result = "storehouse-basic-tiny",
		stack_size = 15
	},
	-- Passive Provider Storehouse Tiny
	{
		type = "item",
		name = "storehouse-passive-provider-tiny",
		icon = "__Warehousing__/graphics/icons/storehouse-passive-provider-tiny.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-passive-provider]-c[storehouse-tiny]",
		place_result = "storehouse-passive-provider-tiny",
		stack_size = 15
	},
	-- Storage Storehouse Tiny
	{
		type = "item",
		name = "storehouse-storage-tiny",
		icon = "__Warehousing__/graphics/icons/storehouse-storage-tiny.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-storage]-c[storehouse-tiny]",
		place_result = "storehouse-storage-tiny",
		stack_size = 15
	},
	-- Active Provider Storehouse Tiny
	{
		type = "item",
		name = "storehouse-active-provider-tiny",
		icon = "__Warehousing__/graphics/icons/storehouse-active-provider-tiny.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-active-provider]-c[storehouse-tiny]",
		place_result = "storehouse-active-provider-tiny",
		stack_size = 15
	},
	-- Requester Storehouse Tiny
	{
		type = "item",
		name = "storehouse-requester-tiny",
		icon = "__Warehousing__/graphics/icons/storehouse-requester-tiny.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-e[logistic-chest-requester]-c[storehouse-tiny]",
		place_result = "storehouse-requester-tiny",
		stack_size = 15
	},
	-- Buffer Storehouse Tiny
	{
		type = "item",
		name = "storehouse-buffer-tiny",
		icon = "__Warehousing__/graphics/icons/storehouse-buffer-tiny.png",
		icon_size = 32,
		subgroup = "logistic-network",
		order = "b[storage]-d[logistic-chest-buffer]-c[storehouse-tiny]",
		place_result = "storehouse-buffer-tiny",
		stack_size = 15
	},
})