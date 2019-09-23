-- entity/walls

if DECT.ENABLED["walls"] then

	-- Make a copy of the base stone wall before clearing it out
	local base_stone_wall = data.raw["wall"]["stone-wall"]
	data.raw["wall"]["stone-wall"] = nil

	data:extend({
		{
			type = "wall",
			name = "stone-wall",
			icon = "__base__/graphics/icons/wall.png",
			icon_size = 32,
	 		flags = {"placeable-neutral", "player-creation"},
			collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			minable = {mining_time = 0.5, result = "stone-wall"},
			fast_replaceable_group = "wall",
			max_health = 250,
			repair_speed_modifier = 2,
			corpse = "wall-remnants",
			repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
			mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
			vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
			connected_gate_visualization = {
				filename = "__core__/graphics/arrows/underground-lines.png",
				priority = "high",
				width = 64,
				height = 64,
				scale = 0.5
			},
			resistances = {
				{
					type = "physical",
					decrease = 2,
					percent = 10
				},
				{
					type = "impact",
					decrease = 30,
					percent = 30
				},
				{
					type = "explosion",
					decrease = 8,
					percent = 15
				},
				{
					type = "acid",
					percent = 10
				},
				{
					type = "fire",
					percent = 100
				},
				{
					type = "laser",
					percent = 40
				}
			},
			pictures = {
	      single = {
	        layers = {
	          {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-single.png",
	            priority = "extra-high",
	            width = 32,
	            height = 46,
	            variation_count = 2,
	            line_length = 2,
	            shift = util.by_pixel(0, -6),
	            hr_version = {
	              filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-single.png",
	              priority = "extra-high",
	              width = 64,
	              height = 86,
	              variation_count = 2,
	              line_length = 2,
	              shift = util.by_pixel(0, -5),
	              scale = 0.5
	            }
	          },
	          {
	            filename = "__base__/graphics/entity/wall/wall-single-shadow.png",
	            priority = "extra-high",
	            width = 50,
	            height = 32,
	            repeat_count = 2,
	            shift = util.by_pixel(10, 16),
	            draw_as_shadow = true,
	            hr_version = {
	              filename = "__base__/graphics/entity/wall/hr-wall-single-shadow.png",
	              priority = "extra-high",
	              width = 98,
	              height = 60,
	              repeat_count = 2,
	              shift = util.by_pixel(10, 17),
	              draw_as_shadow = true,
	              scale = 0.5
	            }
	          }
	        }
	      },
	      straight_vertical = {
	        layers = {
	          {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-vertical.png",
	            priority = "extra-high",
	            width = 32,
	            height = 68,
	            variation_count = 5,
	            line_length = 5,
	            shift = util.by_pixel(0, 8),
	            hr_version = {
	              filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-vertical.png",
	              priority = "extra-high",
	              width = 64,
	              height = 134,
	              variation_count = 5,
	              line_length = 5,
	              shift = util.by_pixel(0, 8),
	              scale = 0.5
	            }
	          },
	          {
	            filename = "__base__/graphics/entity/wall/wall-vertical-shadow.png",
	            priority = "extra-high",
	            width = 50,
	            height = 58,
	            repeat_count = 5,
	            shift = util.by_pixel(10, 28),
	            draw_as_shadow = true,
	            hr_version = {
	              filename = "__base__/graphics/entity/wall/hr-wall-vertical-shadow.png",
	              priority = "extra-high",
	              width = 98,
	              height = 110,
	              repeat_count = 5,
	              shift = util.by_pixel(10, 29),
	              draw_as_shadow = true,
	              scale = 0.5
	            }
	          }
	        }
	      },
	      straight_horizontal = {
	        layers = {
	          {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-horizontal.png",
	            priority = "extra-high",
	            width = 32,
	            height = 50,
	            variation_count = 6,
	            line_length = 6,
	            shift = util.by_pixel(0, -4),
	            hr_version = {
	              filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-horizontal.png",
	              priority = "extra-high",
	              width = 64,
	              height = 92,
	              variation_count = 6,
	              line_length = 6,
	              shift = util.by_pixel(0, -2),
	              scale = 0.5
	            }
	          },
	          {
	            filename = "__base__/graphics/entity/wall/wall-horizontal-shadow.png",
	            priority = "extra-high",
	            width = 62,
	            height = 36,
	            repeat_count = 6,
	            shift = util.by_pixel(14, 14),
	            draw_as_shadow = true,
	            hr_version = {
	              filename = "__base__/graphics/entity/wall/hr-wall-horizontal-shadow.png",
	              priority = "extra-high",
	              width = 124,
	              height = 68,
	              repeat_count = 6,
	              shift = util.by_pixel(14, 15),
	              draw_as_shadow = true,
	              scale = 0.5
	            }
	          }
	        }
	      },
	      corner_right_down = {
	        layers = {
	          {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-corner-right.png",
	            priority = "extra-high",
	            width = 32,
	            height = 64,
	            variation_count = 2,
	            line_length = 2,
	            shift = util.by_pixel(0, 6),
	            hr_version = {
	              filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-corner-right.png",
	              priority = "extra-high",
	              width = 64,
	              height = 128,
	              variation_count = 2,
	              line_length = 2,
	              shift = util.by_pixel(0, 7),
	              scale = 0.5
	            }
	          },
	          {
	            filename = "__base__/graphics/entity/wall/wall-corner-right-shadow.png",
	            priority = "extra-high",
	            width = 62,
	            height = 60,
	            repeat_count = 2,
	            shift = util.by_pixel(14, 28),
	            draw_as_shadow = true,
	            hr_version = {
	              filename = "__base__/graphics/entity/wall/hr-wall-corner-right-shadow.png",
	              priority = "extra-high",
	              width = 124,
	              height = 120,
	              repeat_count = 2,
	              shift = util.by_pixel(17, 28),
	              draw_as_shadow = true,
	              scale = 0.5
	            }
	          }
	        }
	      },
	      corner_left_down = {
	        layers = {
	          {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-corner-left.png",
	            priority = "extra-high",
	            width = 32,
	            height = 68,
	            variation_count = 2,
	            line_length = 2,
	            shift = util.by_pixel(0, 6),
	            hr_version = {
	              filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-corner-left.png",
	              priority = "extra-high",
	              width = 64,
	              height = 134,
	              variation_count = 2,
	              line_length = 2,
	              shift = util.by_pixel(0, 7),
	              scale = 0.5
	            }
	          },
	          {
	            filename = "__base__/graphics/entity/wall/wall-corner-left-shadow.png",
	            priority = "extra-high",
	            width = 54,
	            height = 60,
	            repeat_count = 2,
	            shift = util.by_pixel(8, 28),
	            draw_as_shadow = true,
	            hr_version = {
	              filename = "__base__/graphics/entity/wall/hr-wall-corner-left-shadow.png",
	              priority = "extra-high",
	              width = 102,
	              height = 120,
	              repeat_count = 2,
	              shift = util.by_pixel(9, 28),
	              draw_as_shadow = true,
	              scale = 0.5
	            }
	          }
	        }
	      },
	      t_up = {
	        layers = {
	          {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-t.png",
	            priority = "extra-high",
	            width = 32,
	            height = 68,
	            variation_count = 4,
	            line_length = 4,
	            shift = util.by_pixel(0, 6),
	            hr_version = {
	              filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-t.png",
	              priority = "extra-high",
	              width = 64,
	              height = 134,
	              variation_count = 4,
	              line_length = 4,
	              shift = util.by_pixel(0, 7),
	              scale = 0.5
	            }
	          },
	          {
	            filename = "__base__/graphics/entity/wall/wall-t-shadow.png",
	            priority = "extra-high",
	            width = 62,
	            height = 60,
	            repeat_count = 4,
	            shift = util.by_pixel(14, 28),
	            draw_as_shadow = true,
	            hr_version = {
	              filename = "__base__/graphics/entity/wall/hr-wall-t-shadow.png",
	              priority = "extra-high",
	              width = 124,
	              height = 120,
	              repeat_count = 4,
	              shift = util.by_pixel(14, 28),
	              draw_as_shadow = true,
	              scale = 0.5
	            }
	          }
	        }
	      },
	      ending_right = {
	        layers =
	        {
	          {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-ending-right.png",
	            priority = "extra-high",
	            width = 32,
	            height = 48,
	            variation_count = 2,
	            line_length = 2,
	            shift = util.by_pixel(0, -4),
	            hr_version = {
	              filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-ending-right.png",
	              priority = "extra-high",
	              width = 64,
	              height = 92,
	              variation_count = 2,
	              line_length = 2,
	              shift = util.by_pixel(0, -3),
	              scale = 0.5
	            }
	          },
	          {
	            filename = "__base__/graphics/entity/wall/wall-ending-right-shadow.png",
	            priority = "extra-high",
	            width = 62,
	            height = 36,
	            repeat_count = 2,
	            shift = util.by_pixel(14, 14),
	            draw_as_shadow = true,
	            hr_version = {
	              filename = "__base__/graphics/entity/wall/hr-wall-ending-right-shadow.png",
	              priority = "extra-high",
	              width = 124,
	              height = 68,
	              repeat_count = 2,
	              shift = util.by_pixel(17, 15),
	              draw_as_shadow = true,
	              scale = 0.5
	            }
	          }
	        }
	      },
	      ending_left = {
	        layers = {
	          {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-ending-left.png",
	            priority = "extra-high",
	            width = 32,
	            height = 48,
	            variation_count = 2,
	            line_length = 2,
	            shift = util.by_pixel(0, -4),
	            hr_version = {
	              filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-ending-left.png",
	              priority = "extra-high",
	              width = 64,
	              height = 92,
	              variation_count = 2,
	              line_length = 2,
	              shift = util.by_pixel(0, -3),
	              scale = 0.5
	            }
	          },
	          {
	            filename = "__base__/graphics/entity/wall/wall-ending-left-shadow.png",
	            priority = "extra-high",
	            width = 54,
	            height = 36,
	            repeat_count = 2,
	            shift = util.by_pixel(8, 14),
	            draw_as_shadow = true,
	            hr_version = {
	              filename = "__base__/graphics/entity/wall/hr-wall-ending-left-shadow.png",
	              priority = "extra-high",
	              width = 102,
	              height = 68,
	              repeat_count = 2,
	              shift = util.by_pixel(9, 15),
	              draw_as_shadow = true,
	              scale = 0.5
	            }
	          }
	        }
	      },
	      filling = {
	        filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-filling.png",
	          priority = "extra-high",
	          width = 24,
	          height = 30,
	          variation_count = 8,
	          line_length = 8,
	          shift = util.by_pixel(0, -2),
	          hr_version = {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-filling.png",
	            priority = "extra-high",
	            width = 48,
	            height = 56,
	            variation_count = 8,
	            line_length = 8,
	            shift = util.by_pixel(0, -1),
	            scale = 0.5
	          }
	      },
	      water_connection_patch = {
	        sheets = {
	          {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-patch.png",
	            priority = "extra-high",
	            width = 58,
	            height = 64,
	            shift = util.by_pixel(0, -2),
	            hr_version = {
	              filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-patch.png",
	              priority = "extra-high",
	              width = 116,
	              height = 128,
	              shift = util.by_pixel(0, -2),
	              scale = 0.5
	            }
	          },
	          {
	            filename = "__base__/graphics/entity/wall/wall-patch-shadow.png",
	            priority = "extra-high",
	            width = 74,
	            height = 52,
	            shift = util.by_pixel(8, 14),
	            draw_as_shadow = true,
	            hr_version = {
	              filename = "__base__/graphics/entity/wall/hr-wall-patch-shadow.png",
	              priority = "extra-high",
	              width = 144,
	              height = 100,
	              shift = util.by_pixel(9, 15),
	              draw_as_shadow = true,
	              scale = 0.5
	            }
	          }
	        }
	      },
	      gate_connection_patch = {
	        sheets = {
	          {
	            filename = "__Dectorio__/graphics/entity/stone-brick-wall/wall-gate.png",
	            priority = "extra-high",
	            width = 42,
	            height = 56,
	            shift = util.by_pixel(0, -8),
	            hr_version = {
	              filename = "__Dectorio__/graphics/entity/stone-brick-wall/hr-wall-gate.png",
	              priority = "extra-high",
	              width = 82,
	              height = 108,
	              shift = util.by_pixel(0, -7),
	              scale = 0.5
	            }
	          },
	          {
	            filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
	            priority = "extra-high",
	            width = 66,
	            height = 40,
	            shift = util.by_pixel(14, 18),
	            draw_as_shadow = true,
	            hr_version = {
	              filename = "__base__/graphics/entity/wall/hr-wall-gate-shadow.png",
	              priority = "extra-high",
	              width = 130,
	              height = 78,
	              shift = util.by_pixel(14, 18),
	              draw_as_shadow = true,
	              scale = 0.5
	            }
	          }
	        }
	      }
	    },
			wall_diode_green = base_stone_wall.wall_diode_green,
			wall_diode_green_light = base_stone_wall.wall_diode_green_light,
			wall_diode_red = base_stone_wall.wall_diode_red,
			wall_diode_red_light = base_stone_wall.wall_diode_red_light,
			circuit_wire_connection_point = circuit_connector_definitions["gate"].points,
			circuit_connector_sprites = circuit_connector_definitions["gate"].sprites,
			circuit_wire_max_distance = default_circuit_wire_max_distance,
			default_output_signal = {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"}
		},
		{
			type = "wall",
			name = "dect-concrete-wall",
			icon = "__Dectorio__/graphics/icons/concrete-wall.png",
			icon_size = 32,
			flags = {"placeable-neutral", "player-creation"},
			collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			minable = {mining_time = 0.5, result = "dect-concrete-wall"},
			fast_replaceable_group = "wall",
			max_health = 500,
			repair_speed_modifier = 2,
			corpse = "wall-remnants",
			repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
			mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
			vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
			connected_gate_visualization = {
				filename = "__core__/graphics/arrows/underground-lines.png",
				priority = "high",
				width = 64,
				height = 64,
				scale = 0.5
			},
			resistances = {
				{
					type = "physical",
					decrease = 3,
					percent = 40
				},
				{
					type = "impact",
					decrease = 45,
					percent = 70
				},
				{
					type = "explosion",
					decrease = 10,
					percent = 40
				},
				{
					type = "fire",
					percent = 100
				},
				{
					type = "acid",
					decrease = 5,
					percent = 60
				},
				{
					type = "laser",
					percent = 75
				}
			},
			pictures = base_stone_wall.pictures,
			wall_diode_green = base_stone_wall.wall_diode_green,
			wall_diode_green_light = base_stone_wall.wall_diode_green_light,
			wall_diode_red = base_stone_wall.wall_diode_red,
			wall_diode_red_light = base_stone_wall.wall_diode_red_light,
			circuit_wire_connection_point = circuit_connector_definitions["gate"].points,
			circuit_connector_sprites = circuit_connector_definitions["gate"].sprites,
			circuit_wire_max_distance = default_circuit_wire_max_distance,
			default_output_signal = {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"}
		},
		{
			type = "wall",
			name = "dect-chain-wall",
			icon = "__Dectorio__/graphics/icons/chain-wall.png",
			icon_size = 32,
			flags = {"placeable-neutral", "player-creation"},
			collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			minable = {mining_time = 0.5, result = "dect-chain-wall"},
			fast_replaceable_group = "wall",
			max_health = 300,
			repair_speed_modifier = 2,
			corpse = "wall-remnants",
			repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
			mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
			vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
			connected_gate_visualization = {
				filename = "__core__/graphics/arrows/underground-lines.png",
				priority = "high",
				width = 64,
				height = 64,
				scale = 0.5
			},
			resistances = {
				{
					type = "physical",
					decrease = 10,
					percent = 20
				},
				{
					type = "impact",
					decrease = 35,
					percent = 40
				},
				{
					type = "explosion",
					decrease = 5,
					percent = 10
				},
				{
					type = "fire",
					percent = 5
				},
				{
					type = "laser",
					percent = 5
				}
			},
			pictures = {
				single = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-single.png",
							priority = "extra-high",
							width = 22,
							height = 42,
							shift = {0, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-single-shadow.png",
							priority = "extra-high",
							width = 47,
							height = 32,
							shift = {0.359375, 0.5},
							draw_as_shadow = true
						}
					}
				},
				straight_vertical = {
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-vertical-1.png",
								priority = "extra-high",
								width = 22,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-vertical-shadow.png",
								priority = "extra-high",
								width = 47,
								height = 60,
								shift = {0.390625, 1.16},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-vertical-2.png",
								priority = "extra-high",
								width = 22,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-vertical-shadow.png",
								priority = "extra-high",
								width = 47,
								height = 60,
								shift = {0.390625, 1.16},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-vertical-3.png",
								priority = "extra-high",
								width = 22,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-vertical-shadow.png",
								priority = "extra-high",
								width = 47,
								height = 60,
								shift = {0.390625, 1.16},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-vertical-4.png",
								priority = "extra-high",
								width = 22,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-vertical-shadow.png",
								priority = "extra-high",
								width = 47,
								height = 60,
								shift = {0.390625, 1.16},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-vertical-5.png",
								priority = "extra-high",
								width = 22,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-vertical-shadow.png",
								priority = "extra-high",
								width = 47,
								height = 60,
								shift = {0.390625, 1.16},
								draw_as_shadow = true
							}
						}
					}
				},
				straight_horizontal = {
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-horizontal-1.png",
								priority = "extra-high",
								width = 32,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-horizontal-shadow.png",
								priority = "extra-high",
								width = 59,
								height = 32,
								shift = {0.421875, 0.5},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-horizontal-2.png",
								priority = "extra-high",
								width = 32,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-horizontal-shadow.png",
								priority = "extra-high",
								width = 59,
								height = 32,
								shift = {0.421875, 0.5},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-horizontal-3.png",
								priority = "extra-high",
								width = 32,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-horizontal-shadow.png",
								priority = "extra-high",
								width = 59,
								height = 32,
								shift = {0.421875, 0.5},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-horizontal-4.png",
								priority = "extra-high",
								width = 32,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-horizontal-shadow.png",
								priority = "extra-high",
								width = 59,
								height = 32,
								shift = {0.421875, 0.5},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-horizontal-5.png",
								priority = "extra-high",
								width = 32,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/chain-wall/wall-straight-horizontal-shadow.png",
								priority = "extra-high",
								width = 59,
								height = 32,
								shift = {0.421875, 0.5},
								draw_as_shadow = true
							}
						}
					}
				},
				corner_right_down = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-corner-right-down.png",
							priority = "extra-high",
							width = 27,
							height = 42,
							shift = {0.078125, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-corner-right-down-shadow.png",
							priority = "extra-high",
							width = 53,
							height = 61,
							shift = {0.535, 1.17},
							draw_as_shadow = true
						}
					}
				},
				corner_left_down = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-corner-left-down.png",
							priority = "extra-high",
							width = 27,
							height = 42,
							shift = {-0.078125, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-corner-left-down-shadow.png",
							priority = "extra-high",
							width = 53,
							height = 60,
							shift = {0.26, 1.05},
							draw_as_shadow = true
						}
					}
				},
				t_up = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-t-down.png",
							priority = "extra-high",
							width = 32,
							height = 42,
							shift = {0, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-t-down-shadow.png",
							priority = "extra-high",
							width = 71,
							height = 61,
							shift = {0.5, 1},
							draw_as_shadow = true
						}
					}
				},
				ending_right = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-ending-right.png",
							priority = "extra-high",
							width = 27,
							height = 42,
							shift = {0.078125, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-ending-right-shadow.png",
							priority = "extra-high",
							width = 53,
							height = 32,
							shift = {0.484375, 0.5},
							draw_as_shadow = true
						}
					}
				},
				ending_left = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-ending-left.png",
							priority = "extra-high",
							width = 27,
							height = 42,
							shift = {-0.078125, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-ending-left-shadow.png",
							priority = "extra-high",
							width = 53,
							height = 32,
							shift = {0.328125, 0.5},
							draw_as_shadow = true
						}
					}
				},
				gate_connection_patch = {
					sheets = {
						{
							filename = "__Dectorio__/graphics/entity/chain-wall/wall-gate.png",
							priority = "extra-high",
							width = 42,
							height = 56,
							shift = util.by_pixel(0, -8),
						},
						{
							filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
							priority = "extra-high",
							width = 66,
							height = 40,
							shift = util.by_pixel(14, 18),
							draw_as_shadow = true
						}
					}
				}
			},
			wall_diode_green = base_stone_wall.wall_diode_green,
			wall_diode_green_light = base_stone_wall.wall_diode_green_light,
			wall_diode_red = base_stone_wall.wall_diode_red,
			wall_diode_red_light = base_stone_wall.wall_diode_red_light,
			circuit_wire_connection_point = circuit_connector_definitions["gate"].points,
			circuit_connector_sprites = circuit_connector_definitions["gate"].sprites,
			circuit_wire_max_distance = default_circuit_wire_max_distance,
			default_output_signal = {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"}
		},
		{
			type = "wall",
			name = "dect-wood-wall",
			icon = "__Dectorio__/graphics/icons/wood-wall.png",
			icon_size = 32,
			flags = {"placeable-neutral", "player-creation"},
			collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			minable = {mining_time = 0.5, result = "dect-wood-wall"},
			fast_replaceable_group = "wall",
			max_health = 150,
			repair_speed_modifier = 2,
			corpse = "wall-remnants",
			repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
			mined_sound = { filename = "__Dectorio__/sound/deconstruct-wood.ogg" },
			vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
			connected_gate_visualization = {
				filename = "__core__/graphics/arrows/underground-lines.png",
				priority = "high",
				width = 64,
				height = 64,
				scale = 0.5
			},
			resistances = {
				{
					type = "physical",
					decrease = 10,
					percent = 10
				},
				{
					type = "impact",
					decrease = 10,
					percent = 10
				},
				{
					type = "explosion",
					decrease = 5,
					percent = 5
				},
				{
					type = "fire",
					percent = 0
				},
				{
					type = "laser",
					percent = 0
				}
			},
			pictures = {
				single = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-single.png",
							priority = "extra-high",
							width = 22,
							height = 42,
							shift = {0, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-single-shadow.png",
							priority = "extra-high",
							width = 47,
							height = 32,
							shift = {0.345, 0.5},
							draw_as_shadow = true
						}
					}
				},
				straight_vertical = {
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-vertical-1.png",
								priority = "extra-high",
								width = 22,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-vertical-shadow.png",
								priority = "extra-high",
								width = 47,
								height = 60,
								shift = {0.390625, 0.78},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-vertical-2.png",
								priority = "extra-high",
								width = 22,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-vertical-shadow.png",
								priority = "extra-high",
								width = 47,
								height = 60,
								shift = {0.390625, 0.78},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-vertical-3.png",
								priority = "extra-high",
								width = 22,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-vertical-shadow.png",
								priority = "extra-high",
								width = 47,
								height = 60,
								shift = {0.390625, 0.78},
								draw_as_shadow = true
							}
						}
					}
				},
				straight_horizontal = {
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-horizontal-1.png",
								priority = "extra-high",
								width = 32,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-horizontal-shadow.png",
								priority = "extra-high",
								width = 59,
								height = 32,
								shift = {0.421875, 0.5},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-horizontal-2.png",
								priority = "extra-high",
								width = 32,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-horizontal-shadow.png",
								priority = "extra-high",
								width = 59,
								height = 32,
								shift = {0.421875, 0.5},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-horizontal-3.png",
								priority = "extra-high",
								width = 32,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-horizontal-shadow.png",
								priority = "extra-high",
								width = 59,
								height = 32,
								shift = {0.421875, 0.5},
								draw_as_shadow = true
							}
						}
					},
					{
						layers = {
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-horizontal-4.png",
								priority = "extra-high",
								width = 32,
								height = 42,
								shift = {0, -0.15625}
							},
							{
								filename = "__Dectorio__/graphics/entity/wood-wall/wall-straight-horizontal-shadow.png",
								priority = "extra-high",
								width = 59,
								height = 32,
								shift = {0.421875, 0.5},
								draw_as_shadow = true
							}
						}
					}
				},
				corner_right_down = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-corner-right-down.png",
							priority = "extra-high",
							width = 27,
							height = 42,
							shift = {0.078125, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-corner-right-down-shadow.png",
							priority = "extra-high",
							width = 53,
							height = 61,
							shift = {0.56, 0.87},
							draw_as_shadow = true
						}
					}
				},
				corner_left_down = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-corner-left-down.png",
							priority = "extra-high",
							width = 27,
							height = 42,
							shift = {-0.078125, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-corner-left-down-shadow.png",
							priority = "extra-high",
							width = 53,
							height = 60,
							shift = {0.328125, 0.640625},
							draw_as_shadow = true
						}
					}
				},
				t_up = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-t-down.png",
							priority = "extra-high",
							width = 32,
							height = 42,
							shift = {0, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-t-down-shadow.png",
							priority = "extra-high",
							width = 71,
							height = 61,
							shift = {0.546875, 0.77},
							draw_as_shadow = true
						}
					}
				},
				ending_right = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-ending-right.png",
							priority = "extra-high",
							width = 27,
							height = 42,
							shift = {0.078125, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-ending-right-shadow.png",
							priority = "extra-high",
							width = 53,
							height = 32,
							shift = {0.484375, 0.5},
							draw_as_shadow = true
						}
					}
				},
				ending_left = {
					layers = {
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-ending-left.png",
							priority = "extra-high",
							width = 27,
							height = 42,
							shift = {-0.078125, -0.15625}
						},
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-ending-left-shadow.png",
							priority = "extra-high",
							width = 53,
							height = 32,
							shift = {0.328125, 0.5},
							draw_as_shadow = true
						}
					}
				},
				gate_connection_patch = {
					sheets = {
						{
							filename = "__Dectorio__/graphics/entity/wood-wall/wall-gate.png",
							priority = "extra-high",
							width = 42,
							height = 56,
							shift = util.by_pixel(0, -8),
						},
						{
							filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
							priority = "extra-high",
							width = 66,
							height = 40,
							shift = util.by_pixel(14, 18),
							draw_as_shadow = true
						}
					}
				}
			},
			wall_diode_green = base_stone_wall.wall_diode_green,
			wall_diode_green_light = base_stone_wall.wall_diode_green_light,
			wall_diode_red = base_stone_wall.wall_diode_red,
			wall_diode_red_light = base_stone_wall.wall_diode_red_light,
			circuit_wire_connection_point = circuit_connector_definitions["gate"].points,
			circuit_connector_sprites = circuit_connector_definitions["gate"].sprites,
			circuit_wire_max_distance = default_circuit_wire_max_distance,
			default_output_signal = {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"}
		}


	})

	-- Adjust base gate health and resistances to match concrete wall
	local base_gate = data.raw["gate"]["gate"]
	local dect_concrete_wall = data.raw["wall"]["dect-concrete-wall"]
	base_gate.max_health = dect_concrete_wall.max_health
	base_gate.resistances = dect_concrete_wall.resistances

end
