/**
 * Functions related to registering suppliers
 */

//Create the Dive namespace DVE
if (DP.DVE == null || typeof(DP.DVE) != "object") { DP.DVE = new Object();}

DP.DVE = {

	/**
	 * Get the location of the current user to populate Geolocation data
	 */
	 
	initLocation: function() {
        
        /* TODO: on click of Get current location link, show the loader and get location */
		$('#location-loading').show();
		navigator.geolocation.getCurrentPosition(applyLocation);
		
		function applyLocation(location) {
		    $('#LogLongitude').val(location.coords.longitude);
		    $('#LogLatitude').val(location.coords.latitude);
		    //alert('Latitude:' + location.coords.latitude + ', Longitude: ' + location.coords.longitude + ', Accuracy: ' + location.coords.accuracy);
			$('#location-loading').hide();
		}

	},
	
	/**
	 * Initiate the stars selection pickers for the reviews system
	 * Uses jquery stars
	 */
	initStars: function() {

		$(".stars").stars({
			inputType: "select"
		});
			
	},

	/**
	 * Initiate the stars jQuery UI display for only showing stars, not selecting them
	 * Uses jquery stars
	 */
	initStarsShow: function() {

		$(".starsShow").stars({
			inputType: "select",
			disabled: true
		});
			
	},
	
};

$(document).ready(function(){
	DP.DVE.initLocation();
	DP.DVE.initStars();
	DP.DVE.initStarsShow();
});
