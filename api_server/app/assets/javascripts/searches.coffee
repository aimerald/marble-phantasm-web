$ ->
  puts = (s) ->
    console.log s
    
  field = $("#search_word")
  field.keyup((e) ->
    q = $(@).val()

    $.post("/searches/result",{
      q: q
      },(data)->
        puts(data)
    )
  )
