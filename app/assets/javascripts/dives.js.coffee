//= require jquery-star-rating
//= require jquery-ui.min
//= require jquery.timepicker.min


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
  $('#dive_starttime').timepicker({step: '10'})
  $('#dive_endtime').timepicker()

      
  $('#units').live 'change', () ->
    units = $('select#units option:selected').val();
    if units is "M" 
      $('.depth.add-on').text("Meters") 
      $('.temperature.add-on').text("°C")
      $('.weight.add-on').text("Kilograms")
    else 
      $('.depth.add-on').text("Feet")
      $('.temperature.add-on').text("°F")
      $('.weight.add-on').text("Pounds")
    