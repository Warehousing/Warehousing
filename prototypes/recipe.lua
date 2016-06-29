--[[ Copyright (c) David-John Miller AKA Anoyomouse 2016
 * Part of the warehousing mod
 *
 * See LICENCE in the project directory for licence information
--]]
data:extend({
	{ -- Basic Warehouse
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
	{ -- Passive Provider Warehouse
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
	{ -- Storage Warehouse
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
	{ -- Active Provider Warehouse
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
	{ -- Requestor Warehouse
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
	{ -- Basic Storehouse
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
	{ -- Passive Provider Storehouse
		type = "recipe",
		name = "storehouse-passive-provider",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"logistic-chest-passive-provider",1},
			{"iron-plate",5},
			{"advanced-circuit", 2},
		},
		result = "storehouse-passive-provider"
	},
	{ -- Storage Storehouse
		type = "recipe",
		name = "storehouse-storage",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"logistic-chest-storage",1},
			{"iron-plate",5},
			{"advanced-circuit", 2},
			{"steel-chest",5},
		},
		result = "storehouse-storage"
	},
	{ -- Active Provider Storehouse
		type = "recipe",
		name = "storehouse-active-provider",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"logistic-chest-active-provider",1},
			{"iron-plate",5},
			{"advanced-circuit", 2},
		},
		result = "storehouse-active-provider"
	},
	{ -- Requestor Storehouse
		type = "recipe",
		name = "storehouse-requester",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"logistic-chest-requester",1},
			{"iron-plate",5},
			{"advanced-circuit", 2},
		},
		result = "storehouse-requester"
	},
})
