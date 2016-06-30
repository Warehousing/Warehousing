--[[ Copyright (c) David-John Miller AKA Anoyomouse 2016
 * Part of the warehousing mod
 *
 * See LICENCE in the project directory for licence information
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
		prerequisites = {"steel-processing"},
		unit =
		{
			count = 40,
			ingredients = {{ "science-pack-1", 1}},
			time = 20
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
		},
		prerequisites = { "construction-robotics", "logistic-robotics", "warehouse-research" },
		unit =
		{
			count = 25,
			ingredients = {
				{ "science-pack-1", 2},
				{ "science-pack-2", 2},
				{ "science-pack-3", 1}
			},
			time = 30
		},
		order = "c-k-a"
	},
})

