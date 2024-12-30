-- $Name:POLYKATOIKIA$
-- $Name(ru):POLYKATOIKIA$
-- dofile("../../stead/stead3/stead.lua")

require("fmt")
require("snd")

local gfx_mode = std.ref("@sprite").scr()

if gfx_mode then
	require("decor")
	require("fading")
else
	declare("fading")({
		set = function() end,
	})
	function D() end
end

include("gfx")

include("credits")

xact.walk = walk


room({
	nam = "main",
	title = "",
	dsc = fmt.c("{@ walk intro1|START GAME}") .. "^^" .. fmt.c("{@ walk credits|Credits}"),
	pic = "pic/title.png",
	enter = function()
		snd.music("mus/musictheme.mp3")
	end,
})

room({
	nam = "intro1",
	title = "Mirsini's Diary",
	dsc = [[
	March 11, 2020^ Today an incident happened that just turned my life upside down! Because of the coronovirus, all schools in Greece have closed. Which means that I now have to stay at home, within the four walls of our Athens apartment, with my parents and my little brother. I am 14 years old! What about freedom, meeting friends and geting out, you know?

	]],
	pic = "pic/intro_mirsini.png",
	enter = function()
		--snd.stop_music()
	end,
})
