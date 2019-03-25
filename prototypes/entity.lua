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

local warehouse_basic_shift_x = 1.6
local warehouse_basic_shift_y = 0.6

local storehouse_basic_shift_x = 0.15
local storehouse_basic_shift_y = -0.35

function shift(modifier, value)
	return modifier + value
end

function circuitConnectorSprites(shift_x, shift_y)
	local c = table.deepcopy(data.raw["container"]["blue-chest"].circuit_connector_sprites)
	c.led_light = {intensity = 0.8, size = 0.9}
	c.blue_led_light_offset = {0.609375, 0.890625}
	c.red_green_led_light_offset = {0.59375, 0.78125}
	c.connector_main =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
		height = 50,
		priority = "low",
		scale = 0.5,
		shift =
		{
			shift(shift_x, 0.578125),
			shift(shift_y, 0.625)
		},
		width = 52,
		x = 364,
		y = 50,
	}
	c.connector_shadow =
	{
		draw_as_shadow = true,
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04b-base-shadow-sequence.png",
		height = 46,
		priority = "low",
		scale = 0.5,
		shift =
		{
			shift(shift_x, 0.71875),
			shift(shift_y, 0.875),
		},
		width = 62,
		x = 434,
		y = 46,
	}
	c.led_red =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
		height = 46,
		priority = "low",
		scale = 0.5,
		shift =
		{
			shift(shift_x, 0.578125),
			shift(shift_y, 0.59375),
		},
		width = 48,
		x = 336,
		y = 46,
	}
	c.led_green =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
		height = 46,
		priority = "low",
		scale = 0.5,
		shift =
		{
			shift(shift_x, 0.578125),
			shift(shift_y, 0.59375),
		},
		width = 48,
		x = 336,
		y = 46,
	}
	c.led_blue =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
		height = 60,
		priority = "low",
		scale = 0.5,
		shift =
		{
			shift(shift_x, 0.578125),
			shift(shift_y, 0.59375),
		},
		width = 60,
		x = 420,
		y = 60,
	}
	c.led_blue_off =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
		height = 44,
		priority = "low",
		scale = 0.5,
		shift =
		{
			shift(shift_x, 0.578125),
			shift(shift_y, 0.59375),
		},
		width = 46,
		x = 322,
		y = 44,
	}
	c.wire_pins =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
		height = 58,
		priority = "low",
		scale = 0.5,
		shift =
		{
			shift(shift_x, 0.578125),
			shift(shift_y, 0.59375),
		},
		width = 62,
		x = 434,
		y = 58,
	}
	c.wire_pins_shadow =
	{
		draw_as_shadow = true,
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
		height = 54,
		priority = "low",
		scale = 0.5,
		shift =
		{
			shift(shift_x, 0.734375),
			shift(shift_y, 0.71875),
		},
		width = 70,
		x = 490,
		y = 54,
	}
	return c
end

function wireShift(shift_x, shift_y)
	local w = table.deepcopy(data.raw["container"]["blue-chest"].circuit_wire_connection_point)
	w.wire.red = {shift(shift_x, 0.675), shift(shift_y, 0.775)}
	w.wire.green = {shift(shift_x, 0.875), shift(shift_y, 0.825)}
	w.shadow.red = {shift(shift_x, 0.85), shift(shift_y, 0.9)}
	w.shadow.green = {shift(shift_x, 1.05), shift(shift_y, 0.95)}
	return w
end

local warehouse_basic_connector_sprites = circuitConnectorSprites(warehouse_basic_shift_x, warehouse_basic_shift_y)
local warehouse_basic_wire_connection_point = wireShift(warehouse_basic_shift_x, warehouse_basic_shift_y)

local storehouse_basic_connector_sprites = circuitConnectorSprites(storehouse_basic_shift_x, storehouse_basic_shift_y)
local storehouse_basic_wire_connection_point = wireShift(storehouse_basic_shift_x, storehouse_basic_shift_y)

-- generate base storehouse and warehouse
data:extend({
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
		circuit_connector_sprites = warehouse_basic_connector_sprites,
		circuit_wire_connection_point = warehouse_basic_wire_connection_point,
	},
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
		circuit_connector_sprites = storehouse_basic_connector_sprites,
		circuit_wire_connection_point = storehouse_basic_wire_connection_point,
	},
})

local logistic_warehouse_wire_conection_point =
{
	shadow =
	{
		red = {2.52, 0.65},
		green = {2.01, 0.65},
	},
	wire =
	{
		red = {2.22, 0.32},
		green = {1.71, 0.32},
	},
}
local logistic_storehouse_wire_conection_point =
{
	shadow =
	{
		red = {0.56, -0.6},
		green = {0.26, -0.6},
	},
	wire =
	{
		red = {0.16, -0.9},
		green = {-0.16, -0.9},
	},
}

-- generate logistic variants
function createLogisticContainer(name, logistic_type)
	local p = table.deepcopy(data.raw["container"][name.."-basic"])
	p.name = name.."-"..logistic_type
	p.minable.result = p.name
	p.icon = "__Warehousing__/graphics/icons/"..p.name..".png"
	p.picture.filename = "__Warehousing__/graphics/entity/"..p.name..".png"
	p.type = "logistic-container"
	p.circuit_connector_sprites = nil
	if name == "warehouse" then
		p.circuit_wire_connection_point = logistic_warehouse_wire_conection_point
	else if name == "storehouse" then
		p.circuit_wire_connection_point = logistic_storehouse_wire_conection_point
		end
	end
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

data:extend({
	storehouse_active_provider,
	storehouse_passive_provider,
	storehouse_storage,
	storehouse_buffer,
	storehouse_requester,
	warehouse_active_provider,
	warehouse_passive_provider,
	warehouse_storage,
	warehouse_buffer,
	warehouse_requester,
})
