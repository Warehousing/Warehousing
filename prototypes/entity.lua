data:extend(
{
	{ -- Basic warehouse
		type = "container",
		name = "warehouse-basic",
		icon = "__Warehousing__/graphics/icons/warehouse-basic.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "warehouse-basic"},
		max_health = 350,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-basic-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
	},
	{
		type = "logistic-container",
		name = "warehouse-passive-provider",
		icon = "__Warehousing__/graphics/icons/warehouse-passive-provider.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-passive-provider"},
		max_health = 450,
		corpse = "big-remnants",
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		logistic_mode = "passive-provider",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-passive-provider-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
				-- green = {4.5, 2.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	},
	{
		type = "logistic-container",
		name = "warehouse-storage",
		icon = "__Warehousing__/graphics/icons/warehouse-storage.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-storage"},
		max_health = 450,
		corpse = "big-remnants",
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 2000,
		logistic_mode = "storage",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-storage-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
				-- green = {4.5, 2.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	},
	{
		type = "logistic-container",
		name = "warehouse-active-provider",
		icon = "__Warehousing__/graphics/icons/warehouse-active-provider.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-active-provider"},
		max_health = 450,
		corpse = "big-remnants",
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		logistic_mode = "active-provider",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-active-provider-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
				-- green = {4.5, 2.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	},
	{
		type = "logistic-container",
		name = "warehouse-requester",
		icon = "__Warehousing__/graphics/icons/warehouse-requester.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-requester"},
		max_health = 450,
		corpse = "big-remnants",
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		logistic_mode = "requester",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-requester-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
				-- green = {4.5, 2.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	}
})

