--= Chicken for Animals mod =--
-- Copyright (c) 2017 Daniel <https://github.com/danielmeek32>
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
	parameters = {
		hp = 5,
		life_time = 300, -- 5 Minutes
		silent = true,
		panic_speed = 2.1,
		follow_items = {"farming:seed_wheat", "farming:seed_cotton"},
		follow_speed = 1.5,
		follow_distance = 5,
		follow_stop_distance = 1.5,
		tame_items = {"farming:seed_wheat", "farming:seed_cotton"},
		death_duration = 2.12,
	},

	modes = {
		idle = {chance = 0.2, duration = 5, direction_change_interval = 3},
		idle2 = {chance = 0.5, duration = 0.8},
		pick = {chance = 0.15, duration = 2},
		walk = {chance = 0.15, duration = 5.5, moving_speed = 0.7, direction_change_interval = 2},
	},

	model = {
		mesh = "animals_chicken.b3d",
		textures = {"animals_chicken.png"},
		collisionbox = {-0.25, -0.01, -0.3, 0.25, 0.45, 0.3},
		rotation = -90.0,
		collide_with_objects = false,
	},

	animations = {
		idle = {start = 0, stop = 1, speed = 10},
		idle2 = {start = 41, stop = 61, speed = 70},
		pick = {start = 103, stop = 155, speed = 50},
		walk = {start = 3, stop = 38, speed = 50},
		follow = {start = 3, stop = 38, speed = 107},
		swim = {start = 42, stop = 102, speed = 40},
		panic = {start = 42, stop = 102, speed = 55},
		death = {start = 156, stop = 176, speed = 28, loop = false},
	},

	sounds = {
		damage = {name = "animals_chicken_hit", gain = 0.5, max_hear_distance = 10},
		death = {name = "animals_chicken_hit", gain = 0.5, max_hear_distance = 10},
		swim = {name = "animals_splash", gain = 1.0, max_hear_distance = 10},
		idle = {name = "animals_chicken", gain = 0.9, max_hear_distance = 12, min_interval = 2, max_interval = 4},
	},

	spawning = {
		nodes = {"default:dirt_with_grass"},
		interval = 60,
		chance = 16384,
		min_time = 6000,
		max_time = 18000,
		min_height = 0,
		max_height = 128,
		surrounding_distance = 16,
		max_surrounding_count = 0,
		spawn_count = 1,
	},

	drops = {
		{name = "animals:flesh"},
	},
}

animals.register(def)
