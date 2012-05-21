# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
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
		
