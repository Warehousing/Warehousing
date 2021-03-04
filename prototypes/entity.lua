--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * rewritten by Optera 2019
 *
 * extended by dgw 2021
 *
 * Part of the Warehousing mod
 *
 * See License.txt in the project directory for license information.
--]]

ICONPATH = "__Warehousing__/graphics/icons/"
ENTITYPATH = "__Warehousing__/graphics/entity/"

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
	{
		type = "container",
		name = "warehouse-basic",
		icon = ICONPATH.."warehouse-basic.png",
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
		landing_location_offset = {1.0, -1.0},
		fast_replaceable_group = "container",
		inventory_size = warehouse_slots,
		scale_info_icons = settings.startup["Warehousing-icon-scaling"].value,
		picture = {
			layers = {
				{
					filename = ENTITYPATH.."warehouse/warehouse-basic.png",
					width = 260,
					height = 240,
					hr_version = {
						filename = ENTITYPATH.."warehouse/hr-warehouse-basic.png",
						width = 520,
						height = 480,
						scale = 0.5,
					}
				},
				{
					filename = ENTITYPATH.."warehouse/warehouse-basic-shadow.png",
					width = 260,
					height = 240,
					shift = {1, 0},
					draw_as_shadow = true,
					hr_version = {
						filename = ENTITYPATH.."warehouse/hr-warehouse-basic-shadow.png",
						width = 520,
						height = 480,
						shift = {1, 0},
						scale = 0.5,
						draw_as_shadow = true,
					}
				},
			},
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
	{
		type = "container",
		name = "storehouse-basic",
		icon = ICONPATH.."storehouse-basic.png",
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
		picture ={
			layers = {
				{
					filename = ENTITYPATH.."storehouse/storehouse-basic.png",
					width = 128,
					height = 128,
					hr_version = {
						filename = ENTITYPATH.."storehouse/hr-storehouse-basic.png",
						width = 256,
						height = 256,
						scale = 0.5,
					}
				},
				{
					filename = ENTITYPATH.."storehouse/storehouse-basic-shadow.png",
					width = 128,
					height = 128,
					draw_as_shadow = true,
					hr_version = {
						filename = ENTITYPATH.."storehouse/hr-storehouse-basic-shadow.png",
						width = 256,
						height = 256,
						scale = 0.5,
						draw_as_shadow = true,
					}
				},
			},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {0.76, 0.3},
				green = {0.06, 0.3}
			},
			wire =
			{
				red = {0.36, -0.04},
				green = {-0.36, -0.04}
			}
		},
	},
})


local connectorsprite = {
	connector_main =
	{
		filename = ENTITYPATH.."warehouse/warehouse-wire-connector.png",
		width = 260,
		height = 240,
		hr_version = {
			filename = ENTITYPATH.."warehouse/hr-warehouse-wire-connector.png",
			width = 520,
			height = 480,
			scale = 0.5,
		}
	},

	connector_shadow =
	{
		filename = ENTITYPATH.."warehouse/warehouse-shadow.png",
		width = 260,
		height = 240,
		shift = {1, 0},
		draw_as_shadow = true,
		hr_version = {
			filename = ENTITYPATH.."warehouse/hr-warehouse-shadow.png",
			width = 520,
			height = 480,
			shift = {1, 0},
			scale = 0.5,
			draw_as_shadow = true,
		}
	},
	led_blue = { filename = "__core__/graphics/empty.png", size = 1 },
	led_green = { filename = "__core__/graphics/empty.png", size = 1 },
	led_red = { filename = "__core__/graphics/empty.png", size = 1 },
	led_light = { type = "basic", intensity = 0, size = 0 }
}
-- generate logistic variants
function createLogisticContainer(name, logistic_type)
	local p = table.deepcopy(data.raw["container"][name.."-basic"])
	p.name = name.."-"..logistic_type
	p.minable.result = p.name
	p.icon = ICONPATH..p.name..".png"
	p.picture.layers[1].filename = ENTITYPATH..name.."/"..p.name..".png"
	p.picture.layers[1].hr_version.filename = ENTITYPATH..name.."/hr-"..p.name..".png"
	--p.picture.layers[2].filename = ENTITYPATH..name.."/"..name.."-shadow.png"
	--p.picture.layers[2].hr_version.filename = ENTITYPATH..name.."/hr-"..name.."-shadow.png"
	p.type = "logistic-container"
	p.logistic_mode = logistic_type
	if name == "warehouse" then
		p.circuit_connector_sprites = connectorsprite
	end
	if logistic_type == "storage" then
		p.max_logistic_slots = 1
	end
	return p
end

local storehouse_active_provider = createLogisticContainer("storehouse", "active-provider")
local storehouse_passive_provider = createLogisticContainer("storehouse", "passive-provider")
local storehouse_storage = createLogisticContainer("storehouse", "storage")
storehouse_storage.inventory_size = storage_storehouse_slots
local storehouse_buffer = createLogisticContainer("storehouse", "buffer")
local storehouse_requester = createLogisticContainer("storehouse", "requester")
local warehouse_active_provider = createLogisticContainer("warehouse", "active-provider")
local warehouse_passive_provider = createLogisticContainer("warehouse", "passive-provider")
local warehouse_storage = createLogisticContainer("warehouse", "storage")
warehouse_storage.inventory_size = storage_warehouse_slots
local warehouse_buffer = createLogisticContainer("warehouse", "buffer")
local warehouse_requester = createLogisticContainer("warehouse", "requester")


-- generate linked variants
function createLinkedContainer(kind)
	local p = table.deepcopy(data.raw["container"][kind.."-basic"])
	p.type = "linked-container"
	p.name = "linked-"..kind
	p.minable.result = p.name
	p.circuit_wire_connection_point = nil
	p.circuit_connector_sprites = nil
	p.circuit_wire_max_distance = nil
	p.gui_mode = "admins" -- all, none, admins
	p.icon = "__Warehousing__/graphics/icons/linked-"..kind..".png"
	p.icon_size = 32
	p.picture.filename = "__Warehousing__/graphics/entity/linked-"..kind..".png"
	return p
end

local linked_warehouse = createLinkedContainer("warehouse")
linked_warehouse.inventory_size = warehouse_slots
local linked_storehouse = createLinkedContainer("storehouse")
linked_storehouse.inventory_size = storehouse_slots


-- add generated entities to data table
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
	linked_warehouse,
	linked_storehouse,
})
