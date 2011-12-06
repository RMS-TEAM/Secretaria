// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function prueba(string){
	alert(string + fomularioJ.pruebita.options[fomularioJ.pruebita.selectedIndex].value);
	alert("El id: " + fomularioJ.pruebita.options[fomularioJ.pruebita.selectedIndex].id);
}


$("#bo").live('onClic', function{
    alert('hola');
});


$("#bo").click(function(){
    alert("hola")

});