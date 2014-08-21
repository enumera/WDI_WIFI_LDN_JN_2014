
// createMap

$(document).ready(function(){

  // Date picker jquery UI
  $( "#user_dob" ).datepicker();

  // Gwen's accordion code
  $( "#accordion-wifi" ).accordion({ collapsible: true, active: false });
  $( "#accordion-group" ).accordion({ collapsible: true, active: false });
 
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
  // Gwen had to turn off this variable for the individual json to work! Just may have to add another little variable in the individual marker function.
  //var infowindow = new google.maps.InfoWindow();
  var marker = new google.maps.Marker({
      map: map //one on the left is our key(from the google api), the left one is our value
  });
  var input = $('#pac-input')[0];
  var searchBox = new google.maps.places.SearchBox(input);

  // Trying to get wifi marker to appear

  var longP, latP;

  var infowindow = null;
  mapApp = {
    positionMarker: null, 
    initializeMap: function(){
      mapOptions = {
        zoom:8,
        center:new google.maps.LatLng(51.508742, -0.120850),
        mapTypeId:google.maps.MapTypeId.ROADMAP
      };
      canvas = document.getElementById('googleMap');
      // console.log("canvas", canvas)
      if(canvas != null){
        map = new google.maps.Map(canvas, mapOptions); //this line is pure JS
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
        var geocoder = new google.maps.Geocoder();
        $.each(window.markers_info, function(i, network){
          var infowindow = new google.maps.InfoWindow({
              content: "<div>"+network.business_name+" - "+ network.reviews.toString() +" - "+network.share_scope+" - "+" <a href='/wifis/"+network.wifi_id+"/edit'>Reviews</a> | <a href='/wifis/"+network.wifi_id+"/add_favourite'>Add to favourite</a>"+"</div>"
            });
          console.log(infowindow);
          geocoder.geocode( {'address': network.postcode }, function(data, status) { 
            longP = data[0].geometry.location.B
            latP = data[0].geometry.location.k
            var found = new google.maps.LatLng(latP, longP)
            var wifimarker = new google.maps.Marker({
              position: found,
              map: map,
              title: network.business_name
            });
            console.log(longP);
            console.log(latP);
            google.maps.event.addListener(wifimarker, 'click', function() {
                  if(infowindow != null){
                    infowindow.close()
                  }
                  infowindow.open(map,wifimarker);
              });
          });
        })  
      }
      
    },

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
    if(!!$("#map-container").length){
      if(navigator.geolocation){
        mapApp.geolocation();
      }else{
        alert('Geolocation not available in this browser');
      }
    }
    else{
      document.location.href = "/"
    }
    
  });

  mapApp.initializeMap();
  $("#burger-container-div").on('click', function() {
    $("#burger-menu").slideToggle()
  });

  $('#header-div1').on('click', function(){
    if(!!$("#map-container").length){
      if(navigator.geolocation){
        mapApp.geolocation();
      }else{
        alert('Geolocation not available in this browser');
      }
    }
    else{
      document.location.href = "/"
    }
    
  });
})