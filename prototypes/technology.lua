data:extend(
{
	{
		type = "technology",
		name = "warehouse-research",
		icon = "__Warehousing__/graphics/research/warehouse_research.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-basic",
			}
		},
		prerequisites = "steel-processing",
		unit =
		{
			count = 40,
			ingredients = {{ "science-pack-1", 1}},
			time = 20
		},
		order = "c-a"
	}
})

