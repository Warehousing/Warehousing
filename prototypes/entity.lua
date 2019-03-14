--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * rewritten by Optera 2019
 *
 * Part of the Warehousing mod
 *
 * See License.txt in the project directory for license information.
--]]

local warehouse_slots = 1800
local storehouse_slots = 450
local storage_warehouse_slots = 2000
local storage_storehouse_slots = 500

-- Support legacy mode
if settings.startup["Warehousing-sixteen-mode"].value then
	warehouse_slots = 800
	storehouse_slots = 150
	storage_warehouse_slots = 2000
	storage_storehouse_slots = 300
end

-- generate base storehouse and warehouse
data:extend({
	-- base warehouse
	{
		type = "container",
		name = "warehouse-basic",
		icon = "__Warehousing__/graphics/icons/warehouse-basic.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "warehouse-basic"},
		max_health = 450,
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
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
		fast_replaceable_group = "container",
		inventory_size = warehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-basic.png",
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
				red = {2.52, 0.65},
				green = {2.01, 0.65}
			},
			wire =
			{
				red = {2.22, 0.32},
				green = {1.71, 0.32}
			}
		},
	},
	-- small warehouse
	{
		type = "container",
		name = "warehouse-small",
		icon = "__Warehousing__/graphics/icons/warehouse-small.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "warehouse-small"},
		max_health = 450,
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
		collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
		selection_box = {{-2.4, -2.4}, {2.4, 2.4}},
		fast_replaceable_group = "container",
		inventory_size = warehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-small.png",
			priority = "high",
			width = 210,
			height = 190,
			shift = {0.75, -0.2},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.0, 0.6},
				green = {1.6, 0.6}
			},
			wire =
			{
				red = {1.75, 0.3},
				green = {1.35, 0.3}
			}
		},
	},
	-- tiny warehouse
	{
		type = "container",
		name = "warehouse-tiny",
		icon = "__Warehousing__/graphics/icons/warehouse-tiny.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "warehouse-tiny"},
		max_health = 450,
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
		collision_box = {{-1.6, -1.6}, {1.6, 1.6}},
		selection_box = {{-1.9, -1.9}, {1.9, 1.9}},
		fast_replaceable_group = "container",
		inventory_size = warehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-tiny.png",
			priority = "high",
			width = 160,
			height = 140,
			shift = {0.6, -0.1},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {1.55, 0.5},
				green = {1.25, 0.5}
			},
			wire =
			{
				red = {1.35, 0.3},
				green = {1.05, 0.3}
			}
		},
	},
	-- base storehuse
	{
		type = "container",
		name = "storehouse-basic",
		icon = "__Warehousing__/graphics/icons/storehouse-basic.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "storehouse-basic"},
		max_health = 250,
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
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "container",
		inventory_size = storehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-basic.png",
			priority = "high",
			width = 129,
			height = 100,
			shift = {0.421875, 0},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {0.56, -0.6},
				green = {0.26, -0.6}
			},
			wire =
			{
				red = {0.16, -0.9},
				green = {-0.16, -0.9}
			}
		},
	},
	-- small storehouse
	{
		type = "container",
		name = "storehouse-small",
		icon = "__Warehousing__/graphics/icons/storehouse-small.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "storehouse-small"},
		max_health = 250,
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
		collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
		selection_box = {{-0.95, -0.95}, {0.95, 0.95}},
		fast_replaceable_group = "container",
		inventory_size = storehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-small.png",
			priority = "high",
			width = 80,
			height = 62,
			shift = {0.25, 0.0},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {.56, -0.3},
				green = {.26, -0.3}
			},
			wire =
			{
				red = {0.16, -0.5},
				green = {-0.16, -0.5}
			}
		},
	},
	-- tiny storehouse
	{
		type = "container",
		name = "storehouse-tiny",
		icon = "__Warehousing__/graphics/icons/storehouse-tiny.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "storehouse-tiny"},
		max_health = 250,
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
		collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fast_replaceable_group = "container",
		inventory_size = storehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-tiny.png",
			priority = "high",
			width = 35,
			height = 27,
			shift = {0.1, 0.0},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {.56, -0.1},
				green = {.26, -0.1}
			},
			wire =
			{
				red = {0.16, -0.2},
				green = {-0.16, -0.2}
			}
		},
	},
})

-- generate logistic variants
function createLogisticContainer(name, size, logistic_type)
	local p = table.deepcopy(data.raw["container"][name.."-"..size])
	p.name = name.."-"..logistic_type.."-"..size
	p.minable.result = p.name
	p.icon = "__Warehousing__/graphics/icons/"..p.name..".png"
	p.picture.filename = "__Warehousing__/graphics/entity/"..p.name..".png"
	p.type = "logistic-container"
	p.logistic_mode = logistic_type
	return p
end

local storehouse_active_provider = createLogisticContainer("storehouse", "basic", "active-provider")
local storehouse_passive_provider = createLogisticContainer("storehouse", "basic", "passive-provider")
local storehouse_storage = createLogisticContainer("storehouse", "basic", "storage")
storehouse_storage.inventory_size = storage_storehouse_slots
storehouse_storage.logistic_slots_count = 1
local storehouse_buffer = createLogisticContainer("storehouse", "basic", "buffer")
storehouse_buffer.logistic_slots_count = 12
local storehouse_requester = createLogisticContainer("storehouse", "basic", "requester")
storehouse_requester.logistic_slots_count = 12
local warehouse_active_provider = createLogisticContainer("warehouse", "basic", "active-provider")
local warehouse_passive_provider = createLogisticContainer("warehouse", "basic", "passive-provider")
local warehouse_storage = createLogisticContainer("warehouse", "basic", "storage")
warehouse_storage.inventory_size = storage_warehouse_slots
warehouse_storage.logistic_slots_count = 1
local warehouse_buffer = createLogisticContainer("warehouse", "basic", "buffer")
warehouse_buffer.logistic_slots_count = 12
local warehouse_requester = createLogisticContainer("warehouse", "basic", "requester")
warehouse_requester.logistic_slots_count = 12

local storehouse_active_provider_small = createLogisticContainer("storehouse", "small", "active-provider")
local storehouse_passive_provider_small = createLogisticContainer("storehouse", "small", "passive-provider")
local storehouse_storage_small = createLogisticContainer("storehouse", "small", "storage")
storehouse_storage_small.inventory_size = storage_storehouse_slots
storehouse_storage_small.logistic_slots_count = 1
local storehouse_buffer_small = createLogisticContainer("storehouse", "small", "buffer")
storehouse_buffer_small.logistic_slots_count = 12
local storehouse_requester_small = createLogisticContainer("storehouse", "small", "requester")
storehouse_requester_small.logistic_slots_count = 12
local warehouse_active_provider_small = createLogisticContainer("warehouse", "small", "active-provider")
local warehouse_passive_provider_small = createLogisticContainer("warehouse", "small", "passive-provider")
local warehouse_storage_small = createLogisticContainer("warehouse", "small", "storage")
warehouse_storage_small.inventory_size = storage_warehouse_slots
warehouse_storage_small.logistic_slots_count = 1
local warehouse_buffer_small = createLogisticContainer("warehouse", "small", "buffer")
warehouse_buffer_small.logistic_slots_count = 12
local warehouse_requester_small = createLogisticContainer("warehouse", "small", "requester")
warehouse_requester_small.logistic_slots_count = 12

local storehouse_active_provider_tiny = createLogisticContainer("storehouse", "tiny", "active-provider")
local storehouse_passive_provider_tiny = createLogisticContainer("storehouse", "tiny", "passive-provider")
local storehouse_storage_tiny = createLogisticContainer("storehouse", "tiny", "storage")
storehouse_storage_tiny.inventory_size = storage_storehouse_slots
storehouse_storage_tiny.logistic_slots_count = 1
local storehouse_buffer_tiny = createLogisticContainer("storehouse", "tiny", "buffer")
storehouse_buffer_tiny.logistic_slots_count = 12
local storehouse_requester_tiny = createLogisticContainer("storehouse", "tiny", "requester")
storehouse_requester_tiny.logistic_slots_count = 12
local warehouse_active_provider_tiny = createLogisticContainer("warehouse", "tiny", "active-provider")
local warehouse_passive_provider_tiny = createLogisticContainer("warehouse", "tiny", "passive-provider")
local warehouse_storage_tiny = createLogisticContainer("warehouse", "tiny", "storage")
warehouse_storage_tiny.inventory_size = storage_warehouse_slots
warehouse_storage_tiny.logistic_slots_count = 1
local warehouse_buffer_tiny = createLogisticContainer("warehouse", "tiny", "buffer")
warehouse_buffer_tiny.logistic_slots_count = 12
local warehouse_requester_tiny = createLogisticContainer("warehouse", "tiny", "requester")
warehouse_requester_tiny.logistic_slots_count = 12

data:extend({
	storehouse_active_provider,
	storehouse_passive_provider,
	storehouse_storage,
	storehouse_buffer,
	storehouse_requester,
	storehouse_active_provider_small,
	storehouse_passive_provider_small,
	storehouse_storage_small,
	storehouse_buffer_small,
	storehouse_requester_small,
	storehouse_active_provider_tiny,
	storehouse_passive_provider_tiny,
	storehouse_storage_tiny,
	storehouse_buffer_tiny,
	storehouse_requester_tiny,
	warehouse_active_provider,
	warehouse_passive_provider,
	warehouse_storage,
	warehouse_buffer,
	warehouse_requester,
	warehouse_active_provider_small,
	warehouse_passive_provider_small,
	warehouse_storage_small,
	warehouse_buffer_small,
	warehouse_requester_small,
	warehouse_active_provider_tiny,
	warehouse_passive_provider_tiny,
	warehouse_storage_tiny,
	warehouse_buffer_tiny,
	warehouse_requester_tiny,
})

