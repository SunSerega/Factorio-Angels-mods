data:extend(
{
  -- ORE
  {
    type = "item",
    name = "zinc-ore",
    icon = "__angelssmelting__/graphics/icons/ore-zinc.png",
    icon_size = 32,
    subgroup = "angels-zinc",
    order = "a",
    stack_size = 200
  },
  -- SMELTING INTERMEDIATE
  {
    type = "item",
    name = "processed-zinc",
    icon = "__angelssmelting__/graphics/icons/processed-zinc.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-zinc",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-zinc",
    icon = "__angelssmelting__/graphics/icons/pellet-zinc.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-zinc",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-zinc-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-zinc-oxide.png",
    icon_size = 32,
    subgroup = "angels-zinc",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "cathode-zinc",
    icon = "__angelssmelting__/graphics/icons/cathode-zinc.png",
    icon_size = 32,
    subgroup = "angels-zinc",
    order = "e",
    stack_size = 200
  },
  -- SMELTING RESULTS
  {
    type = "item",
    name = "ingot-zinc",
    icon = "__angelssmelting__/graphics/icons/ingot-zinc.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-zinc",
    order = "f",
    stack_size = 200
  },
  {
    type = "item",
    name = "powder-zinc",
    icon = "__angelssmelting__/graphics/icons/powder-zinc.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-zinc",
    order = "g",
    stack_size = 200
  },
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "liquid-molten-zinc",
    icon = "__angelssmelting__/graphics/icons/molten-zinc.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-zinc-casting",
    order = "h",
    default_temperature = 419.5,
    heat_capacity = "0KJ",
    base_color = {r = 100/255, g = 183/255, b = 177/255},
    flow_color = {r = 100/255, g = 183/255, b = 177/255},
    max_temperature = 419.5,
auto_barrel = false
  },
  {
    type = "item",
    name = "angels-roll-zinc",
    icon = "__angelssmelting__/graphics/icons/roll-zinc.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-zinc-casting",
    order = "i",
    stack_size = 200
  },
  -- CASTING RESULT
  {
    type = "item",
    name = "angels-plate-zinc",
    icon = "__angelssmelting__/graphics/icons/plate-zinc.png",
    icon_size = 32,
    subgroup = "angels-zinc-casting",
    order = "j",
    stack_size = 200
  },
}
)