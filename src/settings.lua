--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
 *
 * See License.txt in the project directory for license information.
--]]
data:extend({
	{
		type = "bool-setting",
		name = "Warehousing-icon-scaling",
		setting_type = "startup",
		default_value = true,
		order = 'a-a',
	},
	{
		type = "bool-setting",
		name = "Warehousing-copy-logistic-system",
		setting_type = "startup",
		default_value = false,
		order = 'c-a[b]',
	},
	{
		type = "bool-setting",
		name = "Warehousing-sixteen-mode",
		setting_type = "startup",
		default_value = false,
		order = 'c-b',
	},
	{
		type = "string-setting",
		name = "Warehousing-logistic-research-requirement",
		setting_type = "startup",
		allowed_values = {"construction", "logistic", "both"},
		default_value = "both",
		order = 'c-a[a]',
	},
})
