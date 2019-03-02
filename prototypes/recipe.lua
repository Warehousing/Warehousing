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
		name = "warehouse-passive-provider",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic", 1 },
			{ "logistic-chest-passive-provider", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-passive-provider"
	},
	-- Storage Warehouse
	{
		type = "recipe",
		name = "warehouse-storage",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic", 1 },
			{ "logistic-chest-storage", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-storage"
	},
	-- Active Provider Warehouse
	{
		type = "recipe",
		name = "warehouse-active-provider",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic", 1 },
			{ "logistic-chest-active-provider", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-active-provider"
	},
	-- Requester Warehouse
	{
		type = "recipe",
		name = "warehouse-requester",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic", 1 },
			{ "logistic-chest-requester", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-requester"
	},
	-- Buffer Warehouse
	{
		type = "recipe",
		name = "warehouse-buffer",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-buffer"
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
		name = "storehouse-passive-provider",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic", 1 },
			{ "logistic-chest-passive-provider", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-passive-provider"
	},
	-- Storage Storehouse
	{
		type = "recipe",
		name = "storehouse-storage",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic", 1 },
			{ "logistic-chest-storage", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-storage"
	},
	-- Active Provider Storehouse
	{
		type = "recipe",
		name = "storehouse-active-provider",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic", 1 },
			{ "logistic-chest-active-provider", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-active-provider"
	},
	-- Requester Storehouse
	{
		type = "recipe",
		name = "storehouse-requester",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic", 1 },
			{ "logistic-chest-requester", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-requester"
	},
	-- Buffer Storehouse
	{
		type = "recipe",
		name = "storehouse-buffer",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-buffer"
	},
	--     --- SMALL --
	-- Basic Warehouse
	{
		type = "recipe",
		name = "warehouse-basic-small",
		enabled = "false",
		ingredients =
		{
			{ "steel-plate", 200 },
			{ "stone-brick", 40 },
			{ "iron-stick", 85 },
		},
		result = "warehouse-basic-small"
	},
	-- Passive Provider Warehouse
	{
		type = "recipe",
		name = "warehouse-passive-provider-small",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic-small", 1 },
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
			{ "warehouse-basic-small", 1 },
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
			{ "warehouse-basic-small", 1 },
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
			{ "warehouse-basic-small", 1 },
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
			{ "warehouse-basic-small", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-buffer-small"
	},
	-- Basic Storehouse
	{
		type = "recipe",
		name = "storehouse-basic-small",
		enabled = "false",
		ingredients =
		{
			{ "steel-plate", 50 },
			{ "stone-brick", 10 },
			{ "iron-stick", 16 },
		},
		result = "storehouse-basic-small"
	},
	-- Passive Provider Storehouse
	{
		type = "recipe",
		name = "storehouse-passive-provider-small",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic-small", 1 },
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
			{ "storehouse-basic-small", 1 },
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
			{ "storehouse-basic-small", 1 },
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
			{ "storehouse-basic-small", 1 },
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
			{ "storehouse-basic-small", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-buffer-small"
	},
	--     --- TINY --
	-- Basic Warehouse
	{
		type = "recipe",
		name = "warehouse-basic-tiny",
		enabled = "false",
		ingredients =
		{
			{ "steel-plate", 200 },
			{ "stone-brick", 40 },
			{ "iron-stick", 85 },
		},
		result = "warehouse-basic-tiny"
	},
	-- Passive Provider Warehouse
	{
		type = "recipe",
		name = "warehouse-passive-provider-tiny",
		enabled = "false",
		ingredients =
		{
			{ "warehouse-basic-tiny", 1 },
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
			{ "warehouse-basic-tiny", 1 },
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
			{ "warehouse-basic-tiny", 1 },
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
			{ "warehouse-basic-tiny", 1 },
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
			{ "warehouse-basic-tiny", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "steel-plate", 10 },
			{ "iron-stick", 15 },
		},
		result = "warehouse-buffer-tiny"
	},
	-- Basic Storehouse
	{
		type = "recipe",
		name = "storehouse-basic-tiny",
		enabled = "false",
		ingredients =
		{
			{ "steel-plate", 50 },
			{ "stone-brick", 10 },
			{ "iron-stick", 16 },
		},
		result = "storehouse-basic-tiny"
	},
	-- Passive Provider Storehouse
	{
		type = "recipe",
		name = "storehouse-passive-provider-tiny",
		enabled = "false",
		ingredients =
		{
			{ "storehouse-basic-tiny", 1 },
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
			{ "storehouse-basic-tiny", 1 },
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
			{ "storehouse-basic-tiny", 1 },
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
			{ "storehouse-basic-tiny", 1 },
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
			{ "storehouse-basic-tiny", 1 },
			{ "logistic-chest-buffer", 1 },
			{ "iron-stick", 4 },
		},
		result = "storehouse-buffer-tiny"
	},
})
