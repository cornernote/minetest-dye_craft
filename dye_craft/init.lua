--[[

Dye Craft for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-dye_craft
License: GPLv3

]]--


local register_dye_craft = function(output,recipe)
	minetest.register_craft({
		type = 'shapeless',
		output = output,
		recipe = recipe,
	})
end


-- black/white from sand/coal
register_dye_craft('dye:white 16', {'bucket:bucket_water', 'default:sand'})
register_dye_craft('dye:black 16', {'bucket:bucket_water', 'default:coal_lump'})

-- dye from nodes
register_dye_craft('dye:red 16', {'dye:white', 'default:apple'})
register_dye_craft('dye:green 16', {'dye:white', 'default:cactus'})
register_dye_craft('dye:blue 16', {'dye:white', 'default:coal_lump'})

-- dye from other dye
register_dye_craft('dye:cyan 2', {'dye:white', 'dye:blue'})
register_dye_craft('dye:grey 2', {'dye:white', 'dye:black'})
register_dye_craft('dye:pink 2', {'dye:white', 'dye:red'})
register_dye_craft('dye:brown 2', {'dye:red', 'dye:green'})
register_dye_craft('dye:yellow 2', {'dye:blue', 'default:green'})
register_dye_craft('dye:dark_green 2', {'dye:green', 'dye:black'})
register_dye_craft('dye:dark_grey 2', {'dye:grey', 'dye:black'})
register_dye_craft('dye:magenta 2', {'dye:red', 'dye:cyan'})
register_dye_craft('dye:violet 2', {'dye:red', 'dye:blue'})
register_dye_craft('dye:orange 2', {'dye:red', 'dye:yellow'})

