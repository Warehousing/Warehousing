data:extend(
{
	{ -- Basic SS chest
		type = "container",
		name = "warehouse-basic",
		icon = "__Warehousing__/graphics/icons/warehouse_icon.png",
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
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 159,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse_image.png",
			priority = "high",
			width = 160,
			height = 200,
			line_length = 5,
			frame_count = 5,
			shift = {0, -0.6},
			animation_speed = 0.5,
			run_mode = "forward-then-backwards",
			x = 0,
			y = 0,
		},
		animation =
		{
			filename = "__Warehousing__/graphics/entity/warehouse_image.png",
			priority = "high",
			width = 160,
			height = 200,
			line_length = 5,
			frame_count = 5,
			shift = {0, -0.6},
			animation_speed = 0.5,
			run_mode = "forward-then-backwards",
			x = 0,
			y = 0,
		},
	}
})
