--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
 *
 * See License.txt in the project directory for license information.
--]]
data:extend(
{
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
				{ "science-pack-1", 1 },
				{ "science-pack-2", 1 },
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "warehouse-logistics-research",
		icon = "__Warehousing__/graphics/research/warehouse-logistics-research.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-passive-provider",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-storage",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-active-provider",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-requester",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-buffer",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-passive-provider",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-storage",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-active-provider",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-requester",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-buffer",
			},
		},
		prerequisites = { "warehouse-research", "logistic-system" },
		unit =
		{
			count = 250,
			ingredients = {
				{ "science-pack-1", 1 },
				{ "science-pack-2", 1 },
				{ "science-pack-3", 1 },
				{ "high-tech-science-pack", 1 },
			},
			time = 30
		},
		order = "c-k-a"
	},
})

