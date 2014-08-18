
// createMap



$(document).ready(function(){

   console.log("hai");
  $( "#accordion-wifi" ).accordion();
  $( "#accordion-group" ).accordion();
  console.log('Page reload!')
  
  // createConsole()
  // createMap() 
 




  var mapOptions, canvas, map;

  //Autocomplete /search variables
  var infowindow = new google.maps.InfoWindow();
  var marker = new google.maps.Marker({
      map: map //one on the left is our key(from the google api), the left one is our value
  });
  var input = $('#pac-input')[0];
  var searchBox = new google.maps.places.SearchBox(input);

  mapApp = {
    positionMarker: null, 
    initializeMap: function(){
      mapOptions = {
        zoom:8,
        center:new google.maps.LatLng(51.508742, -0.120850),
        mapTypeId:google.maps.MapTypeId.ROADMAP
      };
      canvas = $('#googleMap')[0];
      map = new google.maps.Map(canvas, mapOptions); //this line is pure JS
      // searchBox.bindTo('bounds', map);
      map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
    },
    autocomplete: function(){
      var place = searchBox.getPlaces()[0];
      debugger;
      if (place.geometry.viewport){
        map.fitBounds(place.geometry.viewport);
      }else{
        map.setCenter(place.geometry.location);
        map.setZoom(17);
      }
      marker.setIcon({
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(35, 35)
      });
      marker.setPosition(place.geometry.location);
      marker.setVisible(true);

      var address='';
      if (place.address_components){
        address = (place.address_components[0] && place.address_components[0].short_name || '')
      }
      infowindow.setContent('<div><strong' + place.name + '<strong><br>' + address + '</div>');
      infowindow.open(map, marker);
    },
    // directions: function(){
    //   var from = $('#directions_from').val();
    //   var to = $('#directions_to').val();
    //   var mode = $('#directions_mode').val();

    //   var request = {
    //     origin: from,
    //     destination: to,
    //     travelMode: google.maps.TravelMode[mode]
    //   }
    //   directionsService = new google.maps.DirectionsService();
    //   directionsDisplay = new google.maps.DirectionsRenderer();
    //   directionsDisplay.setMap(map);
    //   directionsService.route(request, function(response, status){
    //     if(status == google.maps.DirectionsStatus.OK){
    //       directionsDisplay.setDirections(response);
    //       $('#directions-panel').html();
    //       directionsDisplay.setPanel(document.getElementById('directions-panel'))
    //     }else{
    //       alert('Something went wrong');
    //     }
    //   })
    // },

    updateLocation: function(position){
      if(mapApp.positionMarker != null){
        mapApp.positionMarker.setMap(null)
      } 
      var coords = position.coords;
      console.log(coords)
      var latlng = new google.maps.LatLng(coords.latitude, coords.longitude);
      mapApp.positionMarker = new google.maps.Marker({
        position: latlng,
        map: map,
        title: 'You are here'
      })
      map.setCenter(latlng);
      map.setZoom(17);
    },

    handleLocationError: function(error){
      console.log(error);
    },

    geolocation: function(){
      navigator.geolocation.getCurrentPosition(mapApp.updateLocation, mapApp.handleLocationError);
    }
  }
  //Autocomplete event listener
  google.maps.event.addListener(searchBox, 'places_changed', function(){
    console.log("autocomplete")
    mapApp.autocomplete();
  })

  // //Directions events listener
  // $('#directions_form').on('submit', function(event){
  //   event.preventDefault();
  //   mapApp.directions();
  // })

  //Geolocation event listener;
  $('#current_position').on('click', function(){
    if(navigator.geolocation){
      mapApp.geolocation();
    }else{
      alert('Geolocation not available in this browser');
    }
  })

  //Code to add keystroke enter function

  mapApp.initializeMap();
})