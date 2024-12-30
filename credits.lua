
local titles = {

	{ "The idea, game design, creation, music - Mary Voit", style = 1 },
	{},
	{ "2D Graphic design - Maria Mospan" },
	{ "Troubleshooting - Elliott Sebag" },
	{ "RPG map - RPG Maker MV" },
	{ "FreeSound (https://freesound.org/) credits:" },
	{ "Door, Front, Opening, A.wav - InspectorJ" },
	{ "iamazerrad - Crowd Noise Calming down.wav" },
	{ "Darius Kedros - rattle, shake, vibrate" },
	{ "burkay -AlienComputer" },
	{ "Wakerone - Claps Few People" },
	{ "husky70 - Grumpy Old Man" },
	{ "steinhyrningur - Door closing, door closed" },
	{ "itinerantmonk108 - Down the stairs" },
	{ "UNIVERSFIELD - Emergence" },
	{ "soundslikewillem - 02 Elevator DOWN" },
	{ "Sami Hiltunen - Creepy Cave Ambient" },
	{ "szegvari - Dark Cave Factory Atmo" },
	{ "Phlair - Dungeon Ambiance" },
	{ "Pascal Campion - background image" },
	{ "Game made wich INSTEAD engine (https://instead.hugeping.ru/en/" },

	{ "ДРУГОЙ МАРС", style = 1 },
	{},
	{ "История и код:", style = 2 },
	{ "Пётр Косых" },
}
function anim(name)
	if not gfx_mode then
		return
	end
	anim_fn = name
	if not name then
		D()
		timer:stop()
		return
	end
	_G["anim_" .. name]()
end

global("anim_fn")(false)
declare("anim_titles")(function()
	timer:set(50)
	D({ "logo", "img", "pic/bg0.png", x = 0, y = 0, z = 1 })
end)
declare("move_up")(function(v)
	-- if _'titles'.finish then return end
	v.y = v.y - 1
	if v.y + v.h < 0 then
		D({ v.name }) -- purge it
	end
end)
room({
	nam = "credits",
	title = false,
	dsc = function(s)
		if gfx_mode then
			return true
		end
		for _, v in ipairs(titles) do
			pn(fmt.c(v[1]))
		end
		pn(fmt.c("^Полную версию игры ищите на https://instead.itch.io/mars"))
	end,
	noparser = true,
	{
		finish = false,
		offset = 0,
		pos = 1,
		line = titles[1],
		ww = 0,
		hh = 0,
		font = false,
		font_height = 0,
		w = 0,
		h = 0,
	},
	ini = function(s)
		if here() == s then
			s:enter()
		end
	end,
	enter = function(s)
		if not gfx_mode then
			return
		end
		s.font_height = 18
		s.w, s.h = std.tonum(theme.get("scr.w")), std.tonum(theme.get("scr.h"))
		D()
		anim("titles")
		-- fading.set {"fadeblack", max = 50 }
	end,
	timer = function(s)
		local last = "text" .. tostring(#titles)
		if D(last) then
			if not D("mars") then
				D({
					"mars",
					"img",
					"gfx/mars2.png",
					x = theme.scr.w() / 2,
					xc = true,
					y = -256,
					yc = true,
					z = 2,
					process = move_down,
				})
			end
			if D(last).y <= 8 then
				s.finish = true
			end
			return false
		end
		s.offset = s.offset + 1
		s.pos = math.floor(s.offset / s.font_height)
		if s.pos > #titles or s.pos < 1 then
			return false
		end
		if D("text" .. tostring(s.pos)) or not titles[s.pos][1] then
			return false
		end
		D({
			"text" .. tostring(s.pos),
			"txt",
			titles[s.pos][1],
			w = theme.scr.w() - 260,
			x = 450,
			xc = false,
			y = theme.scr.h(),
			process = move_up,
			z = 1,
			style = titles[s.pos].style,
			size = 16,
		})
		return false
	end,
})
