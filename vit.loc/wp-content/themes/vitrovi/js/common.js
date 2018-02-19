$(function() {

	$( "#slider" ).slider({
      value:60,
      min: 60,
      max: 220,
      step: 1,
      slide: function( event, ui ) {
        $( "#width" ).val(ui.value );
        $( "#height" ).val(ui.value );
        
      }
    });

  $( "#width" ).val($( "#slider" ).slider( "value" ) );
  $( "#height" ).val($( "#slider" ).slider( "value" ) );



});
