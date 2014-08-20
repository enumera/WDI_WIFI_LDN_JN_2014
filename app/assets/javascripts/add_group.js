  $(function() {
    var dialog, form,
 
      // From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29

      name = $( "#name" ),
      allFields = $( [] ).add( name ),
      tips = $( ".validateTips" );
 
    function updateTips( t ) {
      tips
        .text( t )
        .addClass( "ui-state-highlight" );
      setTimeout(function() {
        tips.removeClass( "ui-state-highlight", 1500 );
      }, 500 );
    }

       function checkLength( o, n, min, max ) {
      if ( o.val().length > max || o.val().length < min ) {
        o.addClass( "ui-state-error" );
        updateTips( "Length of " + n + " must be between " +
          min + " and " + max + "." );
        return false;
      } else {
        return true;
      }
    }



    function addUser() {
      var valid = true;
      allFields.removeClass( "ui-state-error" );
      valid = valid && checkLength( name, "username", 3, 16 );
      if ( valid ) {
        $( "#group tbody" ).append( "<tr>" +
          "<td>" + name.val() + "</td>" +
        "</tr>" );
        dialog.dialog( "close" );
      }
      return valid;
    }
 
    dialog = $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 300,
      width: 350,
      modal: true,
      buttons: {
        "Create the group": addUser,
        Cancel: function() {
          dialog.dialog( "close" );
        }
      },
      close: function() {
        form[ 0 ].reset();
        allFields.removeClass( "ui-state-error" );
      }
    });
 
    form = dialog.find( "form" ).on( "submit", function( event ) {
      event.preventDefault();
      addUser();
    });
 
    $( "#add-group" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });

           postForm = function(event){
              event.preventDefault();
              id = $("form #id").val();
              if(id != ""){
                path = "/posts/"+id.toString();
                method = "PUT"
              }else{
                path = "posts";
                method = "POST";
              }
              var data = {}
              $.each(railsAjax.fields, function(i, field){
                data[field] = $("#"+field).val()
              });

              $.ajax({ 
                  url: path, 
                  method: method,
                  data: {post: data},
                  dataType: "json"
              }).success(function(){
                railsAjax.getPosts();
                railsAjax.togglePages('#all_posts');
              })
            }



  });