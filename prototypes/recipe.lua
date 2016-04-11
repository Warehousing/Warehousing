--[[ Copyright (c) David-John Miller AKA Anoyomouse 2016
 * Part of the warehousing mod
 *
 * See LICENCE in the project directory for licence information
--]]
data:extend({
	{
		type = "recipe",
		name = "warehouse-basic",
		enabled = "false",
		ingredients = 
		{
			{"steel-plate",60},
			{"iron-plate",100},
			{"stone-brick",25},
			{"wooden-chest",10},
		},
		result = "warehouse-basic"
	},
	{
		type = "recipe",
		name = "storehouse-basic",
		enabled = "false",
		ingredients = 
		{
			{"steel-plate",20},
			{"iron-plate",40},
			{"stone-brick",10},
			{"wooden-chest",5},
		},
		result = "storehouse-basic"
	},
	{
		type = "recipe",
		name = "warehouse-passive-provider",
		enabled = "false",
		ingredients = 
		{
			{"warehouse-basic",1},
			{"logistic-chest-passive-provider",1},
			{"iron-plate",20},
			{"advanced-circuit", 5},
		},
		result = "warehouse-passive-provider"
	},
	{
		type = "recipe",
		name = "storehouse-provider",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"logistic-chest-passive-provider",1},
			{"iron-plate",5},
			{"advanced-circuit", 1},
		},
		result = "storehouse-provider"
	},
	{
		type = "recipe",
		name = "storehouse-storage",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"logistic-chest-storage",1},
			{"iron-plate",5},
			{"advanced-circuit", 1},
			{"steel-chest",5},
		},
		result = "storehouse-storage"
	},
	{
		type = "recipe",
		name = "warehouse-storage",
		enabled = "false",
		ingredients = 
		{
			{"warehouse-basic",1},
			{"logistic-chest-storage",1},
			{"iron-plate",20},
			{"advanced-circuit", 5},
			{"steel-chest",15},
		},
		result = "warehouse-storage"
	},
	{
		type = "recipe",
		name = "warehouse-active-provider",
		enabled = "false",
		ingredients = 
		{
			{"warehouse-basic",1},
			{"logistic-chest-active-provider",1},
			{"iron-plate",20},
			{"advanced-circuit", 5},
		},
		result = "warehouse-active-provider"
	},
	{
		type = "recipe",
		name = "storehouse-active",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"logistic-chest-active-provider",1},
			{"iron-plate",5},
			{"advanced-circuit", 1},
		},
		result = "storehouse-active"
	},
	{
		type = "recipe",
		name = "warehouse-requester",
		enabled = "false",
		ingredients = 
		{
			{"warehouse-basic",1},
			{"logistic-chest-requester",1},
			{"iron-plate",20},
			{"advanced-circuit", 5},
		},
		result = "warehouse-requester"
	},
	{
		type = "recipe",
		name = "storehouse-requester",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"logistic-chest-requester",1},
			{"iron-plate",5},
			{"advanced-circuit", 1},
		},
		result = "storehouse-requester"
	},
	{
		type = "recipe",
		name = "storehouse-smart",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"smart-chest",1},
			{"iron-plate",5},
			{"electronic-circuit", 1},
		},
		result = "storehouse-smart"
	},
	{
		type = "recipe",
		name = "warehouse-smart",
		enabled = "false",
		ingredients = 
		{
			{"warehouse-basic",1},
			{"smart-chest",1},
			{"iron-plate",20},
			{"electronic-circuit", 5},
		},
		result = "warehouse-smart"
	},
})
