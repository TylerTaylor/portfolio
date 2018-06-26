ready = undefined
set_positions = undefined

# grab the values and set the data-pos to a new id to keep track of position?
set_positions = ->
  $('.card-container').each (i) ->
    $(this).attr 'data-pos', i + 1
    return
  return

ready = ->
  set_positions()
  $('.sortable').sortable()
  $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
    updated_order = []
    set_positions()
    $('.card-container').each (i) ->
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return
    # communicate with rails
    $.ajax
      type: 'PUT'
      url: '/projects/sort'
      data: order: updated_order
    return
  return

$(document).ready ready