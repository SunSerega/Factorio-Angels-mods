--[ [--
local create_spider_vehicle_body = function(entity_name, entity_scale)
  return {
    type = "spider-vehicle",
    name = entity_name,

    icon = "__base__/graphics/icons/spidertron.png",
    icon_size = 64, icon_mipmaps = 4,
    minimap_representation =
    {
      filename = "__base__/graphics/entity/spidertron/spidertron-map.png",
      flags = {"icon"},
      size = {128, 128},
      scale = 0.5
    },

    collision_box =
    {
      {-1 * entity_scale, -1 * entity_scale},
      { 1 * entity_scale,  1 * entity_scale}
    },
    collision_mask = {},
    selection_box =
    {
      {-1 * entity_scale, -1 * entity_scale},
      { 1 * entity_scale,  1 * entity_scale}
    },
    selection_priority = 51,

    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},

    minable = {mining_time = 1, result = entity_name},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume= 0.35 },
    close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
    sound_minimum_speed = 0.1,
    sound_scaling_ratio = 0.6,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/spidertron/spidertron-vox.ogg",
        volume = 0.35
      },
      activate_sound =
      {
        filename = "__base__/sound/spidertron/spidertron-activate.ogg",
        volume = 0.5
      },
      deactivate_sound =
      {
        filename = "__base__/sound/spidertron/spidertron-deactivate.ogg",
        volume = 0.5
      },
      match_speed_to_activity = true,
    },

    weight = 1,
    braking_force = 1,
    friction_force = 1,

    max_health = 3000,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 60
      },
      {
        type = "physical",
        decrease = 15,
        percent = 60
      },
      {
        type = "impact",
        decrease = 50,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 75
      },
      {
        type = "acid",
        decrease = 0,
        percent = 70
      },
      {
        type = "laser",
        decrease = 0,
        percent = 70
      },
      {
        type = "electric",
        decrease = 0,
        percent = 70
      }
    },

    corpse = "spidertron-remnants",
    dying_explosion = "spidertron-explosion",

    energy_per_hit_point = 1,

    guns = { "spidertron-rocket-launcher-1", "spidertron-rocket-launcher-2", "spidertron-rocket-launcher-3", "spidertron-rocket-launcher-4" },
    automatic_weapon_cycling = true,
    chain_shooting_cooldown_modifier = 0.5,
    inventory_size = 80,
    equipment_grid = "spidertron-equipment-grid",

    height = 1.5,
    torso_rotation_speed = 0.005,
    chunk_exploration_radius = 3,

    energy_source =
    {
      type = "void",
    },
    movement_energy_consumption = "250kW",

    spider_engine =
    {
      legs =
      {
        {
          leg = string.format("%s-leg-1", entity_name),
          mount_position = util.by_pixel(15 * entity_scale, -22 * entity_scale),--{0.5, -0.75},
          ground_position = {2.25 * entity_scale, -2.5 * entity_scale},
          blocking_legs = {2},
          leg_hit_the_ground_trigger =
          {
            {
              type = "create-trivial-smoke",
              smoke_name = "smoke-building",
              speed_from_center = 0.03,
              offset_deviation = { {-0.2, -0.2}, {0.2, 0.2} },
              repeat_count = 4,
              starting_frame_deviation = 5,
              starting_frame_speed_deviation = 5
            }
          }
        },
        {
          leg = string.format("%s-leg-2", entity_name),
          mount_position = util.by_pixel(23 * entity_scale, -10 * entity_scale),--{0.75, -0.25},
          ground_position = {3 * entity_scale, -1 * entity_scale},
          blocking_legs = {1, 3},
          leg_hit_the_ground_trigger =
          {
            {
              type = "create-trivial-smoke",
              smoke_name = "smoke-building",
              speed_from_center = 0.03,
              offset_deviation = { {-0.2, -0.2}, {0.2, 0.2} },
              repeat_count = 4,
              starting_frame_deviation = 5,
              starting_frame_speed_deviation = 5
            }
          }
        },
        {
          leg = string.format("%s-leg-3", entity_name),
          mount_position = util.by_pixel(25 * entity_scale, 4 * entity_scale),--{0.75, 0.25},
          ground_position = {3 * entity_scale, 1 * entity_scale},
          blocking_legs = {2, 4},
          leg_hit_the_ground_trigger =
          {
            {
              type = "create-trivial-smoke",
              smoke_name = "smoke-building",
              speed_from_center = 0.03,
              offset_deviation = { {-0.2, -0.2}, {0.2, 0.2} },
              repeat_count = 4,
              starting_frame_deviation = 5,
              starting_frame_speed_deviation = 5
            }
          }
        },
        {
          leg = string.format("%s-leg-4", entity_name),
          mount_position = util.by_pixel(15 * entity_scale, 17 * entity_scale),--{0.5, 0.75},
          ground_position = {2.25 * entity_scale, 2.5 * entity_scale},
          blocking_legs = {3},
          leg_hit_the_ground_trigger =
          {
            {
              type = "create-trivial-smoke",
              smoke_name = "smoke-building",
              speed_from_center = 0.03,
              offset_deviation = { {-0.2, -0.2}, {0.2, 0.2} },
              repeat_count = 4,
              starting_frame_deviation = 5,
              starting_frame_speed_deviation = 5
            }
          }
        },
        {
          leg = string.format("%s-leg-5", entity_name),
          mount_position = util.by_pixel(-15 * entity_scale, -22 * entity_scale),--{-0.5, -0.75},
          ground_position = {-2.25 * entity_scale, -2.5 * entity_scale},
          blocking_legs = {6, 1},
          leg_hit_the_ground_trigger =
          {
            {
              type = "create-trivial-smoke",
              smoke_name = "smoke-building",
              speed_from_center = 0.03,
              offset_deviation = { {-0.2, -0.2}, {0.2, 0.2} },
              repeat_count = 4,
              starting_frame_deviation = 5,
              starting_frame_speed_deviation = 5
            }
          }
        },
        {
          leg = string.format("%s-leg-6", entity_name),
          mount_position = util.by_pixel(-23 * entity_scale, -10 * entity_scale),--{-0.75, -0.25},
          ground_position = {-3 * entity_scale, -1 * entity_scale},
          blocking_legs = {5, 7},
          leg_hit_the_ground_trigger =
          {
            {
              type = "create-trivial-smoke",
              smoke_name = "smoke-building",
              speed_from_center = 0.03,
              offset_deviation = { {-0.2, -0.2}, {0.2, 0.2} },
              repeat_count = 4,
              starting_frame_deviation = 5,
              starting_frame_speed_deviation = 5
            }
          }
        },
        {
          leg = string.format("%s-leg-7", entity_name),
          mount_position = util.by_pixel(-25 * entity_scale, 4 * entity_scale),--{-0.75, 0.25},
          ground_position = {-3 * entity_scale, 1 * entity_scale},
          blocking_legs = {6, 8},
          leg_hit_the_ground_trigger =
          {
            {
              type = "create-trivial-smoke",
              smoke_name = "smoke-building",
              speed_from_center = 0.03,
              offset_deviation = { {-0.2, -0.2}, {0.2, 0.2} },
              repeat_count = 4,
              starting_frame_deviation = 5,
              starting_frame_speed_deviation = 5
            }
          }
        },
        {
          leg = string.format("%s-leg-8", entity_name),
          mount_position = util.by_pixel(-15 * entity_scale, 17 * entity_scale),--{-0.5, 0.75},
          ground_position = {-2.25 * entity_scale, 2.5 * entity_scale},
          blocking_legs = {7},
          leg_hit_the_ground_trigger =
          {
            {
              type = "create-trivial-smoke",
              smoke_name = "smoke-building",
              speed_from_center = 0.03,
              offset_deviation = { {-0.2, -0.2}, {0.2, 0.2} },
              repeat_count = 4,
              starting_frame_deviation = 5,
              starting_frame_speed_deviation = 5
            }
          }
        }
      },
      military_target = "spidertron-military-target",
    },

    graphics_set =
    {
      -- head animation
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/spidertron/torso/spidertron-body.png",
            width = 66,
            height = 70,
            direction_count = 64,
            line_length = 8,
            shift = {0 * entity_scale, -0.59375 * entity_scale},
            scale = 1 * entity_scale,
            hr_version =
            {
              filename = "__base__/graphics/entity/spidertron/torso/hr-spidertron-body.png",
              width = 132,
              height = 138,
              direction_count = 64,
              line_length = 8,
              shift = {0 * entity_scale, -0.59375 * entity_scale},
              scale = 0.5 * entity_scale
            }
          },
          {
            filename = "__base__/graphics/entity/spidertron/torso/spidertron-body-mask.png",
            width = 66,
            height = 50,
            direction_count = 64,
            line_length = 8,
            shift = {0 * entity_scale, -0.4375 * entity_scale},
            scale = 1 * entity_scale,
            apply_runtime_tint = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/spidertron/torso/hr-spidertron-body-mask.png",
              width = 130,
              height = 100,
              direction_count = 64,
              line_length = 8,
              shift = {0 * entity_scale, -0.4375 * entity_scale},
              scale = 0.5 * entity_scale,
              apply_runtime_tint = true
            }
          }
        }
      },
      render_layer = "wires-above",
      shadow_animation =
      {
        filename = "__base__/graphics/entity/spidertron/torso/spidertron-body-shadow.png",
        width = 96,
        height = 48,
        direction_count = 64,
        line_length = 8,
        shift = {0.8125 * entity_scale, 0.03125 * entity_scale},
        scale = 1 * entity_scale,
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/spidertron/torso/hr-spidertron-body-shadow.png",
          width = 192,
          height = 94,
          direction_count = 64,
          line_length = 8,
          shift = {0.8125 * entity_scale, 0.015625 * entity_scale},
          scale = 0.5 * entity_scale,
          draw_as_shadow = true
        }
      },

      -- base animation
      base_animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/spidertron/torso/spidertron-body-bottom.png",
            width = 64,
            height = 54,
            direction_count = 1,
            line_length = 1,
            shift = {0 * entity_scale, 0 * entity_scale},
            scale = 1 * entity_scale,
            hr_version =
            {
              filename = "__base__/graphics/entity/spidertron/torso/hr-spidertron-body-bottom.png",
              width = 126,
              height = 106,
              direction_count = 1,
              line_length = 1,
              shift = {0 * entity_scale, 0 * entity_scale},
              scale = 0.5 * entity_scale
            }
          },
          {
            filename = "__base__/graphics/entity/spidertron/torso/spidertron-body-bottom-mask.png",
            width = 62,
            height = 46,
            direction_count = 1,
            line_length = 1,
            shift = {0 * entity_scale, 0.125 * entity_scale},
            scale = 1 * entity_scale,
            apply_runtime_tint = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/spidertron/torso/hr-spidertron-body-bottom-mask.png",
              width = 124,
              height = 90,
              direction_count = 1,
              line_length = 1,
              shift = {0 * entity_scale, 0.109375 * entity_scale},
              scale = 0.5 * entity_scale,
              apply_runtime_tint = true
            }
          }
        }
      },
      base_render_layer = "higher-object-above",
      shadow_base_animation =
      {
        filename = "__base__/graphics/entity/spidertron/torso/spidertron-body-bottom-shadow.png",
        width = 72,
        height = 48,
        direction_count = 1,
        line_length = 1,
        shift = {-0.03125 * entity_scale, -0.03125 * entity_scale},
        scale = 1 * entity_scale,
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/spidertron/torso/hr-spidertron-body-bottom-shadow.png",
          width = 144,
          height = 96,
          direction_count = 1,
          line_length = 1,
          shift = {-0.03125 * entity_scale, -0.03125 * entity_scale},
          scale = 0.5 * entity_scale,
          draw_as_shadow = true
        }
      },

      autopilot_destination_on_map_visualisation =
      {
        filename = "__core__/graphics/spidertron-target-map-visualization.png",
        flags = {"icon"},
        width = 64,
        height = 64,
        frame_count = 24,
        line_length = 8,
        animation_speed = 0.5,
        priority = "extra-high-no-scale",
        run_mode = "backward",
        scale = 0.5,
        apply_runtime_tint = true
      },
      autopilot_destination_visualisation =
      {
        filename = "__core__/graphics/spidertron-target-map-visualization.png",
        flags = {"icon"},
        width = 64,
        height = 64,
        frame_count = 24,
        line_length = 8,
        animation_speed = 0.5,
        priority = "extra-high-no-scale",
        run_mode = "backward",
        scale = 0.5,
        apply_runtime_tint = true
      },
      autopilot_destination_visualisation_render_layer = "object",

      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/spidertron/torso/spidertron-body-water-reflection.png",
          width = 448,
          height = 448,
          scale = 0.5 * entity_scale,
          shift = {0 * entity_scale, 0 * entity_scale},
          variation_count = 1,
        }
      },

      eye_light =
      {
        color = {r = 1, g = 1, b = 1},
        intensity = 1,
        size = 1
      },
      light =
      {
        {
          color = {r = 1, g = 1, b = 1},
          intensity = 0.4,
          minimum_darkness = 0.3,
          size = 25
        },
        {
          type = "oriented",
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            width = 200,
            height = 200,
            flags = {"light"},
            priority = "extra-high",
            scale = 2 * entity_scale
          },
          source_orientation_offset = 0,
          shift = {x = 0 * entity_scale, y = -15 * entity_scale},
          size = 2 * entity_scale,
          color = {r = 235/255, g = 197/255, b = 76/255},
          intensity = 0.6,
          minimum_darkness = 0.3
        },
        {
          type = "oriented",
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            width = 200,
            height = 200,
            flags = {"light"},
            priority = "extra-high",
            scale = 2 * entity_scale
          },
          source_orientation_offset = -0.05,
          shift = {x = 0 * entity_scale, y = -11.5 * entity_scale},
          size = 1.4 * entity_scale,
          color = {r = 235/255, g = 197/255, b = 76/255},
          intensity = 0.42,
          minimum_darkness = 0.3
        },
        {
          type = "oriented",
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            width = 200,
            height = 200,
            flags = {"light"},
            priority = "extra-high",
            scale = 2 * entity_scale
          },
          source_orientation_offset = 0.04,
          shift = {x = 0 * entity_scale, y = -8.5 * entity_scale},
          size = 0.9 * entity_scale,
          color = {r = 235/255, g = 197/255, b = 76/255},
          intensity = 0.3,
          minimum_darkness = 0.3
        },
        {
          type = "oriented",
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            width = 200,
            height = 200,
            flags = {"light"},
            priority = "extra-high",
            scale = 2 * entity_scale
          },
          source_orientation_offset = 0.06,
          shift = {x = 0 * entity_scale, y = -7.5 * entity_scale},
          size = 0.7 * entity_scale,
          color = {r = 235/255, g = 197/255, b = 76/255},
          intensity = 0.36,
          minimum_darkness = 0.3
        }
      },
      light_positions =
      {
        [0] = {
          { 0.34375 * entity_scale, -0.78125 * entity_scale},
          { 0.40625 * entity_scale, -0.75000 * entity_scale},
          { 0.46875 * entity_scale, -0.71875 * entity_scale},
          { 0.50000 * entity_scale, -0.68750 * entity_scale},
          { 0.53125 * entity_scale, -0.65625 * entity_scale},
          { 0.59375 * entity_scale, -0.62500 * entity_scale},
          { 0.62500 * entity_scale, -0.56250 * entity_scale},
          { 0.62500 * entity_scale, -0.53125 * entity_scale},
          { 0.65625 * entity_scale, -0.46875 * entity_scale},
          { 0.65625 * entity_scale, -0.43750 * entity_scale},
          { 0.65625 * entity_scale, -0.37500 * entity_scale},
          { 0.65625 * entity_scale, -0.34375 * entity_scale},
          { 0.65625 * entity_scale, -0.28125 * entity_scale},
          { 0.62500 * entity_scale, -0.25000 * entity_scale},
          { 0.62500 * entity_scale, -0.18750 * entity_scale},
          { 0.59375 * entity_scale, -0.15625 * entity_scale},
          { 0.56250 * entity_scale, -0.12500 * entity_scale},
          { 0.50000 * entity_scale, -0.06250 * entity_scale},
          { 0.46875 * entity_scale, -0.03125 * entity_scale},
          { 0.40625 * entity_scale,  0.00000 * entity_scale},
          { 0.34375 * entity_scale,  0.00000 * entity_scale},
          { 0.31250 * entity_scale,  0.00000 * entity_scale},
          { 0.25000 * entity_scale,  0.03125 * entity_scale},
          { 0.18750 * entity_scale,  0.06250 * entity_scale},
          { 0.09375 * entity_scale,  0.06250 * entity_scale},
          { 0.03125 * entity_scale,  0.06250 * entity_scale},
          { 0.00000 * entity_scale,  0.06250 * entity_scale},
          {-0.06250 * entity_scale,  0.06250 * entity_scale},
          {-0.12500 * entity_scale,  0.06250 * entity_scale},
          {-0.18750 * entity_scale,  0.03125 * entity_scale},
          {-0.25000 * entity_scale,  0.03125 * entity_scale},
          {-0.31250 * entity_scale,  0.00000 * entity_scale},
          {-0.37500 * entity_scale,  0.00000 * entity_scale},
          {-0.43750 * entity_scale, -0.03125 * entity_scale},
          {-0.46875 * entity_scale, -0.06250 * entity_scale},
          {-0.53125 * entity_scale, -0.09375 * entity_scale},
          {-0.56250 * entity_scale, -0.12500 * entity_scale},
          {-0.59375 * entity_scale, -0.15625 * entity_scale},
          {-0.62500 * entity_scale, -0.21875 * entity_scale},
          {-0.65625 * entity_scale, -0.25000 * entity_scale},
          {-0.65625 * entity_scale, -0.31250 * entity_scale},
          {-0.65625 * entity_scale, -0.34375 * entity_scale},
          {-0.65625 * entity_scale, -0.40625 * entity_scale},
          {-0.65625 * entity_scale, -0.43750 * entity_scale},
          {-0.65625 * entity_scale, -0.50000 * entity_scale},
          {-0.62500 * entity_scale, -0.53125 * entity_scale},
          {-0.59375 * entity_scale, -0.59375 * entity_scale},
          {-0.56250 * entity_scale, -0.62500 * entity_scale},
          {-0.53125 * entity_scale, -0.65625 * entity_scale},
          {-0.50000 * entity_scale, -0.71875 * entity_scale},
          {-0.43750 * entity_scale, -0.75000 * entity_scale},
          {-0.37500 * entity_scale, -0.78125 * entity_scale},
          {-0.34375 * entity_scale, -0.81250 * entity_scale},
          {-0.28125 * entity_scale, -0.81250 * entity_scale},
          {-0.21875 * entity_scale, -0.84375 * entity_scale},
          {-0.15625 * entity_scale, -0.84375 * entity_scale},
          {-0.06250 * entity_scale, -0.87500 * entity_scale},
          { 0.00000 * entity_scale, -0.87500 * entity_scale},
          { 0.03125 * entity_scale, -0.87500 * entity_scale},
          { 0.09375 * entity_scale, -0.84375 * entity_scale},
          { 0.15625 * entity_scale, -0.84375 * entity_scale},
          { 0.21875 * entity_scale, -0.84375 * entity_scale},
          { 0.28125 * entity_scale, -0.81250 * entity_scale},
          { 0.34375 * entity_scale, -0.78125 * entity_scale}
        },
        [1] = {
          {-0.28125 * entity_scale, -0.78125 * entity_scale},
          {-0.21875 * entity_scale, -0.81250 * entity_scale},
          {-0.15625 * entity_scale, -0.81250 * entity_scale},
          {-0.09375 * entity_scale, -0.81250 * entity_scale},
          {-0.03125 * entity_scale, -0.84375 * entity_scale},
          { 0.00000 * entity_scale, -0.84375 * entity_scale},
          { 0.09375 * entity_scale, -0.81250 * entity_scale},
          { 0.15625 * entity_scale, -0.81250 * entity_scale},
          { 0.21875 * entity_scale, -0.81250 * entity_scale},
          { 0.28125 * entity_scale, -0.78125 * entity_scale},
          { 0.34375 * entity_scale, -0.75000 * entity_scale},
          { 0.40625 * entity_scale, -0.71875 * entity_scale},
          { 0.46875 * entity_scale, -0.68750 * entity_scale},
          { 0.50000 * entity_scale, -0.65625 * entity_scale},
          { 0.56250 * entity_scale, -0.62500 * entity_scale},
          { 0.59375 * entity_scale, -0.59375 * entity_scale},
          { 0.62500 * entity_scale, -0.53125 * entity_scale},
          { 0.65625 * entity_scale, -0.50000 * entity_scale},
          { 0.65625 * entity_scale, -0.43750 * entity_scale},
          { 0.68750 * entity_scale, -0.40625 * entity_scale},
          { 0.68750 * entity_scale, -0.34375 * entity_scale},
          { 0.68750 * entity_scale, -0.31250 * entity_scale},
          { 0.68750 * entity_scale, -0.25000 * entity_scale},
          { 0.65625 * entity_scale, -0.21875 * entity_scale},
          { 0.62500 * entity_scale, -0.15625 * entity_scale},
          { 0.62500 * entity_scale, -0.12500 * entity_scale},
          { 0.56250 * entity_scale, -0.06250 * entity_scale},
          { 0.53125 * entity_scale, -0.03125 * entity_scale},
          { 0.50000 * entity_scale,  0.00000 * entity_scale},
          { 0.43750 * entity_scale,  0.00000 * entity_scale},
          { 0.37500 * entity_scale,  0.03125 * entity_scale},
          { 0.31250 * entity_scale,  0.06250 * entity_scale},
          { 0.25000 * entity_scale,  0.09375 * entity_scale},
          { 0.18750 * entity_scale,  0.09375 * entity_scale},
          { 0.12500 * entity_scale,  0.12500 * entity_scale},
          { 0.06250 * entity_scale,  0.12500 * entity_scale},
          { 0.00000 * entity_scale,  0.12500 * entity_scale},
          {-0.06250 * entity_scale,  0.12500 * entity_scale},
          {-0.12500 * entity_scale,  0.12500 * entity_scale},
          {-0.18750 * entity_scale,  0.09375 * entity_scale},
          {-0.25000 * entity_scale,  0.09375 * entity_scale},
          {-0.31250 * entity_scale,  0.06250 * entity_scale},
          {-0.37500 * entity_scale,  0.03125 * entity_scale},
          {-0.43750 * entity_scale,  0.03125 * entity_scale},
          {-0.46875 * entity_scale,  0.00000 * entity_scale},
          {-0.53125 * entity_scale, -0.03125 * entity_scale},
          {-0.56250 * entity_scale, -0.06250 * entity_scale},
          {-0.59375 * entity_scale, -0.09375 * entity_scale},
          {-0.62500 * entity_scale, -0.15625 * entity_scale},
          {-0.65625 * entity_scale, -0.18750 * entity_scale},
          {-0.68750 * entity_scale, -0.25000 * entity_scale},
          {-0.68750 * entity_scale, -0.28125 * entity_scale},
          {-0.68750 * entity_scale, -0.34375 * entity_scale},
          {-0.68750 * entity_scale, -0.40625 * entity_scale},
          {-0.65625 * entity_scale, -0.43750 * entity_scale},
          {-0.65625 * entity_scale, -0.50000 * entity_scale},
          {-0.62500 * entity_scale, -0.53125 * entity_scale},
          {-0.59375 * entity_scale, -0.56250 * entity_scale},
          {-0.56250 * entity_scale, -0.62500 * entity_scale},
          {-0.50000 * entity_scale, -0.65625 * entity_scale},
          {-0.46875 * entity_scale, -0.68750 * entity_scale},
          {-0.40625 * entity_scale, -0.71875 * entity_scale},
          {-0.34375 * entity_scale, -0.75000 * entity_scale},
          {-0.28125 * entity_scale, -0.78125 * entity_scale}
        },
        [2] = {
          { 0.00000 * entity_scale, -0.87500 * entity_scale},
          { 0.06250 * entity_scale, -0.87500 * entity_scale},
          { 0.15625 * entity_scale, -0.87500 * entity_scale},
          { 0.21875 * entity_scale, -0.84375 * entity_scale},
          { 0.28125 * entity_scale, -0.84375 * entity_scale},
          { 0.34375 * entity_scale, -0.81250 * entity_scale},
          { 0.40625 * entity_scale, -0.78125 * entity_scale},
          { 0.43750 * entity_scale, -0.75000 * entity_scale},
          { 0.50000 * entity_scale, -0.71875 * entity_scale},
          { 0.53125 * entity_scale, -0.68750 * entity_scale},
          { 0.59375 * entity_scale, -0.62500 * entity_scale},
          { 0.62500 * entity_scale, -0.59375 * entity_scale},
          { 0.62500 * entity_scale, -0.56250 * entity_scale},
          { 0.65625 * entity_scale, -0.50000 * entity_scale},
          { 0.65625 * entity_scale, -0.46875 * entity_scale},
          { 0.68750 * entity_scale, -0.40625 * entity_scale},
          { 0.68750 * entity_scale, -0.34375 * entity_scale},
          { 0.65625 * entity_scale, -0.31250 * entity_scale},
          { 0.65625 * entity_scale, -0.25000 * entity_scale},
          { 0.62500 * entity_scale, -0.21875 * entity_scale},
          { 0.59375 * entity_scale, -0.15625 * entity_scale},
          { 0.56250 * entity_scale, -0.12500 * entity_scale},
          { 0.53125 * entity_scale, -0.09375 * entity_scale},
          { 0.50000 * entity_scale, -0.06250 * entity_scale},
          { 0.43750 * entity_scale, -0.03125 * entity_scale},
          { 0.37500 * entity_scale,  0.00000 * entity_scale},
          { 0.34375 * entity_scale,  0.00000 * entity_scale},
          { 0.28125 * entity_scale,  0.03125 * entity_scale},
          { 0.18750 * entity_scale,  0.06250 * entity_scale},
          { 0.12500 * entity_scale,  0.06250 * entity_scale},
          { 0.06250 * entity_scale,  0.06250 * entity_scale},
          { 0.00000 * entity_scale,  0.06250 * entity_scale},
          {-0.03125 * entity_scale,  0.06250 * entity_scale},
          {-0.09375 * entity_scale,  0.06250 * entity_scale},
          {-0.18750 * entity_scale,  0.06250 * entity_scale},
          {-0.25000 * entity_scale,  0.03125 * entity_scale},
          {-0.31250 * entity_scale,  0.03125 * entity_scale},
          {-0.37500 * entity_scale,  0.00000 * entity_scale},
          {-0.40625 * entity_scale,  0.00000 * entity_scale},
          {-0.46875 * entity_scale, -0.03125 * entity_scale},
          {-0.53125 * entity_scale, -0.06250 * entity_scale},
          {-0.56250 * entity_scale, -0.12500 * entity_scale},
          {-0.59375 * entity_scale, -0.15625 * entity_scale},
          {-0.62500 * entity_scale, -0.18750 * entity_scale},
          {-0.65625 * entity_scale, -0.25000 * entity_scale},
          {-0.65625 * entity_scale, -0.28125 * entity_scale},
          {-0.68750 * entity_scale, -0.34375 * entity_scale},
          {-0.68750 * entity_scale, -0.37500 * entity_scale},
          {-0.68750 * entity_scale, -0.43750 * entity_scale},
          {-0.65625 * entity_scale, -0.50000 * entity_scale},
          {-0.65625 * entity_scale, -0.53125 * entity_scale},
          {-0.62500 * entity_scale, -0.59375 * entity_scale},
          {-0.59375 * entity_scale, -0.62500 * entity_scale},
          {-0.56250 * entity_scale, -0.65625 * entity_scale},
          {-0.50000 * entity_scale, -0.68750 * entity_scale},
          {-0.46875 * entity_scale, -0.75000 * entity_scale},
          {-0.40625 * entity_scale, -0.78125 * entity_scale},
          {-0.34375 * entity_scale, -0.81250 * entity_scale},
          {-0.31250 * entity_scale, -0.81250 * entity_scale},
          {-0.25000 * entity_scale, -0.84375 * entity_scale},
          {-0.15625 * entity_scale, -0.84375 * entity_scale},
          {-0.09375 * entity_scale, -0.87500 * entity_scale},
          {-0.03125 * entity_scale, -0.87500 * entity_scale},
          { 0.00000 * entity_scale, -0.87500 * entity_scale}
        },
        [3] = {
          {-0.43750 * entity_scale, -0.96875 * entity_scale},
          {-0.37500 * entity_scale, -1.00000 * entity_scale},
          {-0.31250 * entity_scale, -1.03125 * entity_scale},
          {-0.25000 * entity_scale, -1.06250 * entity_scale},
          {-0.18750 * entity_scale, -1.06250 * entity_scale},
          {-0.12500 * entity_scale, -1.09375 * entity_scale},
          {-0.06250 * entity_scale, -1.09375 * entity_scale},
          { 0.00000 * entity_scale, -1.09375 * entity_scale},
          { 0.03125 * entity_scale, -1.09375 * entity_scale},
          { 0.09375 * entity_scale, -1.09375 * entity_scale},
          { 0.15625 * entity_scale, -1.06250 * entity_scale},
          { 0.21875 * entity_scale, -1.06250 * entity_scale},
          { 0.28125 * entity_scale, -1.03125 * entity_scale},
          { 0.34375 * entity_scale, -1.03125 * entity_scale},
          { 0.40625 * entity_scale, -1.00000 * entity_scale},
          { 0.43750 * entity_scale, -0.96875 * entity_scale},
          { 0.50000 * entity_scale, -0.93750 * entity_scale},
          { 0.53125 * entity_scale, -0.87500 * entity_scale},
          { 0.56250 * entity_scale, -0.84375 * entity_scale},
          { 0.59375 * entity_scale, -0.81250 * entity_scale},
          { 0.62500 * entity_scale, -0.75000 * entity_scale},
          { 0.62500 * entity_scale, -0.71875 * entity_scale},
          { 0.65625 * entity_scale, -0.65625 * entity_scale},
          { 0.65625 * entity_scale, -0.62500 * entity_scale},
          { 0.65625 * entity_scale, -0.56250 * entity_scale},
          { 0.65625 * entity_scale, -0.53125 * entity_scale},
          { 0.62500 * entity_scale, -0.46875 * entity_scale},
          { 0.59375 * entity_scale, -0.43750 * entity_scale},
          { 0.56250 * entity_scale, -0.40625 * entity_scale},
          { 0.53125 * entity_scale, -0.34375 * entity_scale},
          { 0.50000 * entity_scale, -0.31250 * entity_scale},
          { 0.46875 * entity_scale, -0.28125 * entity_scale},
          { 0.40625 * entity_scale, -0.25000 * entity_scale},
          { 0.34375 * entity_scale, -0.21875 * entity_scale},
          { 0.28125 * entity_scale, -0.18750 * entity_scale},
          { 0.21875 * entity_scale, -0.18750 * entity_scale},
          { 0.15625 * entity_scale, -0.15625 * entity_scale},
          { 0.09375 * entity_scale, -0.15625 * entity_scale},
          { 0.03125 * entity_scale, -0.15625 * entity_scale},
          { 0.00000 * entity_scale, -0.15625 * entity_scale},
          {-0.06250 * entity_scale, -0.15625 * entity_scale},
          {-0.12500 * entity_scale, -0.15625 * entity_scale},
          {-0.18750 * entity_scale, -0.15625 * entity_scale},
          {-0.25000 * entity_scale, -0.18750 * entity_scale},
          {-0.31250 * entity_scale, -0.21875 * entity_scale},
          {-0.37500 * entity_scale, -0.21875 * entity_scale},
          {-0.43750 * entity_scale, -0.25000 * entity_scale},
          {-0.46875 * entity_scale, -0.28125 * entity_scale},
          {-0.50000 * entity_scale, -0.34375 * entity_scale},
          {-0.56250 * entity_scale, -0.37500 * entity_scale},
          {-0.59375 * entity_scale, -0.40625 * entity_scale},
          {-0.62500 * entity_scale, -0.43750 * entity_scale},
          {-0.62500 * entity_scale, -0.50000 * entity_scale},
          {-0.65625 * entity_scale, -0.53125 * entity_scale},
          {-0.65625 * entity_scale, -0.59375 * entity_scale},
          {-0.65625 * entity_scale, -0.62500 * entity_scale},
          {-0.65625 * entity_scale, -0.68750 * entity_scale},
          {-0.62500 * entity_scale, -0.71875 * entity_scale},
          {-0.62500 * entity_scale, -0.78125 * entity_scale},
          {-0.59375 * entity_scale, -0.81250 * entity_scale},
          {-0.56250 * entity_scale, -0.87500 * entity_scale},
          {-0.53125 * entity_scale, -0.90625 * entity_scale},
          {-0.46875 * entity_scale, -0.93750 * entity_scale},
          {-0.43750 * entity_scale, -0.96875 * entity_scale}
        },
        [4] = {
          {-0.65625 * entity_scale, -0.56250 * entity_scale},
          {-0.62500 * entity_scale, -0.62500 * entity_scale},
          {-0.59375 * entity_scale, -0.65625 * entity_scale},
          {-0.56250 * entity_scale, -0.71875 * entity_scale},
          {-0.53125 * entity_scale, -0.75000 * entity_scale},
          {-0.50000 * entity_scale, -0.78125 * entity_scale},
          {-0.43750 * entity_scale, -0.81250 * entity_scale},
          {-0.37500 * entity_scale, -0.84375 * entity_scale},
          {-0.31250 * entity_scale, -0.87500 * entity_scale},
          {-0.25000 * entity_scale, -0.90625 * entity_scale},
          {-0.18750 * entity_scale, -0.90625 * entity_scale},
          {-0.12500 * entity_scale, -0.93750 * entity_scale},
          {-0.06250 * entity_scale, -0.93750 * entity_scale},
          { 0.00000 * entity_scale, -0.93750 * entity_scale},
          { 0.03125 * entity_scale, -0.93750 * entity_scale},
          { 0.09375 * entity_scale, -0.93750 * entity_scale},
          { 0.18750 * entity_scale, -0.90625 * entity_scale},
          { 0.25000 * entity_scale, -0.90625 * entity_scale},
          { 0.31250 * entity_scale, -0.87500 * entity_scale},
          { 0.34375 * entity_scale, -0.84375 * entity_scale},
          { 0.40625 * entity_scale, -0.81250 * entity_scale},
          { 0.46875 * entity_scale, -0.78125 * entity_scale},
          { 0.50000 * entity_scale, -0.75000 * entity_scale},
          { 0.56250 * entity_scale, -0.71875 * entity_scale},
          { 0.59375 * entity_scale, -0.68750 * entity_scale},
          { 0.62500 * entity_scale, -0.62500 * entity_scale},
          { 0.62500 * entity_scale, -0.59375 * entity_scale},
          { 0.65625 * entity_scale, -0.53125 * entity_scale},
          { 0.65625 * entity_scale, -0.50000 * entity_scale},
          { 0.65625 * entity_scale, -0.43750 * entity_scale},
          { 0.65625 * entity_scale, -0.40625 * entity_scale},
          { 0.65625 * entity_scale, -0.34375 * entity_scale},
          { 0.62500 * entity_scale, -0.31250 * entity_scale},
          { 0.62500 * entity_scale, -0.25000 * entity_scale},
          { 0.59375 * entity_scale, -0.21875 * entity_scale},
          { 0.56250 * entity_scale, -0.18750 * entity_scale},
          { 0.50000 * entity_scale, -0.12500 * entity_scale},
          { 0.46875 * entity_scale, -0.09375 * entity_scale},
          { 0.40625 * entity_scale, -0.06250 * entity_scale},
          { 0.34375 * entity_scale, -0.03125 * entity_scale},
          { 0.28125 * entity_scale, -0.03125 * entity_scale},
          { 0.21875 * entity_scale,  0.00000 * entity_scale},
          { 0.15625 * entity_scale,  0.00000 * entity_scale},
          { 0.09375 * entity_scale,  0.00000 * entity_scale},
          { 0.03125 * entity_scale,  0.00000 * entity_scale},
          { 0.00000 * entity_scale,  0.00000 * entity_scale},
          {-0.06250 * entity_scale,  0.00000 * entity_scale},
          {-0.12500 * entity_scale,  0.00000 * entity_scale},
          {-0.21875 * entity_scale,  0.00000 * entity_scale},
          {-0.28125 * entity_scale,  0.00000 * entity_scale},
          {-0.34375 * entity_scale, -0.03125 * entity_scale},
          {-0.37500 * entity_scale, -0.06250 * entity_scale},
          {-0.43750 * entity_scale, -0.09375 * entity_scale},
          {-0.50000 * entity_scale, -0.12500 * entity_scale},
          {-0.53125 * entity_scale, -0.15625 * entity_scale},
          {-0.56250 * entity_scale, -0.18750 * entity_scale},
          {-0.59375 * entity_scale, -0.25000 * entity_scale},
          {-0.62500 * entity_scale, -0.28125 * entity_scale},
          {-0.65625 * entity_scale, -0.34375 * entity_scale},
          {-0.65625 * entity_scale, -0.37500 * entity_scale},
          {-0.65625 * entity_scale, -0.43750 * entity_scale},
          {-0.65625 * entity_scale, -0.46875 * entity_scale},
          {-0.65625 * entity_scale, -0.53125 * entity_scale},
          {-0.65625 * entity_scale, -0.56250 * entity_scale}
        },
        [5] = {
          { 0.50000 * entity_scale, -0.84375 * entity_scale},
          { 0.50000 * entity_scale, -0.78125 * entity_scale},
          { 0.53125 * entity_scale, -0.75000 * entity_scale},
          { 0.53125 * entity_scale, -0.71875 * entity_scale},
          { 0.53125 * entity_scale, -0.68750 * entity_scale},
          { 0.53125 * entity_scale, -0.62500 * entity_scale},
          { 0.53125 * entity_scale, -0.59375 * entity_scale},
          { 0.53125 * entity_scale, -0.56250 * entity_scale},
          { 0.50000 * entity_scale, -0.53125 * entity_scale},
          { 0.46875 * entity_scale, -0.50000 * entity_scale},
          { 0.43750 * entity_scale, -0.46875 * entity_scale},
          { 0.40625 * entity_scale, -0.43750 * entity_scale},
          { 0.37500 * entity_scale, -0.40625 * entity_scale},
          { 0.34375 * entity_scale, -0.37500 * entity_scale},
          { 0.31250 * entity_scale, -0.34375 * entity_scale},
          { 0.25000 * entity_scale, -0.31250 * entity_scale},
          { 0.18750 * entity_scale, -0.31250 * entity_scale},
          { 0.15625 * entity_scale, -0.28125 * entity_scale},
          { 0.09375 * entity_scale, -0.28125 * entity_scale},
          { 0.03125 * entity_scale, -0.28125 * entity_scale},
          { 0.00000 * entity_scale, -0.28125 * entity_scale},
          {-0.03125 * entity_scale, -0.28125 * entity_scale},
          {-0.09375 * entity_scale, -0.28125 * entity_scale},
          {-0.15625 * entity_scale, -0.28125 * entity_scale},
          {-0.18750 * entity_scale, -0.31250 * entity_scale},
          {-0.25000 * entity_scale, -0.31250 * entity_scale},
          {-0.28125 * entity_scale, -0.34375 * entity_scale},
          {-0.34375 * entity_scale, -0.37500 * entity_scale},
          {-0.37500 * entity_scale, -0.40625 * entity_scale},
          {-0.40625 * entity_scale, -0.43750 * entity_scale},
          {-0.43750 * entity_scale, -0.46875 * entity_scale},
          {-0.46875 * entity_scale, -0.50000 * entity_scale},
          {-0.50000 * entity_scale, -0.53125 * entity_scale},
          {-0.53125 * entity_scale, -0.56250 * entity_scale},
          {-0.53125 * entity_scale, -0.59375 * entity_scale},
          {-0.53125 * entity_scale, -0.62500 * entity_scale},
          {-0.53125 * entity_scale, -0.68750 * entity_scale},
          {-0.53125 * entity_scale, -0.71875 * entity_scale},
          {-0.53125 * entity_scale, -0.75000 * entity_scale},
          {-0.50000 * entity_scale, -0.78125 * entity_scale},
          {-0.50000 * entity_scale, -0.81250 * entity_scale},
          {-0.46875 * entity_scale, -0.87500 * entity_scale},
          {-0.43750 * entity_scale, -0.90625 * entity_scale},
          {-0.40625 * entity_scale, -0.93750 * entity_scale},
          {-0.37500 * entity_scale, -0.96875 * entity_scale},
          {-0.31250 * entity_scale, -0.96875 * entity_scale},
          {-0.28125 * entity_scale, -1.00000 * entity_scale},
          {-0.21875 * entity_scale, -1.03125 * entity_scale},
          {-0.18750 * entity_scale, -1.03125 * entity_scale},
          {-0.12500 * entity_scale, -1.06250 * entity_scale},
          {-0.06250 * entity_scale, -1.06250 * entity_scale},
          { 0.00000 * entity_scale, -1.06250 * entity_scale},
          { 0.00000 * entity_scale, -1.06250 * entity_scale},
          { 0.06250 * entity_scale, -1.06250 * entity_scale},
          { 0.12500 * entity_scale, -1.06250 * entity_scale},
          { 0.18750 * entity_scale, -1.03125 * entity_scale},
          { 0.21875 * entity_scale, -1.03125 * entity_scale},
          { 0.28125 * entity_scale, -1.00000 * entity_scale},
          { 0.31250 * entity_scale, -0.96875 * entity_scale},
          { 0.37500 * entity_scale, -0.96875 * entity_scale},
          { 0.40625 * entity_scale, -0.93750 * entity_scale},
          { 0.43750 * entity_scale, -0.90625 * entity_scale},
          { 0.46875 * entity_scale, -0.87500 * entity_scale},
          { 0.50000 * entity_scale, -0.84375 * entity_scale}
        },
        [6] = {
          { 0.65625 * entity_scale, -0.59375 * entity_scale},
          { 0.68750 * entity_scale, -0.53125 * entity_scale},
          { 0.68750 * entity_scale, -0.50000 * entity_scale},
          { 0.68750 * entity_scale, -0.43750 * entity_scale},
          { 0.68750 * entity_scale, -0.37500 * entity_scale},
          { 0.68750 * entity_scale, -0.34375 * entity_scale},
          { 0.68750 * entity_scale, -0.28125 * entity_scale},
          { 0.65625 * entity_scale, -0.25000 * entity_scale},
          { 0.62500 * entity_scale, -0.18750 * entity_scale},
          { 0.59375 * entity_scale, -0.15625 * entity_scale},
          { 0.53125 * entity_scale, -0.12500 * entity_scale},
          { 0.50000 * entity_scale, -0.06250 * entity_scale},
          { 0.43750 * entity_scale, -0.03125 * entity_scale},
          { 0.40625 * entity_scale,  0.00000 * entity_scale},
          { 0.34375 * entity_scale,  0.00000 * entity_scale},
          { 0.28125 * entity_scale,  0.00000 * entity_scale},
          { 0.18750 * entity_scale,  0.03125 * entity_scale},
          { 0.12500 * entity_scale,  0.03125 * entity_scale},
          { 0.06250 * entity_scale,  0.06250 * entity_scale},
          { 0.00000 * entity_scale,  0.06250 * entity_scale},
          {-0.06250 * entity_scale,  0.06250 * entity_scale},
          {-0.12500 * entity_scale,  0.03125 * entity_scale},
          {-0.18750 * entity_scale,  0.03125 * entity_scale},
          {-0.25000 * entity_scale,  0.00000 * entity_scale},
          {-0.31250 * entity_scale,  0.00000 * entity_scale},
          {-0.37500 * entity_scale,  0.00000 * entity_scale},
          {-0.43750 * entity_scale, -0.03125 * entity_scale},
          {-0.50000 * entity_scale, -0.06250 * entity_scale},
          {-0.53125 * entity_scale, -0.09375 * entity_scale},
          {-0.59375 * entity_scale, -0.15625 * entity_scale},
          {-0.62500 * entity_scale, -0.18750 * entity_scale},
          {-0.65625 * entity_scale, -0.25000 * entity_scale},
          {-0.68750 * entity_scale, -0.28125 * entity_scale},
          {-0.68750 * entity_scale, -0.34375 * entity_scale},
          {-0.68750 * entity_scale, -0.37500 * entity_scale},
          {-0.68750 * entity_scale, -0.43750 * entity_scale},
          {-0.68750 * entity_scale, -0.50000 * entity_scale},
          {-0.68750 * entity_scale, -0.53125 * entity_scale},
          {-0.65625 * entity_scale, -0.59375 * entity_scale},
          {-0.62500 * entity_scale, -0.62500 * entity_scale},
          {-0.59375 * entity_scale, -0.68750 * entity_scale},
          {-0.56250 * entity_scale, -0.71875 * entity_scale},
          {-0.53125 * entity_scale, -0.75000 * entity_scale},
          {-0.46875 * entity_scale, -0.78125 * entity_scale},
          {-0.40625 * entity_scale, -0.81250 * entity_scale},
          {-0.37500 * entity_scale, -0.84375 * entity_scale},
          {-0.31250 * entity_scale, -0.87500 * entity_scale},
          {-0.21875 * entity_scale, -0.90625 * entity_scale},
          {-0.15625 * entity_scale, -0.90625 * entity_scale},
          {-0.09375 * entity_scale, -0.93750 * entity_scale},
          {-0.03125 * entity_scale, -0.93750 * entity_scale},
          { 0.03125 * entity_scale, -0.93750 * entity_scale},
          { 0.09375 * entity_scale, -0.93750 * entity_scale},
          { 0.15625 * entity_scale, -0.90625 * entity_scale},
          { 0.21875 * entity_scale, -0.90625 * entity_scale},
          { 0.28125 * entity_scale, -0.87500 * entity_scale},
          { 0.34375 * entity_scale, -0.84375 * entity_scale},
          { 0.40625 * entity_scale, -0.84375 * entity_scale},
          { 0.46875 * entity_scale, -0.81250 * entity_scale},
          { 0.53125 * entity_scale, -0.75000 * entity_scale},
          { 0.56250 * entity_scale, -0.71875 * entity_scale},
          { 0.59375 * entity_scale, -0.68750 * entity_scale},
          { 0.62500 * entity_scale, -0.62500 * entity_scale},
          { 0.65625 * entity_scale, -0.59375 * entity_scale}
        },
        [7] = {
          { 0.43750 * entity_scale, -0.68750 * entity_scale},
          { 0.50000 * entity_scale, -0.65625 * entity_scale},
          { 0.53125 * entity_scale, -0.59375 * entity_scale},
          { 0.59375 * entity_scale, -0.56250 * entity_scale},
          { 0.62500 * entity_scale, -0.53125 * entity_scale},
          { 0.62500 * entity_scale, -0.46875 * entity_scale},
          { 0.65625 * entity_scale, -0.43750 * entity_scale},
          { 0.68750 * entity_scale, -0.37500 * entity_scale},
          { 0.68750 * entity_scale, -0.34375 * entity_scale},
          { 0.68750 * entity_scale, -0.28125 * entity_scale},
          { 0.68750 * entity_scale, -0.25000 * entity_scale},
          { 0.65625 * entity_scale, -0.18750 * entity_scale},
          { 0.62500 * entity_scale, -0.15625 * entity_scale},
          { 0.62500 * entity_scale, -0.09375 * entity_scale},
          { 0.56250 * entity_scale, -0.06250 * entity_scale},
          { 0.53125 * entity_scale,  0.00000 * entity_scale},
          { 0.50000 * entity_scale,  0.00000 * entity_scale},
          { 0.43750 * entity_scale,  0.03125 * entity_scale},
          { 0.37500 * entity_scale,  0.06250 * entity_scale},
          { 0.34375 * entity_scale,  0.09375 * entity_scale},
          { 0.28125 * entity_scale,  0.09375 * entity_scale},
          { 0.18750 * entity_scale,  0.12500 * entity_scale},
          { 0.12500 * entity_scale,  0.12500 * entity_scale},
          { 0.06250 * entity_scale,  0.15625 * entity_scale},
          { 0.00000 * entity_scale,  0.15625 * entity_scale},
          {-0.03125 * entity_scale,  0.15625 * entity_scale},
          {-0.12500 * entity_scale,  0.12500 * entity_scale},
          {-0.18750 * entity_scale,  0.12500 * entity_scale},
          {-0.25000 * entity_scale,  0.12500 * entity_scale},
          {-0.31250 * entity_scale,  0.09375 * entity_scale},
          {-0.37500 * entity_scale,  0.06250 * entity_scale},
          {-0.43750 * entity_scale,  0.03125 * entity_scale},
          {-0.46875 * entity_scale,  0.00000 * entity_scale},
          {-0.53125 * entity_scale,  0.00000 * entity_scale},
          {-0.56250 * entity_scale, -0.03125 * entity_scale},
          {-0.59375 * entity_scale, -0.09375 * entity_scale},
          {-0.62500 * entity_scale, -0.12500 * entity_scale},
          {-0.65625 * entity_scale, -0.15625 * entity_scale},
          {-0.65625 * entity_scale, -0.21875 * entity_scale},
          {-0.68750 * entity_scale, -0.28125 * entity_scale},
          {-0.68750 * entity_scale, -0.31250 * entity_scale},
          {-0.68750 * entity_scale, -0.37500 * entity_scale},
          {-0.65625 * entity_scale, -0.40625 * entity_scale},
          {-0.65625 * entity_scale, -0.46875 * entity_scale},
          {-0.62500 * entity_scale, -0.50000 * entity_scale},
          {-0.59375 * entity_scale, -0.56250 * entity_scale},
          {-0.56250 * entity_scale, -0.59375 * entity_scale},
          {-0.50000 * entity_scale, -0.62500 * entity_scale},
          {-0.46875 * entity_scale, -0.65625 * entity_scale},
          {-0.40625 * entity_scale, -0.68750 * entity_scale},
          {-0.34375 * entity_scale, -0.71875 * entity_scale},
          {-0.31250 * entity_scale, -0.75000 * entity_scale},
          {-0.25000 * entity_scale, -0.78125 * entity_scale},
          {-0.15625 * entity_scale, -0.78125 * entity_scale},
          {-0.09375 * entity_scale, -0.81250 * entity_scale},
          {-0.03125 * entity_scale, -0.81250 * entity_scale},
          { 0.00000 * entity_scale, -0.81250 * entity_scale},
          { 0.06250 * entity_scale, -0.81250 * entity_scale},
          { 0.15625 * entity_scale, -0.78125 * entity_scale},
          { 0.21875 * entity_scale, -0.78125 * entity_scale},
          { 0.28125 * entity_scale, -0.75000 * entity_scale},
          { 0.34375 * entity_scale, -0.75000 * entity_scale},
          { 0.40625 * entity_scale, -0.71875 * entity_scale},
          { 0.43750 * entity_scale, -0.68750 * entity_scale}
        },
        [8] = {
          {-0.43750 * entity_scale, -0.68750 * entity_scale},
          {-0.37500 * entity_scale, -0.71875 * entity_scale},
          {-0.31250 * entity_scale, -0.75000 * entity_scale},
          {-0.25000 * entity_scale, -0.75000 * entity_scale},
          {-0.18750 * entity_scale, -0.78125 * entity_scale},
          {-0.12500 * entity_scale, -0.78125 * entity_scale},
          {-0.03125 * entity_scale, -0.81250 * entity_scale},
          { 0.00000 * entity_scale, -0.81250 * entity_scale},
          { 0.06250 * entity_scale, -0.81250 * entity_scale},
          { 0.12500 * entity_scale, -0.78125 * entity_scale},
          { 0.21875 * entity_scale, -0.78125 * entity_scale},
          { 0.28125 * entity_scale, -0.75000 * entity_scale},
          { 0.34375 * entity_scale, -0.75000 * entity_scale},
          { 0.40625 * entity_scale, -0.71875 * entity_scale},
          { 0.46875 * entity_scale, -0.68750 * entity_scale},
          { 0.50000 * entity_scale, -0.65625 * entity_scale},
          { 0.56250 * entity_scale, -0.59375 * entity_scale},
          { 0.59375 * entity_scale, -0.56250 * entity_scale},
          { 0.62500 * entity_scale, -0.53125 * entity_scale},
          { 0.65625 * entity_scale, -0.46875 * entity_scale},
          { 0.68750 * entity_scale, -0.43750 * entity_scale},
          { 0.68750 * entity_scale, -0.37500 * entity_scale},
          { 0.68750 * entity_scale, -0.31250 * entity_scale},
          { 0.68750 * entity_scale, -0.28125 * entity_scale},
          { 0.68750 * entity_scale, -0.21875 * entity_scale},
          { 0.68750 * entity_scale, -0.18750 * entity_scale},
          { 0.65625 * entity_scale, -0.12500 * entity_scale},
          { 0.62500 * entity_scale, -0.09375 * entity_scale},
          { 0.59375 * entity_scale, -0.03125 * entity_scale},
          { 0.56250 * entity_scale,  0.00000 * entity_scale},
          { 0.50000 * entity_scale,  0.00000 * entity_scale},
          { 0.46875 * entity_scale,  0.06250 * entity_scale},
          { 0.40625 * entity_scale,  0.09375 * entity_scale},
          { 0.34375 * entity_scale,  0.12500 * entity_scale},
          { 0.28125 * entity_scale,  0.12500 * entity_scale},
          { 0.21875 * entity_scale,  0.15625 * entity_scale},
          { 0.15625 * entity_scale,  0.15625 * entity_scale},
          { 0.09375 * entity_scale,  0.18750 * entity_scale},
          { 0.00000 * entity_scale,  0.18750 * entity_scale},
          {-0.03125 * entity_scale,  0.18750 * entity_scale},
          {-0.09375 * entity_scale,  0.18750 * entity_scale},
          {-0.15625 * entity_scale,  0.15625 * entity_scale},
          {-0.25000 * entity_scale,  0.15625 * entity_scale},
          {-0.31250 * entity_scale,  0.12500 * entity_scale},
          {-0.37500 * entity_scale,  0.09375 * entity_scale},
          {-0.43750 * entity_scale,  0.06250 * entity_scale},
          {-0.46875 * entity_scale,  0.03125 * entity_scale},
          {-0.53125 * entity_scale,  0.00000 * entity_scale},
          {-0.56250 * entity_scale,  0.00000 * entity_scale},
          {-0.62500 * entity_scale, -0.06250 * entity_scale},
          {-0.65625 * entity_scale, -0.09375 * entity_scale},
          {-0.65625 * entity_scale, -0.15625 * entity_scale},
          {-0.68750 * entity_scale, -0.18750 * entity_scale},
          {-0.68750 * entity_scale, -0.25000 * entity_scale},
          {-0.68750 * entity_scale, -0.28125 * entity_scale},
          {-0.68750 * entity_scale, -0.34375 * entity_scale},
          {-0.68750 * entity_scale, -0.40625 * entity_scale},
          {-0.65625 * entity_scale, -0.43750 * entity_scale},
          {-0.65625 * entity_scale, -0.50000 * entity_scale},
          {-0.62500 * entity_scale, -0.53125 * entity_scale},
          {-0.59375 * entity_scale, -0.56250 * entity_scale},
          {-0.53125 * entity_scale, -0.62500 * entity_scale},
          {-0.50000 * entity_scale, -0.65625 * entity_scale},
          {-0.43750 * entity_scale, -0.68750 * entity_scale}
        },
        [9] = {
          { 0.28125 * entity_scale, -0.71875 * entity_scale},
          { 0.34375 * entity_scale, -0.68750 * entity_scale},
          { 0.40625 * entity_scale, -0.68750 * entity_scale},
          { 0.46875 * entity_scale, -0.65625 * entity_scale},
          { 0.50000 * entity_scale, -0.59375 * entity_scale},
          { 0.53125 * entity_scale, -0.56250 * entity_scale},
          { 0.56250 * entity_scale, -0.53125 * entity_scale},
          { 0.59375 * entity_scale, -0.50000 * entity_scale},
          { 0.62500 * entity_scale, -0.43750 * entity_scale},
          { 0.65625 * entity_scale, -0.40625 * entity_scale},
          { 0.65625 * entity_scale, -0.34375 * entity_scale},
          { 0.65625 * entity_scale, -0.31250 * entity_scale},
          { 0.65625 * entity_scale, -0.25000 * entity_scale},
          { 0.65625 * entity_scale, -0.21875 * entity_scale},
          { 0.62500 * entity_scale, -0.15625 * entity_scale},
          { 0.62500 * entity_scale, -0.12500 * entity_scale},
          { 0.59375 * entity_scale, -0.06250 * entity_scale},
          { 0.56250 * entity_scale, -0.03125 * entity_scale},
          { 0.50000 * entity_scale,  0.00000 * entity_scale},
          { 0.46875 * entity_scale,  0.00000 * entity_scale},
          { 0.40625 * entity_scale,  0.03125 * entity_scale},
          { 0.34375 * entity_scale,  0.06250 * entity_scale},
          { 0.31250 * entity_scale,  0.09375 * entity_scale},
          { 0.25000 * entity_scale,  0.12500 * entity_scale},
          { 0.18750 * entity_scale,  0.12500 * entity_scale},
          { 0.09375 * entity_scale,  0.15625 * entity_scale},
          { 0.03125 * entity_scale,  0.15625 * entity_scale},
          { 0.00000 * entity_scale,  0.15625 * entity_scale},
          {-0.06250 * entity_scale,  0.15625 * entity_scale},
          {-0.12500 * entity_scale,  0.12500 * entity_scale},
          {-0.18750 * entity_scale,  0.12500 * entity_scale},
          {-0.25000 * entity_scale,  0.12500 * entity_scale},
          {-0.31250 * entity_scale,  0.09375 * entity_scale},
          {-0.37500 * entity_scale,  0.06250 * entity_scale},
          {-0.43750 * entity_scale,  0.03125 * entity_scale},
          {-0.46875 * entity_scale,  0.00000 * entity_scale},
          {-0.53125 * entity_scale,  0.00000 * entity_scale},
          {-0.56250 * entity_scale, -0.03125 * entity_scale},
          {-0.59375 * entity_scale, -0.09375 * entity_scale},
          {-0.62500 * entity_scale, -0.12500 * entity_scale},
          {-0.62500 * entity_scale, -0.18750 * entity_scale},
          {-0.65625 * entity_scale, -0.21875 * entity_scale},
          {-0.65625 * entity_scale, -0.28125 * entity_scale},
          {-0.65625 * entity_scale, -0.31250 * entity_scale},
          {-0.65625 * entity_scale, -0.37500 * entity_scale},
          {-0.65625 * entity_scale, -0.40625 * entity_scale},
          {-0.62500 * entity_scale, -0.46875 * entity_scale},
          {-0.59375 * entity_scale, -0.50000 * entity_scale},
          {-0.56250 * entity_scale, -0.53125 * entity_scale},
          {-0.53125 * entity_scale, -0.59375 * entity_scale},
          {-0.50000 * entity_scale, -0.62500 * entity_scale},
          {-0.43750 * entity_scale, -0.65625 * entity_scale},
          {-0.37500 * entity_scale, -0.68750 * entity_scale},
          {-0.31250 * entity_scale, -0.71875 * entity_scale},
          {-0.28125 * entity_scale, -0.71875 * entity_scale},
          {-0.21875 * entity_scale, -0.75000 * entity_scale},
          {-0.12500 * entity_scale, -0.75000 * entity_scale},
          {-0.06250 * entity_scale, -0.78125 * entity_scale},
          { 0.00000 * entity_scale, -0.78125 * entity_scale},
          { 0.03125 * entity_scale, -0.78125 * entity_scale},
          { 0.09375 * entity_scale, -0.78125 * entity_scale},
          { 0.15625 * entity_scale, -0.75000 * entity_scale},
          { 0.21875 * entity_scale, -0.75000 * entity_scale},
          { 0.28125 * entity_scale, -0.71875 * entity_scale}
        },
        [10] = {
          {-0.31250 * entity_scale, -0.71875 * entity_scale},
          {-0.28125 * entity_scale, -0.75000 * entity_scale},
          {-0.28125 * entity_scale, -0.78125 * entity_scale},
          {-0.28125 * entity_scale, -0.78125 * entity_scale},
          {-0.25000 * entity_scale, -0.81250 * entity_scale},
          {-0.25000 * entity_scale, -0.81250 * entity_scale},
          {-0.21875 * entity_scale, -0.84375 * entity_scale},
          {-0.18750 * entity_scale, -0.84375 * entity_scale},
          {-0.15625 * entity_scale, -0.87500 * entity_scale},
          {-0.12500 * entity_scale, -0.87500 * entity_scale},
          {-0.09375 * entity_scale, -0.90625 * entity_scale},
          {-0.06250 * entity_scale, -0.90625 * entity_scale},
          {-0.03125 * entity_scale, -0.90625 * entity_scale},
          { 0.00000 * entity_scale, -0.90625 * entity_scale},
          { 0.00000 * entity_scale, -0.90625 * entity_scale},
          { 0.03125 * entity_scale, -0.90625 * entity_scale},
          { 0.06250 * entity_scale, -0.90625 * entity_scale},
          { 0.09375 * entity_scale, -0.90625 * entity_scale},
          { 0.12500 * entity_scale, -0.87500 * entity_scale},
          { 0.15625 * entity_scale, -0.87500 * entity_scale},
          { 0.15625 * entity_scale, -0.87500 * entity_scale},
          { 0.18750 * entity_scale, -0.84375 * entity_scale},
          { 0.21875 * entity_scale, -0.84375 * entity_scale},
          { 0.25000 * entity_scale, -0.81250 * entity_scale},
          { 0.25000 * entity_scale, -0.81250 * entity_scale},
          { 0.28125 * entity_scale, -0.78125 * entity_scale},
          { 0.28125 * entity_scale, -0.75000 * entity_scale},
          { 0.28125 * entity_scale, -0.75000 * entity_scale},
          { 0.31250 * entity_scale, -0.71875 * entity_scale},
          { 0.31250 * entity_scale, -0.68750 * entity_scale},
          { 0.31250 * entity_scale, -0.68750 * entity_scale},
          { 0.31250 * entity_scale, -0.65625 * entity_scale},
          { 0.31250 * entity_scale, -0.62500 * entity_scale},
          { 0.28125 * entity_scale, -0.59375 * entity_scale},
          { 0.28125 * entity_scale, -0.59375 * entity_scale},
          { 0.25000 * entity_scale, -0.56250 * entity_scale},
          { 0.25000 * entity_scale, -0.53125 * entity_scale},
          { 0.21875 * entity_scale, -0.53125 * entity_scale},
          { 0.18750 * entity_scale, -0.50000 * entity_scale},
          { 0.18750 * entity_scale, -0.50000 * entity_scale},
          { 0.15625 * entity_scale, -0.50000 * entity_scale},
          { 0.12500 * entity_scale, -0.46875 * entity_scale},
          { 0.09375 * entity_scale, -0.46875 * entity_scale},
          { 0.06250 * entity_scale, -0.46875 * entity_scale},
          { 0.03125 * entity_scale, -0.46875 * entity_scale},
          { 0.00000 * entity_scale, -0.43750 * entity_scale},
          { 0.00000 * entity_scale, -0.43750 * entity_scale},
          {-0.03125 * entity_scale, -0.46875 * entity_scale},
          {-0.06250 * entity_scale, -0.46875 * entity_scale},
          {-0.09375 * entity_scale, -0.46875 * entity_scale},
          {-0.12500 * entity_scale, -0.46875 * entity_scale},
          {-0.15625 * entity_scale, -0.50000 * entity_scale},
          {-0.18750 * entity_scale, -0.50000 * entity_scale},
          {-0.21875 * entity_scale, -0.50000 * entity_scale},
          {-0.21875 * entity_scale, -0.53125 * entity_scale},
          {-0.25000 * entity_scale, -0.56250 * entity_scale},
          {-0.28125 * entity_scale, -0.56250 * entity_scale},
          {-0.28125 * entity_scale, -0.59375 * entity_scale},
          {-0.28125 * entity_scale, -0.62500 * entity_scale},
          {-0.31250 * entity_scale, -0.62500 * entity_scale},
          {-0.31250 * entity_scale, -0.65625 * entity_scale},
          {-0.31250 * entity_scale, -0.68750 * entity_scale},
          {-0.31250 * entity_scale, -0.68750 * entity_scale},
          {-0.31250 * entity_scale, -0.71875 * entity_scale}
        }
      }
    }
  }
end

local create_spider_vehicle_leg = function(entity_name, entity_scale, entity_identifier)
  return {
    type = "spider-leg",
    name = string.format("%s-leg-%s", entity_name, entity_identifier),
    localised_name = {"entity-name.spidertron-leg"},

    icon = "__base__/graphics/icons/spidertron.png",
    icon_size = 64, icon_mipmaps = 4,

    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    collision_box = {{-0.01, -0.01}, {0.01, 0.01}},

    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/spidertron/spidertron-leg-1.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/spidertron/spidertron-leg-2.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/spidertron/spidertron-leg-3.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/spidertron/spidertron-leg-4.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/spidertron/spidertron-leg-5.ogg",
          volume = 0.2
        }
      },
      audible_distance_modifier = 0.5,
      match_progress_to_activity = true
    },
    walking_sound_volume_modifier = 0.6,

    initial_movement_speed = 0.06 * entity_scale,
    movement_acceleration = 0.03 / entity_scale,
    movement_based_position_selection_distance = 4 * entity_scale,
    part_length = 3.5 * entity_scale,

    max_health = 100,

    graphics_set =
    {
      --------------------------------------------------------------------------
      -- knee joint ------------------------------------------------------------
      --------------------------------------------------------------------------
      joint =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-knee.png",
            width = 12,
            height = 14,
            x = 0,
            y = 0,
            shift = {0.03125 * entity_scale, 0 * entity_scale},
            scale = 1 * entity_scale,
            hr_version =
            {
              filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-knee.png",
              width = 22,
              height = 28,
              x = 0,
              y = 0,
              shift = {0.015625 * entity_scale, 0 * entity_scale},
              scale = 0.5 * entity_scale,
            }
          },
          {
            filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-knee.png",
            width = 12,
            height = 14,
            x = 0,
            y = 28,
            shift = {0.03125 * entity_scale, 0 * entity_scale},
            scale = 1 * entity_scale,
            apply_runtime_tint = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-knee.png",
              width = 22,
              height = 28,
              x = 0,
              y = 56,
              shift = {0.015625 * entity_scale, 0 * entity_scale},
              scale = 0.5 * entity_scale,
              apply_runtime_tint = true
            }
          }
        }
      },
      joint_shadow =
      {
        filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-knee.png",
        width = 12,
        height = 14,
        x = 0,
        y = 14,
        shift = {0.03125 * entity_scale, 0 * entity_scale},
        scale = 1 * entity_scale,
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-knee.png",
          width = 22,
          height = 28,
          x = 0,
          y = 28,
          shift = {0.015625 * entity_scale, 0 * entity_scale},
          scale = 0.5 * entity_scale,
          draw_as_shadow = true
        }
      },
      joint_turn_offset = 0.25 * entity_scale,

      --------------------------------------------------------------------------
      -- lower leg section -----------------------------------------------------
      --------------------------------------------------------------------------
      lower_part =
      {
        bottom_end =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-end-B.png",
              width = 18,
              height = 46,
              x = 0,
              y = 0,
              shift = {0 * entity_scale, -0.65625 * entity_scale},
              scale = 1 * entity_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-lower-end-B.png",
                width = 34,
                height = 92,
                x = 0,
                y = 0,
                shift = {0 * entity_scale, -0.65625 * entity_scale},
                scale = 0.5 * entity_scale
              }
            },
            {
              filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-end-B.png",
              width = 18,
              height = 46,
              x = 0,
              y = 92,
              shift = {0 * entity_scale, -0.65625 * entity_scale},
              scale = 1 * entity_scale,
              apply_runtime_tint = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-lower-end-B.png",
                width = 34,
                height = 92,
                x = 0,
                y = 184,
                shift = {0 * entity_scale, -0.65625 * entity_scale},
                scale = 0.5 * entity_scale,
                apply_runtime_tint = true
              }
            }
          }
        },
        bottom_end_length = 1 * entity_scale,

        middle =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-stretchable.png",
              width = 26,
              height = 192,
              x = 0,
              y = 0,
              shift = {0.03125 * entity_scale, 0 * entity_scale},
              scale = 0.5 * entity_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-lower-stretchable.png",
                width = 50,
                height = 384,
                x = 0,
                y = 0,
                shift = {0.015625 * entity_scale, 0 * entity_scale},
                scale = 0.25 * entity_scale
              }
            }
          }
        },
        middle_offset_from_bottom = 0.65 * entity_scale,
        middle_offset_from_top = 0.45 * entity_scale,

        top_end =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-end-A.png",
              height = 50,
              width = 20,
              x = 0,
              y = 0,
              shift = {0 * entity_scale, 0.625 * entity_scale},
              scale = 1 * entity_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-lower-end-A.png",
                width = 40,
                height = 98,
                x = 0,
                y = 0,
                shift = {0.015625 * entity_scale, 0.609375 * entity_scale},
                scale = 0.5 * entity_scale
              }
            },
            {
              filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-end-A.png",
              width = 20,
              height = 50,
              x = 0,
              y = 100,
              shift = {0 * entity_scale, 0.625 * entity_scale},
              scale = 1 * entity_scale,
              apply_runtime_tint = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-lower-end-A.png",
                width = 40,
                height = 98,
                x = 0,
                y = 196,
                shift = {0.015625 * entity_scale, 0.609375 * entity_scale},
                scale = 0.5 * entity_scale,
                apply_runtime_tint = true
              }
            }
          }
        },
        top_end_length = 1 * entity_scale
      },

      --------------------------------------------------------------------------
      -- lower leg shadow section ----------------------------------------------
      --------------------------------------------------------------------------
      lower_part_shadow =
      {
        bottom_end =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-end-B.png",
          width = 18,
          height = 46,
          x = 0,
          y = 46,
          shift = {0 * entity_scale, -0.65625 * entity_scale},
          scale = 1 * entity_scale,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-lower-end-B.png",
            width = 34,
            height = 92,
            x = 0,
            y = 92,
            shift = {0 * entity_scale, -0.65625 * entity_scale},
            scale = 0.5 * entity_scale,
            draw_as_shadow = true
          }
        },
        bottom_end_length = 1 * entity_scale,

        middle =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-stretchable.png",
          width = 26,
          height = 192,
          x = 0,
          y = 192,
          shift = {0.03125 * entity_scale, 0 * entity_scale},
          scale = 0.5 * entity_scale,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-lower-stretchable.png",
            width = 50,
            height = 384,
            x = 0,
            y = 384,
            shift = {0.015625 * entity_scale, 0 * entity_scale},
            scale = 0.25 * entity_scale,
            draw_as_shadow = true
          }
        },
        middle_offset_from_bottom = 0.65 * entity_scale,
        middle_offset_from_top = 0.45 * entity_scale,

        top_end =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-end-A.png",
          draw_as_shadow = true,
          width = 20,
          height = 50,
          x = 0,
          y = 50,
          shift = {0 * entity_scale, 0.625 * entity_scale},
          scale = 1 * entity_scale,
          hr_version =
          {
            filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-lower-end-A.png",
            width = 40,
            height = 98,
            x = 0,
            y = 98,
            shift = {0.015625 * entity_scale, 0.609375 * entity_scale},
            scale = 0.5 * entity_scale,
            draw_as_shadow = true
          }
        },
        top_end_length = 1 * entity_scale
      },

      --------------------------------------------------------------------------
      -- lower leg water reflection section ------------------------------------
      --------------------------------------------------------------------------
      lower_part_water_reflection =
      {
        bottom_end =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-end-B-water-reflection.png",
          width = 52,
          height = 104,
          x = 0,
          y = 0,
          shift = {0 * entity_scale, -0.59375 * entity_scale},
          scale = 0.5 * entity_scale
        },
        bottom_end_length = 1 * entity_scale,

        middle =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-stretchable-water-reflection.png",
          width = 72,
          height = 384,
          x = 0,
          y = 0,
          shift = {0.015625 * entity_scale, 0 * entity_scale},
          scale = 0.25 * entity_scale
        },
        middle_offset_from_bottom = 0.65,
        middle_offset_from_top = 0.45,

        top_end =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-lower-end-A-water-reflection.png",
          width = 56,
          height = 110,
          x = 0,
          y = 0,
          shift = {0.015625 * entity_scale, 0.53125 * entity_scale},
          scale = 0.5
        },
        top_end_length = 1 * entity_scale
      },

      --------------------------------------------------------------------------
      -- upper leg section -----------------------------------------------------
      --------------------------------------------------------------------------
      upper_part =
      {
        bottom_end =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-end-B.png",
              width = 20,
              height = 30,
              x = 0,
              y = 0,
              shift = {0.03125 * entity_scale, -0.28125 * entity_scale},
              scale = 1 * entity_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-upper-end-B.png",
                width = 38,
                height = 58,
                x = 0,
                y = 0,
                shift = {0.015625 * entity_scale, -0.28125 * entity_scale},
                scale = 0.5 * entity_scale,
              },
            },
            {
              filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-end-B.png",
              width = 20,
              height = 30,
              x = 0,
              y = 60,
              shift = {0.03125 * entity_scale, -0.28125 * entity_scale},
              scale = 1 * entity_scale,
              apply_runtime_tint = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-upper-end-B.png",
                width = 38,
                height = 58,
                x = 0,
                y = 116,
                shift = {0.015625 * entity_scale, -0.28125 * entity_scale},
                scale = 0.5 * entity_scale,
                apply_runtime_tint = true,
              }
            }
          }
        },
        bottom_end_length = 0.75 * entity_scale,

        middle =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-stretchable.png",
              width = 30,
              height = 128,
              x = 0,
              y = 0,
              shift = {-0.0625 * entity_scale, 0 * entity_scale},
              scale = 0.5 * entity_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-upper-stretchable.png",
                width = 60,
                height = 256,
                x = 0,
                y = 0,
                shift = {-0.046875 * entity_scale, 0 * entity_scale},
                scale = 0.25 * entity_scale
              }
            }
          }
        },
        middle_offset_from_bottom = 0.45 * entity_scale,
        middle_offset_from_top = 0.35 * entity_scale,

        top_end =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-end-A.png",
              width = 22,
              height = 44,
              x = 0,
              y = 0,
              shift = {0 * entity_scale, 0.5625 * entity_scale},
              scale = 1 * entity_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-upper-end-A.png",
                width = 42,
                height = 86,
                x = 0,
                y = 0,
                shift = {0 * entity_scale, 0.5625 * entity_scale},
                scale = 0.5 * entity_scale
              }
            },
            {
              filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-end-A.png",
              width = 22,
              height = 44,
              x = 0,
              y = 88,
              shift = {0 * entity_scale, 0.5625 * entity_scale},
              scale = 1 * entity_scale,
              apply_runtime_tint = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-upper-end-A.png",
                width = 42,
                height = 86,
                x = 0,
                y = 172,
                shift = {0 * entity_scale, 0.5625 * entity_scale},
                scale = 0.5 * entity_scale,
                apply_runtime_tint = true
              }
            }
          }
        },
        top_end_length = 0.75 * entity_scale
      },

      --------------------------------------------------------------------------
      -- upper leg shadow section ----------------------------------------------
      --------------------------------------------------------------------------
      upper_part_shadow =
      {
        bottom_end =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-end-B.png",
          width = 20,
          height = 30,
          x = 0,
          y = 30,
          shift = {0.03125 * entity_scale, -0.28125 * entity_scale},
          scale = 1 * entity_scale,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-upper-end-B.png",
            width = 38,
            height = 58,
            x = 0,
            y = 58,
            shift = {0.015625 * entity_scale, -0.28125 * entity_scale},
            scale = 0.5 * entity_scale,
            draw_as_shadow = true
          }
        },
        bottom_end_length = 0.75 * entity_scale,

        middle =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-stretchable.png",
          width = 30,
          height = 128,
          x = 0,
          y = 128,
          shift = {-0.0625 * entity_scale, 0 * entity_scale},
          scale = 0.5 * entity_scale,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-upper-stretchable.png",
            width = 60,
            height = 256,
            x = 0,
            y = 256,
            shift = {-0.046875 * entity_scale, 0 * entity_scale},
            scale = 0.25 * entity_scale,
            draw_as_shadow = true
          }
        },
        middle_offset_from_bottom = 0.45 * entity_scale,
        middle_offset_from_top = 0.35 * entity_scale,

        top_end =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-end-A.png",
          draw_as_shadow = true,
          width = 22,
          height = 44,
          x = 0,
          y = 44,
          shift = {0 * entity_scale, 0.5625 * entity_scale},
          scale = 1 * entity_scale,
          hr_version =
          {
            filename = "__base__/graphics/entity/spidertron/legs/hr-spidertron-legs-upper-end-A.png",
            width = 42,
            height = 86,
            x = 0,
            y = 86,
            shift = {0 * entity_scale, 0.5625 * entity_scale},
            scale = 0.5 * entity_scale,
            draw_as_shadow = true
          }
        },
        top_end_length = 0.75 * entity_scale
      },

      --------------------------------------------------------------------------
      -- upper leg water reflection section ------------------------------------
      --------------------------------------------------------------------------
      upper_part_water_reflection =
      {
        bottom_end =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-end-B-water-reflection.png",
          width = 56,
          height = 74,
          x = 0,
          y = 0,
          shift = {0.015625 * entity_scale, -0.21875 * entity_scale},
          scale = 0.5 * entity_scale
        },
        bottom_end_length = 0.75 * entity_scale,

        middle =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-stretchable-water-reflection.png",
          width = 80,
          height = 256,
          x = 0,
          y = 0,
          shift = {-0.0625 * entity_scale, 0 * entity_scale},
          scale = 0.25 * entity_scale
        },
        middle_offset_from_bottom = 0.45 * entity_scale,
        middle_offset_from_top = 0.35 * entity_scale,

        top_end =
        {
          filename = "__base__/graphics/entity/spidertron/legs/spidertron-legs-upper-end-A-water-reflection.png",
          width = 64,
          height = 96,
          x = 0,
          y = 0,
          shift = {0.015625 * entity_scale, 0.484375 * entity_scale},
          scale = 0.5 * entity_scale
        },
        top_end_length = 0.75 * entity_scale
      }
    }
  }
end

local entity_name = "crawlertron"
local entity_scale = 0.5

data:extend(
  {
    {
      type = "item-with-entity-data",
      name = entity_name,
      icon = "__base__/graphics/icons/spidertron.png",
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "transport",
      order = "b[personal-transport]-c[spidertron]-a[spider]",
      place_result = entity_name,
      stack_size = 1,
    },

    create_spider_vehicle_body(entity_name, entity_scale),
    create_spider_vehicle_leg(entity_name, entity_scale, "1"),
    create_spider_vehicle_leg(entity_name, entity_scale, "2"),
    create_spider_vehicle_leg(entity_name, entity_scale, "3"),
    create_spider_vehicle_leg(entity_name, entity_scale, "4"),
    create_spider_vehicle_leg(entity_name, entity_scale, "5"),
    create_spider_vehicle_leg(entity_name, entity_scale, "6"),
    create_spider_vehicle_leg(entity_name, entity_scale, "7"),
    create_spider_vehicle_leg(entity_name, entity_scale, "8")
  }
)
--]]--
