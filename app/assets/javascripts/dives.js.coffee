//= require jquery-star-rating
//= require jquery-ui.min


jQuery ->

  $('#getLocation').click ->
    $('#location-loading').show()
    navigator.geolocation.getCurrentPosition applyLocation
    false
		
  applyLocation = (location) ->
    coords = location.coords
    $('#dive_longitude').val coords.longitude
    $('#dive_latitude').val coords.latitude
    # alert "Latitude: #{coords.latitude}, Longitude: #{coords.longitude}, Accuracy: #{coords.accuracy}"
    $('#location-loading').hide()
    
  $('#dive_date').datepicker()