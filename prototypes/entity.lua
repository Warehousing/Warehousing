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
function shift(modifier, value)
	return modifier + value
end

-- cnc = circuit_network_connection
local warehouse_basic_cnc_shift_x = 1.6
local warehouse_basic_cnc_shift_y = 0.6
local warehouse_small_cnc_shift_x = 1.05
local warehouse_small_cnc_shift_y = 0.35
local warehouse_tiny_cnc_shift_x = 0.6
local warehouse_tiny_cnc_shift_y = 0.1
local storehouse_basic_cnc_shift_x = 0.15
local storehouse_basic_cnc_shift_y = -0.35
local storehouse_small_cnc_shift_x = -0.3
local storehouse_small_cnc_shift_y = -0.55
local storehouse_tiny_cnc_shift_x = -0.55
local storehouse_tiny_cnc_shift_y = -0.75

function circuitConnectorSprites(shift_x, shift_y)
	local ccs = table.deepcopy(data.raw["container"]["steel-chest"].circuit_connector_sprites)
	ccs.led_light = {intensity = 0.8, size = 0.9}
	ccs.blue_led_light_offset = {0.609375, 0.890625}
	ccs.red_green_led_light_offset = {0.59375, 0.78125}
	ccs.connector_main =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
		height = 50,
		priority = "low",
		scale = 0.5,
		shift =	{shift(shift_x, 0.578125), shift(shift_y, 0.625)},
		width = 52,
		x = 364,
		y = 50,
	}
	ccs.connector_shadow =
	{
		draw_as_shadow = true,
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04b-base-shadow-sequence.png",
		height = 46,
		priority = "low",
		scale = 0.5,
		shift =	{shift(shift_x, 0.71875), shift(shift_y, 0.875)},
		width = 62,
		x = 434,
		y = 46,
	}
	ccs.led_red =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
		height = 46,
		priority = "low",
		scale = 0.5,
		shift =	{shift(shift_x, 0.578125), shift(shift_y, 0.59375)},
		width = 48,
		x = 336,
		y = 46,
	}
	ccs.led_green =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
		height = 46,
		priority = "low",
		scale = 0.5,
		shift =	{shift(shift_x, 0.578125), shift(shift_y, 0.59375)},
		width = 48,
		x = 336,
		y = 46,
	}
	ccs.led_blue =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
		height = 60,
		priority = "low",
		scale = 0.5,
		shift =	{shift(shift_x, 0.578125), shift(shift_y, 0.59375)},
		width = 60,
		x = 420,
		y = 60,
	}
	ccs.led_blue_off =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
		height = 44,
		priority = "low",
		scale = 0.5,
		shift =	{shift(shift_x, 0.578125), shift(shift_y, 0.59375)},
		width = 46,
		x = 322,
		y = 44,
	}
	ccs.wire_pins =
	{
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
		height = 58,
		priority = "low",
		scale = 0.5,
		shift =	{shift(shift_x, 0.578125), shift(shift_y, 0.59375)},
		width = 62,
		x = 434,
		y = 58,
	}
	ccs.wire_pins_shadow =
	{
		draw_as_shadow = true,
		filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
		height = 54,
		priority = "low",
		scale = 0.5,
		shift =	{shift(shift_x, 0.734375), shift(shift_y, 0.71875)},
		width = 70,
		x = 490,
		y = 54,
	}
	return ccs
end

local warehouse_basic_cs = circuitConnectorSprites(warehouse_basic_cnc_shift_x, warehouse_basic_cnc_shift_y)
local storehouse_basic_cs = circuitConnectorSprites(storehouse_basic_cnc_shift_x, storehouse_basic_cnc_shift_y)
local warehouse_small_cs = circuitConnectorSprites(warehouse_small_cnc_shift_x, warehouse_small_cnc_shift_y)
local storehouse_small_cs = circuitConnectorSprites(storehouse_small_cnc_shift_x, storehouse_small_cnc_shift_y)
local warehouse_tiny_cs = circuitConnectorSprites(warehouse_tiny_cnc_shift_x, warehouse_tiny_cnc_shift_y)
local storehouse_tiny_cs = circuitConnectorSprites(storehouse_tiny_cnc_shift_x, storehouse_tiny_cnc_shift_y)

function createContainer(name, size, collision, selection, connector, p_width, p_height, p_shift, shift_x, shift_y)
	local cc = table.deepcopy(data.raw["container"]["steel-chest"])
	cc.type = "container"
	cc.name = name.."-"..size
	cc.icon = "__Warehousing__/graphics/icons/"..name.."-"..size..".png"
	cc.icon_size = 32
	cc.flags = {"placeable-neutral", "placeable-player", "player-creation"}
	cc.minable = {mining_time = 2, result = name.."-"..size }
	if name == "warehouse" then
		cc.max_health = 450
	elseif name == "storehouse" then
		cc.max_health = 250
	end
	cc.corpse = "big-remnants"
	cc.dying_explosion = "medium-explosion"
	cc.open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85}
	cc.close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75}
	cc.vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65}
	cc.resistances = {{type = "fire", percent = 90} }
	cc.collision_box = {{-collision, -collision}, {collision, collision}}
	cc.selection_box = {{-selection, -selection}, {selection, selection}}
	cc.fast_replaceable_group = "container"
	if name == "warehouse" then
		cc.inventory_size = warehouse_slots
	elseif name == "storehouse" then
		cc.inventory_size = storehouse_slots
	end
	cc.scale_info_icons = settings.startup["Warehousing-icon-scaling"].value
	cc.picture =
	{
		filename = "__Warehousing__/graphics/entity/"..name.."-"..size..".png",
		priority = "high",
		width = p_width,
		height = p_height,
		shift = p_shift,
	}
	cc.circuit_wire_max_distance = 7.5
	cc.circuit_connector_sprites = connector
	cc.circuit_wire_connection_point.wire.red = {shift(shift_x, 0.675), shift(shift_y, 0.775)}
	cc.circuit_wire_connection_point.wire.green = {shift(shift_x, 0.875), shift(shift_y, 0.825)}
	cc.circuit_wire_connection_point.shadow.red = {shift(shift_x, 0.85), shift(shift_y, 0.9)}
	cc.circuit_wire_connection_point.shadow.green = {shift(shift_x, 1.05), shift(shift_y, 0.95)}
	return cc
end

local warehouse_basic = createContainer("warehouse", "basic", 2.7, 3.0, warehouse_basic_cs, 260, 240, {1.0, -0.3}, warehouse_basic_cnc_shift_x, warehouse_basic_cnc_shift_y)
local storehouse_basic = createContainer("storehouse", "basic", 1.2, 1.5, storehouse_basic_cs, 129, 100, {0.421875, 0}, storehouse_basic_cnc_shift_x, storehouse_basic_cnc_shift_y)
local warehouse_small = createContainer("warehouse", "small", 2.1, 2.4, warehouse_small_cs, 210, 190, {0.75, -0.2}, warehouse_small_cnc_shift_x, warehouse_small_cnc_shift_y)
local storehouse_small = createContainer("storehouse", "small", 0.65, 0.95, storehouse_small_cs, 80, 62, {0.25, 0.0}, storehouse_small_cnc_shift_x, storehouse_small_cnc_shift_y)
local warehouse_tiny = createContainer("warehouse", "tiny", 1.6, 1.9, warehouse_tiny_cs, 160, 140, {0.6, -0.1}, warehouse_tiny_cnc_shift_x, warehouse_tiny_cnc_shift_y)
local storehouse_tiny = createContainer("storehouse", "tiny", 0.2, 0.5, storehouse_tiny_cs, 35, 27, {0.1, 0.0}, storehouse_tiny_cnc_shift_x, storehouse_tiny_cnc_shift_y)

data:extend({
	warehouse_basic,
	storehouse_basic,
	warehouse_small,
	storehouse_small,
	warehouse_tiny,
	storehouse_tiny,
})

-- generate logistic variants
function createLogisticContainer(name, size, logistic_type, wire_connection)
	local p = table.deepcopy(data.raw["container"][name.."-"..size])
	p.name = name.."-"..logistic_type.."-"..size
	p.minable.result = p.name
	p.icon = "__Warehousing__/graphics/icons/"..p.name..".png"
	p.picture.filename = "__Warehousing__/graphics/entity/"..p.name..".png"
	p.type = "logistic-container"
	p.circuit_connector_sprites = nil
	p.circuit_wire_connection_point = wire_connection
	p.logistic_mode = logistic_type
	if name == "warehouse" and logistic_type == "storage" then
		p.inventory_size = storage_warehouse_slots
	elseif name == "storehouse" and logistic_type == "storage" then
		p.inventory_size = storage_storehouse_slots
	end
	if logistic_type == "storage" then
		p.logistic_slots_count = 1
	elseif logistic_type == "buffer" then
		p.logistic_slots_count = 12
	elseif logistic_type == "requester" then
		p.logistic_slots_count = 12
	else
		p.logistic_slots_count = nil
	end
	return p
end

local basic_logistic_warehouse_wcp =
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
local small_logistic_warehouse_wcp =
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
}
local tiny_logistic_warehouse_wcp =
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
}
local basic_logistic_storehouse_wcp =
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
local small_logistic_storehouse_wcp =
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
}
local tiny_logistic_storehouse_wcp =
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
}

local storehouse_active_provider_basic = createLogisticContainer("storehouse", "basic", "active-provider", basic_logistic_storehouse_wcp)
local storehouse_passive_provider_basic = createLogisticContainer("storehouse", "basic", "passive-provider", basic_logistic_storehouse_wcp)
local storehouse_storage_basic = createLogisticContainer("storehouse", "basic", "storage", basic_logistic_storehouse_wcp)
local storehouse_buffer_basic = createLogisticContainer("storehouse", "basic", "buffer", basic_logistic_storehouse_wcp)
local storehouse_requester_basic = createLogisticContainer("storehouse", "basic", "requester", basic_logistic_storehouse_wcp)
local warehouse_active_provider_basic = createLogisticContainer("warehouse", "basic", "active-provider", basic_logistic_warehouse_wcp)
local warehouse_passive_provider_basic = createLogisticContainer("warehouse", "basic", "passive-provider", basic_logistic_warehouse_wcp)
local warehouse_storage_basic = createLogisticContainer("warehouse", "basic", "storage", basic_logistic_warehouse_wcp)
local warehouse_buffer_basic = createLogisticContainer("warehouse", "basic", "buffer", basic_logistic_warehouse_wcp)
local warehouse_requester_basic = createLogisticContainer("warehouse", "basic", "requester", basic_logistic_warehouse_wcp)

local storehouse_active_provider_small = createLogisticContainer("storehouse", "small", "active-provider", small_logistic_storehouse_wcp)
local storehouse_passive_provider_small = createLogisticContainer("storehouse", "small", "passive-provider", small_logistic_storehouse_wcp)
local storehouse_storage_small = createLogisticContainer("storehouse", "small", "storage", small_logistic_storehouse_wcp)
local storehouse_buffer_small = createLogisticContainer("storehouse", "small", "buffer", small_logistic_storehouse_wcp)
local storehouse_requester_small = createLogisticContainer("storehouse", "small", "requester", basic_logistic_storehouse_wcp)
local warehouse_active_provider_small = createLogisticContainer("warehouse", "small", "active-provider", small_logistic_warehouse_wcp)
local warehouse_passive_provider_small = createLogisticContainer("warehouse", "small", "passive-provider", small_logistic_warehouse_wcp)
local warehouse_storage_small = createLogisticContainer("warehouse", "small", "storage", small_logistic_warehouse_wcp)
local warehouse_buffer_small = createLogisticContainer("warehouse", "small", "buffer", small_logistic_warehouse_wcp)
local warehouse_requester_small = createLogisticContainer("warehouse", "small", "requester", small_logistic_warehouse_wcp)

local storehouse_active_provider_tiny = createLogisticContainer("storehouse", "tiny", "active-provider", tiny_logistic_storehouse_wcp)
local storehouse_passive_provider_tiny = createLogisticContainer("storehouse", "tiny", "passive-provider", tiny_logistic_storehouse_wcp)
local storehouse_storage_tiny = createLogisticContainer("storehouse", "tiny", "storage", tiny_logistic_storehouse_wcp)
local storehouse_buffer_tiny = createLogisticContainer("storehouse", "tiny", "buffer", tiny_logistic_storehouse_wcp)
local storehouse_requester_tiny = createLogisticContainer("storehouse", "tiny", "requester", tiny_logistic_storehouse_wcp)
local warehouse_active_provider_tiny = createLogisticContainer("warehouse", "tiny", "active-provider", tiny_logistic_warehouse_wcp)
local warehouse_passive_provider_tiny = createLogisticContainer("warehouse", "tiny", "passive-provider", tiny_logistic_warehouse_wcp)
local warehouse_storage_tiny = createLogisticContainer("warehouse", "tiny", "storage", tiny_logistic_warehouse_wcp)
local warehouse_buffer_tiny = createLogisticContainer("warehouse", "tiny", "buffer", tiny_logistic_warehouse_wcp)
local warehouse_requester_tiny = createLogisticContainer("warehouse", "tiny", "requester", tiny_logistic_warehouse_wcp)

data:extend({
	storehouse_active_provider_basic,
	storehouse_passive_provider_basic,
	storehouse_storage_basic,
	storehouse_buffer_basic,
	storehouse_requester_basic,
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
	warehouse_active_provider_basic,
	warehouse_passive_provider_basic,
	warehouse_storage_basic,
	warehouse_buffer_basic,
	warehouse_requester_basic,
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
