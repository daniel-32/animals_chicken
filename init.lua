--= Chicken for Animals mod =--
-- Copyright (c) 2016 Daniel <https://github.com/daniel-32>
--
-- Modified from the original version for Creatures MOB-Engine (cme)
-- Copyright (c) 2015 BlockMen <blockmen2015@gmail.com>
--
-- init.lua
--
-- This software is provided 'as-is', without any express or implied warranty. In no
-- event will the authors be held liable for any damages arising from the use of
-- this software.
--
-- Permission is granted to anyone to use this software for any purpose, including
-- commercial applications, and to alter it and redistribute it freely, subject to the
-- following restrictions:
--
-- 1. The origin of this software must not be misrepresented; you must not
-- claim that you wrote the original software. If you use this software in a
-- product, an acknowledgment in the product documentation is required.
-- 2. Altered source versions must be plainly marked as such, and must not
-- be misrepresented as being the original software.
-- 3. This notice may not be removed or altered from any source distribution.
--

local def = {
	-- general
	name = "animals:chicken",
	stats = {
		hp = 5,
		lifetime = 300, -- 5 Minutes
		jump_height = 1.0,
		silent = true,
		panic_speed = 2.1
	},

	modes = {
		idle = {chance = 0.25, duration = 5, update_yaw = 3},
		idle2 = {chance = 0.69, duration = 0.8},
		pick = {chance = 0.2, duration = 2},
		walk = {chance = 0.2, duration = 5.5, moving_speed = 0.7, update_yaw = 2},
	},

	model = {
		mesh = "animals_chicken.b3d",
		textures = {"animals_chicken.png"},
		collisionbox = {-0.25, -0.01, -0.3, 0.25, 0.45, 0.3},
		rotation = -90.0,
		collide_with_objects = false,
		animations = {
			idle = {start = 0, stop = 1, speed = 10},
			idle2 = {start = 41, stop = 61, speed = 70},
			pick = {start = 103, stop = 155, speed = 50},
			walk = {start = 3, stop = 38, speed = 50},
			swim = {start = 42, stop = 102, speed = 40},
			panic = {start = 42, stop = 102, speed = 55},
			death = {start = 156, stop = 176, speed = 28, loop = false, duration = 2.12},
		},
	},

	sounds = {
		on_damage = {name = "animals_chicken_hit", gain = 0.5, distance = 10},
		on_death = {name = "animals_chicken_hit", gain = 0.5, distance = 10},
		swim = {name = "animals_splash", gain = 1.0, distance = 10},
		random = {
			idle = {name = "animals_chicken", gain = 0.9, distance = 12, time_min = 8, time_max = 50},
		},
	},

	spawning = {
		abm_nodes = {
			spawn_on = {"default:dirt_with_grass"},
		},
		abm_interval = 55,
		abm_chance = 7800,
		max_number = 1,
		number = 1,
		light = {min = 8, max = 15},
		height_limit = {min = 0, max = 150},
	},

	drops = {
		{"animals:flesh"},
	},
}

animals.registerMob(def)
