#= require jquery.cookie

$ ->
  $projs = $(".projects-well .btn")
  selectProj = (id) ->
    $projs.removeClass("primary")
    $projs.filter($("*[rel=\"#{id}\"]")).addClass("primary")
    $.cookie('proj', id)
  val = $.cookie('proj') || 0
  selectProj(val)
  $projs.click(->
    selectProj($(this).attr("rel"))
    document.location.reload()
  )
