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

  $brands = $(".brands-well .btn")
  selectBrand = (id) ->
    $brands.removeClass("primary")
    $brands.filter($("*[rel=\"#{id}\"]")).addClass("primary")
    $.cookie('brand', id)
  val = $.cookie('brand') || 0
  selectBrand(val)
  $brands.click(->
    selectBrand($(this).attr("rel"))
    document.location.reload()
  )

