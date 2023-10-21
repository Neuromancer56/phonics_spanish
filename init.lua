language = "phonics_spanish"
write_command ="escriba"
phonics = {
	a={name="a", length=.65, gain=1, also_silent=0},
	au={name="au", length=.6, gain=1, also_silent=0}, 
	b={name="b", length=.35, gain=1, also_silent=0},	
	c={name="c", length=.65, gain=1, also_silent=0},	
	ch={name="ch", length=.17, gain=1, also_silent=0},
	d={name="d", length=.77, gain=1, also_silent=0},
	e={name="e", length=.5, gain=1, also_silent=0},	
	f={name="f", length=.7, gain=1, also_silent=0},
	g={name="g", length=.14, gain=1, also_silent=0},
	h={name="h", length=.0, gain=0, also_silent=0},
	i={name="i", length=.64, gain=1, also_silent=1},  --  silent for viente?
	j={name="j", length=.48, gain=1, also_silent=0},	
	k={name="k", length=.3, gain=1, also_silent=0},	
	l={name="l", length=.65, gain=1, also_silent=0},
	ll={name="ll", length=.20, gain=1, also_silent=0},	--used javanese text 
	m={name="m", length=.65, gain=1, also_silent=0},
	n={name="n", length=.65, gain=1, also_silent=0},	
 	--_n={name="~n", length=.17, gain=50, also_silent=0},  --***need sound & length
	_n={name="~n", length=1.87, gain=50, also_silent=0},  --***need sound & length
	o={name="o", length=.65, gain=1, also_silent=0},
	p={name="p", length=.35, gain=1, also_silent=0},	
	q={name="q", length=.3, gain=1, also_silent=0},	
	r={name="r", length=.65, gain=1, also_silent=0},
	rr={name="rr", length=.47, gain=1, also_silent=0},	--should use tahoma 16
	s={name="s", length=.65, gain=1, also_silent=0},
	t={name="t", length=.3, gain=1, also_silent=0},	
	u={name="u",length=.65, gain=1, also_silent=1},	-- silent for aqui	
	v={name="v", length=.65, gain=1, also_silent=0},   --sometimes makes makes a sound like a v or halfway between a "v" & a "b"
	w={name="w", length=.45, gain=1, also_silent=0},	
	x={name="x", length=.6, gain=1, also_silent=0},  
	y={name="y", length=.84, gain=1, also_silent=0},			
	z={name="z", length=.65, gain=1, also_silent=0}
}

two_char_phonics = {
	au= {name="au"},
	ch= {name="ch"},
	ll= {name="ll"},
	rr= {name="rr"}	
}

three_char_phonics = {
	--ing= {name="ing"}
}

phonics_scarcity = tonumber(minetest.settings:get("phonics_scarcity")) or 350
register_nodes(phonics, language, write_command)
register_ores(phonics, language,phonics_scarcity)

local dpath = minetest.get_modpath("phonics_spanish") .. "/"
dofile(dpath .. "crafting.lua")
print("Phonics Spanish Mod Loaded!")
 	--minetest.env:punch_node(pos) 
 	--minetest.env:dig_node(pos) 
 	--http://minetest.net/forum/viewtopic.php?id=2602
 	--https://c9.io/lkjoel/minetest-modder/workspace/parseme.txt
