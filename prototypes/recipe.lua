--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
 *
 * See License.txt in the project directory for license information.
--]]
data:extend({
	--     --- BASE --
	-- Basic Warehouse
	{
		type = "recipe",
		name = "warehouse-basic",
		enabled = "false",
		ingredients =
		{
			{ "steel-plate", 200 },
			{ "stone-brick", 40 },
			{ "iron-stick", 85 },
		},
		result = "warehouse-basic"
	},
	-- Passive Provider Warehouse
	{
		type = "recipe",
		name = "warehouse-passive-provider-basic",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic", 1 },
			{ "logistic-chest-passive-provider", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-passive-provider-basic"
	},
	-- Storage Warehouse
	{
		type = "recipe",
		name = "warehouse-storage-basic",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic", 1 },
			{ "logistic-chest-storage", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-storage-basic"
	},
	-- Active Provider Warehouse
	{
		type = "recipe",
		name = "warehouse-active-provider-basic",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic", 1 },
			{ "logistic-chest-active-provider", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-active-provider-basic"
	},
	-- Requester Warehouse
	{
		type = "recipe",
		name = "warehouse-requester-basic",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic", 1 },
			{ "logistic-chest-requester", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-requester-basic"
	},
	-- Buffer Warehouse
	{
		type = "recipe",
		name = "warehouse-buffer-basic",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-buffer-basic"
	},
	-- Basic Storehouse
	{
		type = "recipe",
		name = "storehouse-basic",
		enabled = "false",
		ingredients =
		{
			{ "steel-plate", 50 },
			{ "stone-brick", 10 },
			{ "iron-stick", 16 },
		},
		result = "storehouse-basic"
	},
	-- Passive Provider Storehouse
	{
		type = "recipe",
		name = "storehouse-passive-provider-basic",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic", 1 },
			{ "logistic-chest-passive-provider", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-passive-provider-basic"
	},
	-- Storage Storehouse
	{
		type = "recipe",
		name = "storehouse-storage-basic",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic", 1 },
			{ "logistic-chest-storage", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-storage-basic"
	},
	-- Active Provider Storehouse
	{
		type = "recipe",
		name = "storehouse-active-provider-basic",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic", 1 },
			{ "logistic-chest-active-provider", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-active-provider-basic"
	},
	-- Requester Storehouse
	{
		type = "recipe",
		name = "storehouse-requester-basic",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic", 1 },
			{ "logistic-chest-requester", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-requester-basic"
	},
	-- Buffer Storehouse
	{
		type = "recipe",
		name = "storehouse-buffer-basic",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-buffer-basic"
	},
	--     --- SMALL --
	-- Basic Warehouse
	{
		type = "recipe",
		name = "warehouse-small",
		enabled = "false",
		ingredients =
		{
			{ "steel-plate", 200 },
			{ "stone-brick", 40 },
			{ "iron-stick", 85 },
		},
		result = "warehouse-small"
	},
	-- Passive Provider Warehouse
	{
		type = "recipe",
		name = "warehouse-passive-provider-small",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-small", 1 },
			{ "logistic-chest-passive-provider", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-passive-provider-small"
	},
	-- Storage Warehouse
	{
		type = "recipe",
		name = "warehouse-storage-small",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-small", 1 },
			{ "logistic-chest-storage", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-storage-small"
	},
	-- Active Provider Warehouse
	{
		type = "recipe",
		name = "warehouse-active-provider-small",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-small", 1 },
			{ "logistic-chest-active-provider", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-active-provider-small"
	},
	-- Requester Warehouse
	{
		type = "recipe",
		name = "warehouse-requester-small",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-small", 1 },
			{ "logistic-chest-requester", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-requester-small"
	},
	-- Buffer Warehouse
	{
		type = "recipe",
		name = "warehouse-buffer-small",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-small", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-buffer-small"
	},
	-- Basic Storehouse
	{
		type = "recipe",
		name = "storehouse-small",
		enabled = "false",
		ingredients =
		{
			{ "steel-plate", 50 },
			{ "stone-brick", 10 },
			{ "iron-stick", 16 },
		},
		result = "storehouse-small"
	},
	-- Passive Provider Storehouse
	{
		type = "recipe",
		name = "storehouse-passive-provider-small",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-small", 1 },
			{ "logistic-chest-passive-provider", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-passive-provider-small"
	},
	-- Storage Storehouse
	{
		type = "recipe",
		name = "storehouse-storage-small",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-small", 1 },
			{ "logistic-chest-storage", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-storage-small"
	},
	-- Active Provider Storehouse
	{
		type = "recipe",
		name = "storehouse-active-provider-small",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-small", 1 },
			{ "logistic-chest-active-provider", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-active-provider-small"
	},
	-- Requester Storehouse
	{
		type = "recipe",
		name = "storehouse-requester-small",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-small", 1 },
			{ "logistic-chest-requester", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-requester-small"
	},
	-- Buffer Storehouse
	{
		type = "recipe",
		name = "storehouse-buffer-small",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-small", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-buffer-small"
	},
	--     --- TINY --
	-- Basic Warehouse
	{
		type = "recipe",
		name = "warehouse-tiny",
		enabled = "false",
		ingredients =
		{
			{ "steel-plate", 200 },
			{ "stone-brick", 40 },
			{ "iron-stick", 85 },
		},
		result = "warehouse-tiny"
	},
	-- Passive Provider Warehouse
	{
		type = "recipe",
		name = "warehouse-passive-provider-tiny",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-tiny", 1 },
			{ "logistic-chest-passive-provider", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-passive-provider-tiny"
	},
	-- Storage Warehouse
	{
		type = "recipe",
		name = "warehouse-storage-tiny",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-tiny", 1 },
			{ "logistic-chest-storage", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-storage-tiny"
	},
	-- Active Provider Warehouse
	{
		type = "recipe",
		name = "warehouse-active-provider-tiny",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-tiny", 1 },
			{ "logistic-chest-active-provider", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-active-provider-tiny"
	},
	-- Requester Warehouse
	{
		type = "recipe",
		name = "warehouse-requester-tiny",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-tiny", 1 },
			{ "logistic-chest-requester", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-requester-tiny"
	},
	-- Buffer Warehouse
	{
		type = "recipe",
		name = "warehouse-buffer-tiny",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-tiny", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-buffer-tiny"
	},
	-- Basic Storehouse
	{
		type = "recipe",
		name = "storehouse-tiny",
		enabled = "false",
		ingredients =
		{
			{ "steel-plate", 50 },
			{ "stone-brick", 10 },
			{ "iron-stick", 16 },
		},
		result = "storehouse-tiny"
	},
	-- Passive Provider Storehouse
	{
		type = "recipe",
		name = "storehouse-passive-provider-tiny",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-tiny", 1 },
			{ "logistic-chest-passive-provider", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-passive-provider-tiny"
	},
	-- Storage Storehouse
	{
		type = "recipe",
		name = "storehouse-storage-tiny",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-tiny", 1 },
			{ "logistic-chest-storage", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-storage-tiny"
	},
	-- Active Provider Storehouse
	{
		type = "recipe",
		name = "storehouse-active-provider-tiny",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-tiny", 1 },
			{ "logistic-chest-active-provider", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-active-provider-tiny"
	},
	-- Requester Storehouse
	{
		type = "recipe",
		name = "storehouse-requester-tiny",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-tiny", 1 },
			{ "logistic-chest-requester", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-requester-tiny"
	},
	-- Buffer Storehouse
	{
		type = "recipe",
		name = "storehouse-buffer-tiny",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-tiny", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-buffer-tiny"
	},
})

