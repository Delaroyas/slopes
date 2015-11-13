simplyslopes = {}
simplyslopes.mod = "redo"

simplyslopes.wood = default.node_sound_wood_defaults()
simplyslopes.dirt = default.node_sound_dirt_defaults()
simplyslopes.stone = default.node_sound_stone_defaults()
simplyslopes.glass = default.node_sound_glass_defaults()
simplyslopes.leaves = default.node_sound_leaves_defaults()
--slopes.wool = default.node_sound_wool_defaults() -- Xanadu only
--slopes.wool = slopes.leaves
	

-- Node will be called slopes:slope_<subname>
function simplyslopes.register_slope(subname, recipeitem, groups, images, description, snds)
	
	--x=minetest.registered_nodes[1].images,
	
	minetest.register_node(":simplyslopes:slope_" .. subname, {
		description = description.." Slope",
--		drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "simplyslopes_slope.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = snds,
--		node_box = {
--			type = "fixed",
--			fixed = {
--				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
--				{-0.5, 0, 0, 0.5, 0.5, 0.5},
--			},
--		},
		selection_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875, 0.5, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875, 0.5, 0.5, 0.5}, -- NodeBox2
			},
		},

		collision_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875, 0.5, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875, 0.5, 0.5, 0.5}, -- NodeBox2
			},
		},
		on_place = minetest.rotate_node
	})

	minetest.register_craft({
		output = 'simplyslopes:slope_' .. subname .. ' 6',
		recipe = {
			{recipeitem, "", ""},
			{ "",recipeitem, ""},
			{"","",recipeitem},
		},
	})
end

-- Node will be called slopes:slopeinsidecorner_<subname>
function simplyslopes.register_slopeinsidecorner(subname, recipeitem, groups, images, description, snds)
	minetest.register_node(":simplyslopes:slopeinsidecorner_" .. subname, {
		description = description.." Slope inside corner",
--		drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "simplyslopes_slopeinsidecorner.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = snds,
--		node_box = {
--			type = "fixed",
--			fixed = {
--				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
--				{-0.5, 0, 0, 0.5, 0.5, 0.5},
--			},
--		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		on_place = minetest.rotate_node
	})

	minetest.register_craft({
		output = 'simplyslopes:slopeinsidecorner_' .. subname .. ' 5',
		recipe = {
			{recipeitem, recipeitem, ""},
			{"", "", recipeitem},
			{"","", recipeitem},
		},
	})
end

-- Node will be called slopes:slopeinsidecorner2_<subname>
function simplyslopes.register_slopeinsidecorner2(subname, recipeitem, groups, images, description, snds)
	minetest.register_node(":simplyslopes:slopeinsidecorner2_" .. subname, {
		description = description.." Slope inside 2 corner",
--		drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "simplyslopes_slopeinsidecorner2.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = snds,
--		node_box = {
--			type = "fixed",
--			fixed = {
--				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
--				{-0.5, 0, 0, 0.5, 0.5, 0.5},
--			},
--		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		on_place = minetest.rotate_node
	})

	minetest.register_craft({
		output = 'simplyslopes:slopeinsidecorner2_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, ""},
			{"", "", recipeitem},
			{recipeitem,"", recipeitem},
		},
	})
end


-- Node will be called slopes:slopecorner_<subname>
function simplyslopes.register_slopecorner(subname, recipeitem, groups, images, description, snds)
	minetest.register_node(":simplyslopes:slopecorner_" .. subname, {
		description = description.." Slope corner",
--		drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "simplyslopes_slopecorner.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = snds,
--		node_box = {
--			type = "fixed",
--			fixed = {
--				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
--				{-0.5, 0, 0, 0.5, 0.5, 0.5},
--			},
--		},
		selection_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875,  0.1875, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875,  -0.1875, 0.5, 0.5}, -- NodeBox2
			},
		},

		collision_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875, 0.5, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875, 0.5, 0.5, 0.5}, -- NodeBox2
			},
		},
		on_place = minetest.rotate_node
	})

	minetest.register_craft({
		output = 'simplyslopes:slopecorner_' .. subname .. ' 6',
		recipe = {
			{ "",recipeitem, ""},
			{recipeitem,"",recipeitem},
		},
	})
end

-- Node will be called slopes:slopecorner_<subname>
function simplyslopes.register_slopecorner2(subname, recipeitem, groups, images, description, snds)
	minetest.register_node(":simplyslopes:slopecorner2_" .. subname, {
		description = description.." Slope corner 2",
--		drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "simplyslopes_slopecorner2.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = snds,
--		node_box = {
--			type = "fixed",
--			fixed = {
--				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
--				{-0.5, 0, 0, 0.5, 0.5, 0.5},
--			},
--		},
		selection_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875,  0.1875, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875,  -0.1875, 0.5, 0.5}, -- NodeBox2
			},
		},

		collision_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875, 0.5, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875, 0.5, 0.5, 0.5}, -- NodeBox2
			},
		},
		on_place = minetest.rotate_node
	})

	minetest.register_craft({
		output = 'simplyslopes:slopecorner2_' .. subname .. ' 6',
		recipe = {
			{ "",recipeitem, ""},
			{"",recipeitem,recipeitem},
		},
	})
end

-- Nodes will be called slopes:{stair,slab,corner,invcorner}_<subname>
function simplyslopes.register_all(subname, recipeitem, groups, images, desc, snds)
	simplyslopes.register_slope(subname, recipeitem, groups, images, desc, snds)
	simplyslopes.register_slopecorner(subname, recipeitem, groups, images, desc, snds)
	simplyslopes.register_slopecorner2(subname, recipeitem, groups, images, desc, snds)
	simplyslopes.register_slopeinsidecorner(subname, recipeitem, groups, images, desc, snds)
	simplyslopes.register_slopeinsidecorner2(subname, recipeitem, groups, images, desc, snds)
end

-- Helper

local grp = {}

--= Default Minetest

simplyslopes.register_all("grass", "default:dirt_with_grass",
	{choppy=2,oddly_breakable_by_hand=2,flammable=3},
	{"default_grass.png"},
	"Grass",
	simplyslopes.dirt)

simplyslopes.register_all("wood", "default:wood",
	{choppy=2,oddly_breakable_by_hand=2,flammable=3},
	{"default_wood.png"},
	"Wooden",
	simplyslopes.wood)

simplyslopes.register_all("junglewood", "default:junglewood",
	{choppy=2,oddly_breakable_by_hand=2,flammable=3, not_in_craft_guide=1},
	{"default_junglewood.png"},
	"Jungle Wood",
	simplyslopes.wood)

simplyslopes.register_all("pine_wood", "default:pinewood",
	{choppy=2,oddly_breakable_by_hand=1,flammable=3, not_in_craft_guide=1},
	{"default_pine_wood.png"},
	"Pine Wood",
	simplyslopes.wood)

simplyslopes.register_all("cobble", "default:cobble",
	{cracky=3,stone=2},
	{"default_cobble.png"},
	"Cobble",
	simplyslopes.stone)
		
simplyslopes.register_all("desert_cobble", "default:desert_cobble",
	{cracky=3, stone=2, not_in_craft_guide=1},
	{"default_desert_cobble.png"},
	"Desert Cobble", 
	simplyslopes.stone)

simplyslopes.register_all("cloud", "default:cloud",
	{unbreakable=1, not_in_craft_guide=1},
	{"default_cloud.png"},
	"Cloud",
	simplyslopes.wool)

simplyslopes.register_all("coal", "default:coalblock",
	{cracky=3, not_in_craft_guide=1},
	{"default_coal_block.png"},
	"Coal",
	simplyslopes.stone)

simplyslopes.register_all("steel", "default:steelblock",
	{cracky=1,level=2, not_in_craft_guide=1},
	{"default_steel_block.png"},
	"Steel",
	simplyslopes.stone)

simplyslopes.register_all("copper", "default:copperblock",
	{cracky=1,level=2, not_in_craft_guide=1},
	{"default_copper_block.png"},
	"Copper",
	simplyslopes.stone)

simplyslopes.register_all("bronze", "default:bronzeblock",
	{cracky=1,level=2, not_in_craft_guide=1},
	{"default_bronze_block.png"},
	"Bronze",
	simplyslopes.stone)

simplyslopes.register_all("mese", "default:mese",
	{cracky=1,level=2, not_in_craft_guide=1},
	{"default_mese_block.png"},
	"Mese",
	simplyslopes.stone)

simplyslopes.register_all("gold", "default:goldblock",
	{cracky=1, not_in_craft_guide=1},
	{"default_gold_block.png"},
	"Gold",
	simplyslopes.stone)

simplyslopes.register_all("diamond", "default:diamondblock",
	{cracky=1,level=3, not_in_craft_guide=1},
	{"default_diamond_block.png"},
	"Diamond",
	simplyslopes.stone)

simplyslopes.register_all("stone", "default:stone",
	{cracky=3,stone=1, not_in_craft_guide=1},
	{"default_stone.png"},
	"Stone",
	simplyslopes.stone)

simplyslopes.register_all("desert_stone", "default:desert_stone",
	{cracky=3,stone=1, not_in_craft_guide=1},
	{"default_desert_stone.png"},
	"Desert Stone",
	simplyslopes.stone)

simplyslopes.register_all("mossycobble", "default:mossycobble",
	{cracky=3, not_in_craft_guide=1},
	{"default_mossycobble.png"},
	"Mossy Cobble",
	simplyslopes.stone)

simplyslopes.register_all("brick", "default:brick",
	{cracky=3, not_in_craft_guide=1},
	{"default_brick.png"},
	"Brick",
	simplyslopes.stone)

simplyslopes.register_all("sandstone", "default:sandstone",
	{crumbly=2,cracky=3, not_in_craft_guide=1},
	{"default_sandstone.png"},
	"Sandstone",
	simplyslopes.stone)

simplyslopes.register_all("glass", "default:glass",
	{cracky=3,oddly_breakable_by_hand=3, not_in_craft_guide=1},
	{"default_glass.png"},
	"Glass",
	simplyslopes.glass)

simplyslopes.register_all("obsidianglass", "default:obsidian_glass",
	{cracky=2,level=3, not_in_craft_guide=1},
	{"default_obsidian_glass.png"},
	"Obsidian Glass",
	simplyslopes.glass)

simplyslopes.register_all("sandstonebrick", "default:sandstonebrick",
	{cracky=2, not_in_craft_guide=1},
	{"default_sandstone_brick.png"},
	"Sandstone Brick",
	simplyslopes.stone)

simplyslopes.register_all("obsidian", "default:obsidian",
	{cracky=1,level=2, unbreakable=1, not_in_craft_guide=1},
	{"default_obsidian.png"},
	"Obsidian",
	simplyslopes.stone)

simplyslopes.register_all("stonebrick", "default:stonebrick",
	{cracky=2,stone=1, not_in_craft_guide=1},
	{"default_stone_brick.png"},
	"Stone Brick",
	simplyslopes.stone)

simplyslopes.register_all("desert_stonebrick", "default:desert_stonebrick",
	{cracky = 3, not_in_craft_guide=1},
	{"default_desert_stone_brick.png"},
	"Desert Stone Brick",
	simplyslopes.stone)

simplyslopes.register_all("obsidian_brick", "default:obsidianbrick",
	{cracky=1,level=3, unbreakable=1, not_in_craft_guide=1},
	{"default_obsidian_brick.png"},
	"Obsidian Brick",
	simplyslopes.stone)

--= Farming Mod
if minetest.get_modpath("farming") then

simplyslopes.register_all("straw", "farming:straw",
	{snappy = 3, flammable = 4, not_in_craft_guide = 1},
	{"farming_straw.png"},
	"Straw",
	simplyslopes.leaves)

end

--= Mobs Mod

if mobs and mobs.mod and mobs.mod == "redo" then

grp = {crumbly = 3, flammable = 2, not_in_craft_guide = 1}

simplyslopes.register_all("cheeseblock", "mobs:cheeseblock",
	grp,
	{"mobs_cheeseblock.png"},
	"Cheese Block",
	simplyslopes.dirt)

simplyslopes.register_all("honey_block", "mobs:honey_block",
	grp,
	{"mobs_honey_block.png"},
	"Honey Block",
	simplyslopes.dirt)

end

--= Lapis Mod

if minetest.get_modpath("lapis") then

grp = {cracky = 3, not_in_craft_guide = 1}

simplyslopes.register_all("lapis", "lapis:lapisblock",
	grp,
	{"lapis_block.png"},
	"Lapis",
	simplyslopes.stone)

simplyslopes.register_all("lapis_brick", "lapis:lapis_brick",
	grp,
	{"lapis_brick.png"},
	"Lapis Brick",
	simplyslopes.stone)

simplyslopes.register_all("lapis_cobble", "lapis:lapis_cobble",
	grp,
	{"lapis_cobble.png"},
	"Lapis Cobble",
	simplyslopes.stone)

simplyslopes.register_all("lazurite", "lapis:lazurite",
	grp,
	{"lapis_lazurite.png"},
	"Lazurite",
	simplyslopes.stone)

simplyslopes.register_all("lazurite_brick", "lapis:lazurite_brick",
	grp,
	{"lapis_lazurite_brick.png"},
	"Lazurite Brick",
	simplyslopes.stone)

end

--= Homedecor Mod

if minetest.get_modpath("homedecor") then

local grp = {snappy = 3}

simplyslopes.register_all("shingles_asphalt", "homedecor:shingles_asphalt",
	grp,
	{"homedecor_shingles_asphalt.png"},
	"Asphalt Shingle",
	simplyslopes.leaves)

simplyslopes.register_all("shingles_terracotta", "homedecor:roof_tile_terracotta",
	grp,
	{"homedecor_shingles_terracotta.png"},
	"Terracotta Shingle",
	simplyslopes.leaves)

simplyslopes.register_all("shingles_wood", "homedecor:shingles_wood",
	grp,
	{"homedecor_shingles_wood.png"},
	"Wooden Shingle",
	simplyslopes.leaves)

end

--= Xanadu Mod

if minetest.get_modpath("xanadu") then

grp = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, not_in_craft_guide = 1}

minetest.register_alias("simplyslopes:slope_stained_wood_brown", "simplyslopes:slope_junglewood")
minetest.register_alias("simplyslopes:slopeinsidecorner_stained_wood_brown", "simplyslopes:slopeinsidecorner_junglewood")
minetest.register_alias("simplyslopes:slopecorner_stained_wood_brown", "simplyslopes:slopecorner_junglewood")

simplyslopes.register_all("stained_wood_white", "xanadu:stained_wood_white",
	grp,
	{"stained_wood_white.png"},
	"White Wooden",
	simplyslopes.wood)

minetest.register_alias("simplyslopes:slope_stained_wood_pink", "simplyslopes:slope_acacia_wood")
minetest.register_alias("simplyslopes:slopeinsidecorner_stained_wood_pink", "simplyslopes:slopeinsidecorner_acacia_wood")
minetest.register_alias("simplyslopes:slopecorner_stained_wood_pink", "simplyslopes:slopecorner_acacia_wood")

slopes.register_all("stained_wood_red", "xanadu:stained_wood_red",
	grp,
	{"stained_wood_red.png"},
	"Red Wooden",
	simplyslopes.wood)


grp = {cracky = 3, not_in_craft_guide = 1}

simplyslopes.register_all("stone1", "bakedclay:stone1",
	grp,
	{"stone1.png"},
	"Decorative Stone 1",
	simplyslopes.stone)

simplyslopes.register_all("stone2", "bakedclay:stone2",
	grp,
	{"stone2.png"},
	"Decorative Stone 2",
	simplyslopes.stone)

simplyslopes.register_all("stone3", "bakedclay:stone3",
	grp,
	{"stone3.png"},
	"Decorative Stone 3",
	simplyslopes.stone)

simplyslopes.register_all("stone4", "bakedclay:stone4",
	grp,
	{"stone4.png"},
	"Decorative Stone 4",
	simplyslopes.stone)

simplyslopes.register_all("stone5", "bakedclay:stone5",
	grp,
	{"stone5.png"},
	"Decorative Stone 5",
	simplyslopes.stone)

simplyslopes.register_all("stone6", "bakedclay:stone6",
	grp,
	{"stone6.png"},
	"Decorative Stone 6",
	simplyslopes.stone)

simplyslopes.register_all("sandstonebrick4", "bakedclay:sandstonebrick4",
	grp,
	{"sandstonebrick4.png"},
	"Decorative Sandstone 4",
	simplyslopes.stone)

simplyslopes.register_slab("desert_cobble1", "bakedclay:desert_cobble1",
	grp,
	{"desert_cobble1.png"},
	"Decorative desert cobble 1",
	simplyslopes.stone)

simplyslopes.register_slab("desert_cobble5", "bakedclay:desert_cobble5",
	grp,
	{"desert_cobble5.png"},
	"Decorative desert cobble 5",
	simplyslopes.stone)

simplyslopes.register_slab("desert_stone1", "bakedclay:desert_stone1",
	grp,
	{"desert_stone1.png"},
	"Decorative desert stone 1",
	simplyslopes.stone)

simplyslopes.register_slab("desert_stone3", "bakedclay:desert_stone3",
	grp,
	{"desert_stone3.png"},
	"Decorative desert stone 3",
	simplyslopes.stone)

simplyslopes.register_slab("desert_stone4", "bakedclay:desert_stone4",
	grp,
	{"desert_stone4.png"},
	"Decorative desert stone 4",
	simplyslopes.stone)

simplyslopes.register_slab("desert_stone5", "bakedclay:desert_stone5",
	grp,
	{"desert_stone5.png"},
	"Decorative desert stone 5",
	simplyslopes.stone)
simplyslopes.register_slab("red1", "bakedclay:red1",
	grp,
	{"baked_clay_red1.png"},
	"Decorative baked red clay 1",
	simplyslopes.stone)

simplyslopes.register_all("bred2", "bakedclay:red2",
	grp,
	{"baked_clay_red2.png"},
	"Decorative baked red clay 2",
	simplyslopes.stone)

end


--= Baked Clay mod
if minetest.get_modpath("bakedclay") then






grp = {cracky = 3, not_in_craft_guide = 1}

simplyslopes.register_all("bakedclay_white", "bakedclay:white",
	grp,
	{"baked_clay_white.png"},
	"Baked Clay White",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_grey", "bakedclay:grey",
	grp,
	{"baked_clay_grey.png"},
	"Baked Clay Grey",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_black", "bakedclay:black",
	grp,
	{"baked_clay_black.png"},
	"Baked Clay Black",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_red", "bakedclay:red",
	grp,
	{"baked_clay_red.png"},
	"Baked Clay Red",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_yellow", "bakedclay:yellow",
	grp,
	{"baked_clay_yellow.png"},
	"Baked Clay Yellow",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_green", "bakedclay:green",
	grp,
	{"baked_clay_green.png"},
	"Baked Clay Green",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_cyan", "bakedclay:cyan",
	grp,
	{"baked_clay_cyan.png"},
	"Baked Clay Cyan",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_blue", "bakedclay:blue",
	grp,
	{"baked_clay_blue.png"},
	"Baked Clay Blue",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_magenta", "bakedclay:magenta",
	grp,
	{"baked_clay_magenta.png"},
	"Baked Clay Magenta",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_orange", "bakedclay:orange",
	grp,
	{"baked_clay_orange.png"},
	"Baked Clay Orange",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_violet", "bakedclay:violet",
	grp,
	{"baked_clay_violet.png"},
	"Baked Clay Violet",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_brown", "bakedclay:brown",
	grp,
	{"baked_clay_brown.png"},
	"Baked Clay Brown",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_pink", "bakedclay:pink",
	grp,
	{"baked_clay_pink.png"},
	"Baked Clay Pink",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_dark_grey", "bakedclay:dark_grey",
	grp,
	{"baked_clay_dark_grey.png"},
	"Baked Clay Dark Grey",
	simplyslopes.stone)

simplyslopes.register_all("bakedclay_dark_green", "bakedclay:dark_green",
	grp,
	{"baked_clay_dark_green.png"},
	"Baked Clay Dark Green",
	simplyslopes.stone)

end

--= Castle Mod

if minetest.get_modpath("castle") then

simplyslopes.register_all("pavement", "castle:pavement",
	{cracky=2, not_in_craft_guide=1},
	{"castle_pavement_brick.png"},
	"Paving",
	simplyslopes.stone)

simplyslopes.register_all("dungeon_stone", "castle:dungeon_stone",
	{cracky=2, not_in_craft_guide=1},
	{"castle_dungeon_stone.png"},
	"Dungeon",
	simplyslopes.stone)

simplyslopes.register_all("stonewall", "castle:stonewall",
	{cracky=3, not_in_craft_guide=1},
	{"castle_stonewall.png"},
	"Castle Wall",
	simplyslopes.stone)

end

--= Ethereal Mod

if minetest.get_modpath("ethereal") then

simplyslopes.register_all("bamboo_floor", "ethereal:bamboo_floor",
	{snappy = 3, choppy = 3 , flammable=2, not_in_craft_guide=1},
	{"bamboo_floor.png"},
	"Bamboo",
	simplyslopes.wood)

simplyslopes.register_all("crystal_block", "ethereal:crystal_block",
	{cracky=1, level=2, not_in_craft_guide=1},
	{"crystal_block.png"},
	"Crystal Block",
	simplyslopes.glass)

simplyslopes.register_all("icebrick", "ethereal:icebrick",
	{crumbly=3, melts = 1, not_in_craft_guide=1},
	{"brick_ice.png"},
	"Ice Brick",
	simplyslopes.glass)
		
simplyslopes.register_all("snowbrick", "ethereal:snowbrick",
	{crumbly=3, melts = 1, not_in_craft_guide=1},
	{"brick_snow.png"},
	"Snow Brick",
	default.node_sound_dirt_defaults({
		footstep = {name="default_snow_footstep", gain=0.25},
		dug = {name="default_snow_footstep", gain=0.75},
	}))

simplyslopes.register_all("dry_dirt", "ethereal:dry_dirt",
	{crumbly=3, not_in_craft_guide=1},
	{"ethereal_dry_dirt.png"},
	"Dry Dirt",
	simplyslopes.dirt)

simplyslopes.register_all("mushroom_trunk", "ethereal:mushroom_trunk",
	{choppy=2,oddly_breakable_by_hand=1,flammable=2, not_in_craft_guide=1},
	{"mushroom_trunk.png"},
	"Mushroom Trunk",
	simplyslopes.wood)

simplyslopes.register_all("mushroom", "ethereal:mushroom",
	{choppy=2,oddly_breakable_by_hand=1,flammable=2, not_in_craft_guide=1},
	{"mushroom_block.png"},
	"Mushroom Top",
	simplyslopes.wood)

simplyslopes.register_all("frost_wood", "ethereal:frost_wood",
	{choppy=2,oddly_breakable_by_hand=1,put_out_fire=1, not_in_craft_guide=1},
	{"frost_wood.png"},
	"Frost Wood",
	simplyslopes.wood)

simplyslopes.register_all("yellow_wood", "ethereal:yellow_wood",
	{choppy=2,oddly_breakable_by_hand=1,put_out_fire=1, not_in_craft_guide=1},
	{"yellow_wood.png"},
	"Healing Tree Wood",
	simplyslopes.wood)

simplyslopes.register_all("palm_wood", "ethereal:palm_wood",
	{choppy=2,oddly_breakable_by_hand=1,flammable=3, not_in_craft_guide=1},
	{"moretrees_palm_wood.png"},
	"Palm Wood",
	simplyslopes.wood)

simplyslopes.register_all("banana_wood", "ethereal:banana_wood",
	{choppy=2,oddly_breakable_by_hand=1,flammable=3, not_in_craft_guide=1},
	{"banana_wood.png"},
	"Banana Wood",
	simplyslopes.wood)

simplyslopes.register_all("willow_wood", "ethereal:willow_wood",
	{choppy=2,oddly_breakable_by_hand=1,flammable=3, not_in_craft_guide=1},
	{"willow_wood.png"},
	"Willow Wood",
	simplyslopes.wood)

simplyslopes.register_all("redwood_wood", "ethereal:redwood_wood",
	{choppy=2,oddly_breakable_by_hand=1,flammable=3, not_in_craft_guide=1},
	{"redwood_wood.png"},
	"Redwood Wood",
	simplyslopes.wood)

simplyslopes.register_all("acacia_wood", "ethereal:acacia_wood",
	{choppy=2,oddly_breakable_by_hand=1,flammable=3, not_in_craft_guide=1},
	{"moretrees_acacia_wood.png"},
	"Acacia Wood",
	simplyslopes.wood)

end

--= Wool Mod

if minetest.get_modpath("wool") then

grp = {
	snappy = 2, choppy = 2, oddly_breakable_by_hand = 3, flammable = 3,
	wool = 1, not_in_craft_guide = 1
}

simplyslopes.register_all("wool_white", "wool:white",
	grp,
	{"wool_white.png"},
	"White Wool",
	simplyslopes.wool)

simplyslopes.register_all("wool_grey", "wool:grey",
	grp,
	{"wool_grey.png"},
	"Grey Wool",
	simplyslopes.wool)

simplyslopes.register_all("wool_black", "wool:black",
	grp,
	{"wool_black.png"},
	"Black Wool",
	simplyslopes.wool)

simplyslopes.register_all("wool_red", "wool:red",
	grp,
	{"wool_red.png"},
	"Red Wool",
	simplyslopes.wool)

simplyslopes.register_all("wool_yellow", "wool:yellow",
	grp,
	{"wool_yellow.png"},
	"Yellow Wool",
	simplyslopes.wool)

simplyslopes.register_all("wool_green", "wool:green",
	grp,
	{"wool_green.png"},
	"Green Wool", 
	simplyslopes.wool)

simplyslopes.register_all("wool_cyan", "wool:cyan",
	grp,
	{"wool_cyan.png"},
	"Cyan Wool", 
	simplyslopes.wool)

simplyslopes.register_all("wool_blue", "wool:blue",
	grp,
	{"wool_blue.png"},
	"Blue Wool", 
	simplyslopes.wool)

simplyslopes.register_all("wool_magenta", "wool:magenta",
	grp,
	{"wool_magenta.png"},
	"Magenta Wool", 
	simplyslopes.wool)

simplyslopes.register_all("wool_orange", "wool:orange",
	grp,
	{"wool_orange.png"},
	"Orange Wool",
	simplyslopes.wool)

simplyslopes.register_all("wool_violet", "wool:violet",
	grp,
	{"wool_violet.png"},
	"Violet Wool",
	simplyslopes.wool)

simplyslopes.register_all("wool_brown", "wool:brown",
	grp,
	{"wool_brown.png"},
	"Brown Wool",
	simplyslopes.wool)

simplyslopes.register_all("wool_pink", "wool:pink",
	grp,
	{"wool_pink.png"},
	"Pink Wool",
	simplyslopes.wool)

simplyslopes.register_all("wool_dark_grey", "wool:dark_grey",
	grp,
	{"wool_dark_grey.png"},
	"Dark Grey Wool", 
	simplyslopes.wool)

simplyslopes.register_all("wool_dark_green", "wool:dark_green",
	grp,
	{"wool_dark_green.png"},
	"Dark Green Wool", 
	simplyslopes.wool)

end

print ("[MOD] SimplySlopes loaded")
