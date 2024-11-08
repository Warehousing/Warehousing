--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
 * ported to 2.0 by anoyomouse 2024
 *
 * See License.txt in the project directory for license information.
--]]
ICONPATH = "__Warehousing__/graphics/research/"
data:extend(
{
	{
		type = "technology",
		name = "warehouse-research",
		icon = ICONPATH.."warehouse-research.png",
		icon_size = 256,
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
	{
		type = "technology",
		name = "warehouse-logistics-research-1",
		icon = ICONPATH.."warehouse-logistics-research-1.png",
		icon_size = 256,
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
				recipe = "storehouse-passive-provider",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-storage",
			},
		},
		prerequisites = { "warehouse-research", "concrete", "advanced-circuit" },
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
	{
		type = "technology",
		name = "warehouse-logistics-research-2",
		icon = ICONPATH.."warehouse-logistics-research-2.png",
		icon_size = 256,
		effects =
		{
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
})
