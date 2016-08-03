$ ->
	puts = (s) ->
		console.log s
	

	w = $(window)
	ws = [w.width(), w.height()]
	world = $("#the_world")
	ms = $("#main_content")
	mcwh = [ms.width(), ms.height()]

	header = $("nav")
	header.css({
		background: "none"
	})

	set_windmill=(ws)->
		world.css({
			width: ws[0],
			height: ws[1],
			"z-index": 66
		})
		
		for i in [1..4]
			lef = 18
			$("#windmill_#{i}").css({
				left: "#{lef * i}%"
			})
		

	for i in [0..120]
		star_position_top = (Math.floor( Math.random() * ws[1]))
		star_position_left = Math.floor( Math.random() * ws[0])
		world.append("<div class='star' style='top: #{star_position_top}px; left: #{star_position_left}px;'></div>")

	set_windmill(ws)
	
	#Resize
	w.resize(->
		rw = $(window)
		rws = [rw.width(), rw.height()]

		set_windmill(rws)
	)
