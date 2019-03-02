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
		name = "warehouse-basic-small",
		icon = "__Warehousing__/graphics/icons/warehouse-basic-small.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "warehouse-basic-small"},
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
		collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
		selection_box = {{-2.4, -2.4}, {2.4, 2.4}},
		fast_replaceable_group = "container",
		inventory_size = warehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-basic-small.png",
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
		name = "warehouse-basic-tiny",
		icon = "__Warehousing__/graphics/icons/warehouse-basic-tiny.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "warehouse-basic-tiny"},
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
		collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
		selection_box = {{-1.9, -1.9}, {1.9, 1.9}},
		fast_replaceable_group = "container",
		inventory_size = warehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-basic-tiny.png",
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
		name = "storehouse-basic-small",
		icon = "__Warehousing__/graphics/icons/storehouse-basic-small.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "storehouse-basic-small"},
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
		collision_box = {{-0.95, -0.95}, {0.95, 0.95}},
		selection_box = {{-0.95, -0.95}, {0.95, 0.95}},
		fast_replaceable_group = "container",
		inventory_size = storehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-basic-small.png",
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
		name = "storehouse-basic-tiny",
		icon = "__Warehousing__/graphics/icons/storehouse-basic-tiny.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "storehouse-basic-tiny"},
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
		collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fast_replaceable_group = "container",
		inventory_size = storehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-basic-tiny.png",
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
function createLogisticContainer(name, logistic_type)
	local p = table.deepcopy(data.raw["container"][name.."-basic"])
	p.name = name.."-"..logistic_type
	p.minable.result = p.name
	p.icon = "__Warehousing__/graphics/icons/"..p.name..".png"
	p.picture.filename = "__Warehousing__/graphics/entity/"..p.name..".png"
	p.type = "logistic-container"
	p.logistic_mode = logistic_type
	return p
end

local storehouse_active_provider = createLogisticContainer("storehouse", "active-provider")
local storehouse_passive_provider = createLogisticContainer("storehouse", "passive-provider")
local storehouse_storage = createLogisticContainer("storehouse", "storage")
storehouse_storage.inventory_size = storage_storehouse_slots
storehouse_storage.logistic_slots_count = 1
local storehouse_buffer = createLogisticContainer("storehouse", "buffer")
storehouse_buffer.logistic_slots_count = 12
local storehouse_requester = createLogisticContainer("storehouse", "requester")
storehouse_requester.logistic_slots_count = 12
local warehouse_active_provider = createLogisticContainer("warehouse", "active-provider")
local warehouse_passive_provider = createLogisticContainer("warehouse", "passive-provider")
local warehouse_storage = createLogisticContainer("warehouse", "storage")
warehouse_storage.inventory_size = storage_warehouse_slots
warehouse_storage.logistic_slots_count = 1
local warehouse_buffer = createLogisticContainer("warehouse", "buffer")
warehouse_buffer.logistic_slots_count = 12
local warehouse_requester = createLogisticContainer("warehouse", "requester")
warehouse_requester.logistic_slots_count = 12

function createLogisticContainerSmall(name, logistic_type)
	local p = table.deepcopy(data.raw["container"][name.."-basic-small"])
	p.name = name.."-"..logistic_type.."-small"
	p.minable.result = p.name
	p.icon = "__Warehousing__/graphics/icons/"..p.name..".png"
	p.picture.filename = "__Warehousing__/graphics/entity/"..p.name..".png"
	p.type = "logistic-container"
	p.logistic_mode = logistic_type
	return p
end

local storehouse_active_provider_small = createLogisticContainerSmall("storehouse", "active-provider")
local storehouse_passive_provider_small = createLogisticContainerSmall("storehouse", "passive-provider")
local storehouse_storage_small = createLogisticContainerSmall("storehouse", "storage")
storehouse_storage_small.inventory_size = storage_storehouse_slots
storehouse_storage_small.logistic_slots_count = 1
local storehouse_buffer_small = createLogisticContainerSmall("storehouse", "buffer")
storehouse_buffer_small.logistic_slots_count = 12
local storehouse_requester_small = createLogisticContainerSmall("storehouse", "requester")
storehouse_requester_small.logistic_slots_count = 12
local warehouse_active_provider_small = createLogisticContainerSmall("warehouse", "active-provider")
local warehouse_passive_provider_small = createLogisticContainerSmall("warehouse", "passive-provider")
local warehouse_storage_small = createLogisticContainerSmall("warehouse", "storage")
warehouse_storage_small.inventory_size = storage_warehouse_slots
warehouse_storage_small.logistic_slots_count = 1
local warehouse_buffer_small = createLogisticContainerSmall("warehouse", "buffer")
warehouse_buffer_small.logistic_slots_count = 12
local warehouse_requester_small = createLogisticContainerSmall("warehouse", "requester")
warehouse_requester_small.logistic_slots_count = 12

function createLogisticContainerTiny(name, logistic_type)
	local p = table.deepcopy(data.raw["container"][name.."-basic-tiny"])
	p.name = name.."-"..logistic_type.."-tiny"
	p.minable.result = p.name
	p.icon = "__Warehousing__/graphics/icons/"..p.name..".png"
	p.picture.filename = "__Warehousing__/graphics/entity/"..p.name..".png"
	p.type = "logistic-container"
	p.logistic_mode = logistic_type
	return p
end

local storehouse_active_provider_tiny = createLogisticContainerTiny("storehouse", "active-provider")
local storehouse_passive_provider_tiny = createLogisticContainerTiny("storehouse", "passive-provider")
local storehouse_storage_tiny = createLogisticContainerTiny("storehouse", "storage")
storehouse_storage_tiny.inventory_size = storage_storehouse_slots
storehouse_storage_tiny.logistic_slots_count = 1
local storehouse_buffer_tiny = createLogisticContainerTiny("storehouse", "buffer")
storehouse_buffer_tiny.logistic_slots_count = 12
local storehouse_requester_tiny = createLogisticContainerTiny("storehouse", "requester")
storehouse_requester_tiny.logistic_slots_count = 12
local warehouse_active_provider_tiny = createLogisticContainerTiny("warehouse", "active-provider")
local warehouse_passive_provider_tiny = createLogisticContainerTiny("warehouse", "passive-provider")
local warehouse_storage_tiny = createLogisticContainerTiny("warehouse", "storage")
warehouse_storage_tiny.inventory_size = storage_warehouse_slots
warehouse_storage_tiny.logistic_slots_count = 1
local warehouse_buffer_tiny = createLogisticContainerTiny("warehouse", "buffer")
warehouse_buffer_tiny.logistic_slots_count = 12
local warehouse_requester_tiny = createLogisticContainerTiny("warehouse", "requester")
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


