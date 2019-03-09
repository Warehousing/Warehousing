--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
 *
 * See License.txt in the project directory for license information.
--]]
data:extend(
{
	--     -- BASE --
	-- Warehouse Research
	{
		type = "technology",
		name = "warehouse-research",
		icon = "__Warehousing__/graphics/research/warehouse-research.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-basic",
			},
		},
		prerequisites = { "steel-processing" },
		unit =
		{
			count = 50,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
			time = 30
		},
		order = "c-a"
	},
	-- Logistics Warehouse Research 1
	{
		type = "technology",
		name = "warehouse-logistics-research-1",
		icon = "__Warehousing__/graphics/research/warehouse-logistics-research.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-passive-provider-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-storage-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-passive-provider-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-storage-basic",
			},
		},
		prerequisites = { "warehouse-research", "robotics" },
		unit =
		{
			count = 150,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
			time = 30
		},
		order = "c-k-a"
	},
	-- Logistics Warehouse Research 2
	{
		type = "technology",
		name = "warehouse-logistics-research-2",
		icon = "__Warehousing__/graphics/research/warehouse-logistics-research.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-active-provider-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-requester-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-buffer-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-active-provider-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-requester-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-buffer-basic",
			},
		},
		prerequisites = { "warehouse-logistics-research-1", "logistic-system" },
		unit =
		{
			count = 300,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "utility-science-pack", 1 },
			},
			time = 30
		},
		order = "c-k-b"
	},
	--     -- TINY --
	-- Warehouse Research
	{
		type = "technology",
		name = "warehouse-research-tiny",
		icon = "__Warehousing__/graphics/research/warehouse-research-tiny.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-small",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-small",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-tiny",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-tiny",
			},
		},
		prerequisites = { "steel-processing" },
		unit =
		{
			count = 100,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
			time = 30
		},
		order = "c-a"
	},
	-- Logistics Warehouse Research 1
	{
		type = "technology",
		name = "warehouse-logistics-research-1-tiny",
		icon = "__Warehousing__/graphics/research/warehouse-logistics-research-tiny.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-passive-provider-small",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-storage-small",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-passive-provider-small",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-storage-small",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-passive-provider-tiny",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-storage-tiny",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-passive-provider-tiny",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-storage-tiny",
			},
		},
		prerequisites = { "warehouse-research-tiny", "robotics" },
		unit =
		{
			count = 300,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
			time = 30
		},
		order = "c-k-a"
	},
	-- Logistics Warehouse Research 2
	{
		type = "technology",
		name = "warehouse-logistics-research-2-tiny",
		icon = "__Warehousing__/graphics/research/warehouse-logistics-research-tiny.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-active-provider-small",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-requester-small",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-buffer-small",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-active-provider-small",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-requester-small",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-buffer-small",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-active-provider-tiny",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-requester-tiny",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-buffer-tiny",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-active-provider-tiny",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-requester-tiny",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-buffer-tiny",
			},
		},
		prerequisites = { "warehouse-logistics-research-1-tiny", "logistic-system" },
		unit =
		{
			count = 600,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "utility-science-pack", 1 },
			},
			time = 30
		},
		order = "c-k-b"
	},
})

