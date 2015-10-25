data:extend(
{
	{
		type = "technology",
		name = "warehouse-research",
		icon = "__Warehousing__/graphics/research/warehouse-research.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-basic",
			}
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
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-passive-provider",
			},
			{
				type = "unlock-recipe",
				recipe = "warehouse-storage",
			}
		},
		prerequisites = { "construction-robotics", "warehouse-research" },
		unit =
		{
			count = 50,
			ingredients = {
				{ "science-pack-1", 1},
				{ "science-pack-2", 1}
			},
			time = 30
		},
		order = "c-k-a"
	},
})

