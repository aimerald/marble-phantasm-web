$ ->

	puts = (s) ->
		console.log s

	w = $(window)
	h = w.height()
	blur = $(".blur")
	sces = 3
	
	be_blur = (sces) ->
		blur.css({
			"-webkit-filter": "blur(#{sces}px)",
			"-ms-filter": "blur(#{sces}px)",
			"filter": "blur(#{sces}px)"
		})
	

	w.scroll(->
		sc = $(@).scrollTop()
		if sc < 66 && sces < 10
			sces += 0.666
		if sc == 0
			sces = 3
		be_blur(sces)
	)
