require("timer")
require("fmt")
require("keys")
fmt.para = true

local text = [[
^
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu turpis ut libero mattis suscipit. In rhoncus venenatis magna id maximus. Aenean tempus lectus mi. Morbi auctor nisl nec nisi finibus, nec molestie massa iaculis. Morbi sollicitudin dolor eu odio tincidunt rhoncus. Fusce varius vel ante eu finibus. Vestibulum vitae ligula vitae dolor ultrices lobortis. Nunc eleifend sollicitudin ipsum laoreet pretium. Donec interdum imperdiet pulvinar. Mauris ornare orci neque, sit amet congue eros aliquam at.
^^
Mauris et lacus a turpis blandit luctus et at sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ac quam at ligula dictum ultrices nec vitae elit. Quisque sit amet turpis nec est pellentesque finibus a ut tellus. In id ex sit amet velit aliquam condimentum. Proin pharetra lectus sapien, in commodo leo volutpat varius. Nullam tempus ipsum non nulla dignissim, id fringilla massa dapibus.
^
Nullam porta turpis sit amet metus dignissim hendrerit. Suspendisse vestibulum, odio eu rhoncus blandit, nunc ante congue felis, sed ornare sapien nisl fringilla massa. Duis eleifend lectus non urna vulputate mattis. Nullam euismod lacus a sem lacinia laoreet. Fusce molestie luctus lacus, eu vehicula nisl imperdiet vitae. Fusce rutrum placerat urna, ut elementum enim blandit id. Praesent elementum varius tellus at pharetra.
^
Donec vitae risus lorem. Suspendisse potenti. Nam hendrerit tortor eget libero vulputate, eu volutpat erat dictum. Ut maximus vulputate diam, sit amet vestibulum est porttitor eget. Sed in ornare orci, eget tristique lorem. Donec quis dapibus risus. In in dolor eget magna rhoncus posuere. In dictum turpis ac efficitur mattis. Aenean lacus urna, tincidunt placerat elit et, pharetra tristique ligula. Quisque quis arcu at enim tincidunt lacinia. Quisque id semper libero, eu suscipit augue. Sed gravida purus sem, sit amet imperdiet lorem pharetra in. Mauris gravida facilisis dictum. Duis eu risus nisl.
^^
Quisque arcu elit, tincidunt eu metus eu, pretium ultrices est. Fusce at dui urna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec ac quam fermentum, rutrum lacus ac, pulvinar justo. Curabitur sit amet ultricies elit, sed luctus ipsum. Donec lobortis, est vel dignissim hendrerit, nisi orci facilisis erat, nec efficitur massa urna hendrerit eros. Phasellus at diam quam.
^^
Aenean in euismod eros, sed porta lectus. Suspendisse vehicula porta elementum. Suspendisse ut purus vehicula, consequat turpis in, lacinia tortor. Curabitur quam ante, vestibulum sed pretium vel, molestie at dui. Vivamus tempor arcu non ipsum accumsan venenatis. Maecenas lectus velit, tincidunt vitae consequat eu, fringilla quis mi. Mauris magna nisl, mattis viverra quam non, pellentesque facilisis mi. Sed ultricies lorem ut laoreet luctus. Nam rhoncus magna at nisl ultrices, ac eleifend enim cursus. Morbi et justo turpis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc vitae elementum enim. Curabitur bibendum nulla sed nibh hendrerit, vel sodales dui molestie.
^^
Pellentesque iaculis, magna et vestibulum mattis, dolor leo tincidunt purus, sit amet vehicula augue mauris eu arcu. Pellentesque facilisis convallis elit, at blandit velit scelerisque id. Ut quis tempus enim. Sed maximus eget lectus vel imperdiet. Etiam blandit est eget dui convallis, quis lacinia enim efficitur. Nullam massa ipsum, congue non molestie ullamcorper, feugiat eget neque. Curabitur molestie lacinia nunc id vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer finibus lobortis eros quis faucibus. Sed vel sagittis tortor, sodales iaculis tortor. Vestibulum fermentum malesuada sem id aliquet. Etiam sollicitudin fringilla finibus. Duis ultrices mattis fringilla.
^^
Fusce ullamcorper volutpat dolor sit amet ultricies. Pellentesque sed ipsum bibendum, cursus arcu sed, dapibus est. Cras sed libero arcu. In at libero interdum, congue ligula nec, dignissim urna. Integer at sem blandit, faucibus nisi eu, scelerisque quam. Praesent bibendum imperdiet enim in porta. Suspendisse urna sem, tristique non eleifend a, fringilla eu neque. Quisque ut ullamcorper magna, in posuere lorem. Phasellus in magna in mi porttitor varius vel id enim. Proin sed ultrices velit, in tempus libero. Suspendisse placerat enim et libero aliquet facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum id facilisis erat, id suscipit turpis. Donec quis nisl a massa tempor facilisis. Aenean sodales urna at interdum pellentesque.
^^
Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer at tincidunt mauris. Aenean ac posuere neque, vel ullamcorper tortor. Morbi tempus tortor ut urna tempor tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi luctus fringilla venenatis. Maecenas scelerisque orci sit amet libero pellentesque malesuada. Nulla facilisi. Fusce congue, diam quis varius fermentum, mi nisi vulputate ipsum, quis congue turpis nisi tempus mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nulla tristique iaculis tincidunt. Phasellus in eros a nisi pellentesque tempor sed ut odio. Nam sit amet rhoncus metus. Nulla sed gravida turpis. Cras at diam eget lorem tristique vestibulum elementum non nisi.
^^
Ut auctor consectetur sollicitudin. Pellentesque ac erat nulla. Nunc sit amet eros ultricies, cursus tellus quis, auctor nulla. Ut fermentum turpis est, id aliquam augue porta cursus. Donec vitae mattis neque, eu volutpat metus. Morbi at faucibus diam. Vivamus nisl enim, dapibus vel sollicitudin nec, vestibulum ut justo. In porttitor ex et elit hendrerit facilisis. Donec posuere magna non sapien efficitur, ac luctus justo eleifend. Praesent condimentum nulla lorem, sit amet viverra tortor aliquam ut. Cras ut turpis ullamcorper, efficitur dui quis, finibus metus.
^^
Phasellus viverra velit rhoncus, porta est quis, pretium nunc. Suspendisse tempus fermentum diam, vel vestibulum massa porttitor non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec rutrum commodo odio eu rutrum. Sed velit lorem, auctor et nulla dignissim, luctus consectetur massa. Duis ornare leo eget eros varius auctor. Praesent fermentum felis dolor, sit amet consectetur metus consectetur in.
^^
Vestibulum tincidunt odio sed magna porta eleifend sollicitudin a tellus. Sed ultrices pellentesque laoreet. Suspendisse efficitur, tellus ut laoreet varius, ipsum risus pellentesque elit, sed vestibulum enim lectus et ex. Nunc pretium iaculis ex sit amet rutrum. Duis at ex non orci feugiat dapibus at vestibulum nibh. Sed suscipit dui varius nulla malesuada vulputate. Donec est massa, semper a urna at, egestas pellentesque diam. Sed elementum convallis convallis. Donec justo metus, posuere lacinia nibh at, fermentum malesuada arcu. Vivamus commodo dolor sed sem commodo elementum. Etiam placerat tincidunt quam. Pellentesque ut erat massa.
^^
Praesent nec tempor ligula. Nam elementum turpis ut feugiat ornare. Pellentesque eu risus id nibh mollis pharetra. Aenean at diam enim. Vivamus quis arcu ullamcorper, lobortis eros eu, sollicitudin sapien. Quisque et malesuada ipsum. Vivamus sed odio in urna tristique faucibus. Maecenas ac arcu justo. Ut viverra sagittis diam. Maecenas gravida urna sed orci blandit, eget molestie magna ullamcorper. Sed mattis, felis ut maximus euismod, turpis magna bibendum lectus, quis ullamcorper ex risus sit amet lacus. Praesent faucibus id justo eleifend scelerisque. Maecenas suscipit semper lobortis. In vel sodales eros.
^^
Duis gravida tortor nec massa interdum, in sollicitudin nulla egestas. Ut a ante sit amet ipsum posuere eleifend. Vivamus ullamcorper vehicula rhoncus. Donec id lobortis mauris, ac imperdiet mauris. Phasellus pellentesque sodales enim rutrum accumsan. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin eget enim ut libero tempor varius. Sed eros nibh, facilisis vel sagittis nec, tempor sit amet massa. Pellentesque eget fringilla risus, vestibulum tempus urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
^^
Ut at volutpat quam. Morbi cursus massa at elit condimentum semper. Nam rhoncus quis tellus non placerat. Quisque sed nulla orci. Ut metus eros, finibus eu aliquet sed, eleifend vel leo. Morbi sed aliquet magna. Vivamus viverra arcu justo, euismod pharetra felis mattis in. Aenean quis tellus rhoncus, vulputate est sit amet, facilisis tellus. Vestibulum at lobortis dolor. Morbi odio mi, fermentum non semper in, faucibus vitae sapien. Pellentesque volutpat dignissim elit id fringilla. Nam laoreet, dui vel porta hendrerit, quam nibh mollis erat, in posuere ligula ex eu ipsum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis nec odio ut nulla rhoncus maximus. Fusce id luctus nisi. ]]

room({
	nam = "main",
	disp = "Start",
	way = { "Lorem Ipsum" },
})

room({
	pic = "bg0.png",
	nam = "Lorem Ipsum",
	disp = "Lorem Ipsum",
	{
		letter_mark = 0,
		disp_text = [[]],
	},
	enter = function(s)
		ways():close()
		timer:set(30)
	end,
	dsp = function(s)
		if s.letter_mark < string.len(text) then
			s.letter_mark = s.letter_mark + 1
			s.disp_text = s.disp_text .. string.sub(text, s.letter_mark, s.letter_mark)
			p(s.disp_text)
		else
			p(s.disp_text)
			ways():open()
			timer:stop()
		end
	end,
	timer = function(s)
		s:dsp()
	end,
	way = { "main" },
})
