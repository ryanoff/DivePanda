jQuery ->

  $('#edit-dives').click ->
    $('form#update_dives').toggle()
    return false
    
  $('#edit-time').click ->
    $('form#update_time').toggle()
    return false
    
    
  $('#update_dives').bind 'ajax:beforeSend' , ->
    $(this).find('.ajax-loader').show()

  $('#update_dives').bind 'ajax:success' , ->
    alert("Success!")
    
  $('#update_dives').bind 'ajax:complete' , ->
    $(this).find('.ajax-loader').hide()
    
  $('#update_dives').bind 'ajax:error' , ->
    $(this).find('.status').text('Error')
