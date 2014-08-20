
// createMap

$(document).ready(function(){

  // Gwen's accordion code
  $( "#accordion-wifi" ).accordion();
  $( "#accordion-group" ).accordion();
 
  // Tom's accordion below

  var allPanels = $('.accordion > dd').hide();

  $('.accordion > dt > a').click(function() {
  allPanels.slideUp();
  $(this).parent().next().slideDown();
  return false;
  });

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

  // Trying to get wifi marker to appear

  //var wifiLatlng = new google.maps.LatLng(51.475434,-0.155789);

  var longP
  var latP

  
  //var locations = ["SW11 4EG", "NW1 0LE", "NW6 7AY", "SW6 2TQ"]
  
  var locations = $('#wifiarrays').data('postcode');

  var hoverWifiAll = $('#hoverId').data('wifiinfo')

  console.log(hoverWifiAll)

//   var len = hoverWifiAll.length
//   for (var i=0; i<len; ++i) {
//   if (i in hoverWifiAll) {
//     var s = hoverWifiAll[i];
//     console.log(s)
//   }
// } 

  // var hoverWifiSpecific = hoverWifiAll.forEach(function(postcode2){
  //   console.log(postcode2)
  // })

  //console.log(hoverWifiSpecific)
  //alert(hoverWifiAll['hash_postcode'][0]['postcode']); 
  //alert(hoverWifiAll.hash_postcde[0]['postcode']);    //style 2
  //alert(hoverWifiAll.hash_postcde[0].postcode);    //style 3

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
      map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
      var geocoder = new google.maps.Geocoder();
      $.each(window.markers_info, function(i, network){
        console.log(network)
        var string1 = network.business_name;
        var content = network.reviews;
        var string2 = content.toString(); 
        var string3 = network.share_scope;
        var stringConcatenated = string1 + string2; + string3;
        geocoder.geocode( {'address': network.postcode }, function(data, status) { 
          longP = data[0].geometry.location.B
          latP = data[0].geometry.location.k
          var found = new google.maps.LatLng(latP, longP)
          var wifimarker = new google.maps.Marker({
            position: found,
            map: map,
            title: stringConcatenated
          });
        });
      })
    },

  // var wifiLatlng1 = new google.maps.LatLng(51.475434,-0.155789);
  // var wifiLatlng2 = new google.maps.LatLng(51.565449,-0.01215)
  // var wifiLatlng3 = new google.maps.LatLng(51.536479,-0.136149)
  // var locations = []

  // locations.push(wifiLatlng1, wifiLatlng2, wifiLatlng3)

  // //array = [[51.475434,-0.155789],[51.565449,-0.01215],[51.536479,-0.136149]]
  // //

  // mapApp = {
  //   positionMarker: null, 
  //   initializeMap: function(){
  //     mapOptions = {
  //       zoom:8,
  //       center:new google.maps.LatLng(51.508742, -0.120850),
  //       mapTypeId:google.maps.MapTypeId.ROADMAP
  //     };
  //     canvas = $('#googleMap')[0];
  //     map = new google.maps.Map(canvas, mapOptions); //this line is pure JS
  //     // searchBox.bindTo('bounds', map);
  //     map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

  //     locations.forEach(function(markerpoint){
  //       var wifimarker = new google.maps.Marker({
  //       position: markerpoint,
  //       map: map,
  //       title: 'Hello World!'
  //       });
  //     });
  //   },

    autocomplete: function(){
      var place = searchBox.getPlaces()[0];
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
  $('#header-div1').on('click', function(){
    if(navigator.geolocation){
      mapApp.geolocation();
    }else{
      alert('Geolocation not available in this browser');
    }
  })

  mapApp.initializeMap();

})