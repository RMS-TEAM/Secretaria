// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(function(){
    var hid = true;
    $('#progreso').click(function(){

        if (hid == true){
            $('.hiden.prog').show("slow");
            hid = false;
        }else{
            $('.hiden.prog').hide("slow");
            hid = true;
        }
    });
});

$(function(){
    var hid = true;
    $('#ambiente').click(function(){

        if (hid == true){
            $('.hiden.ambi').show("slow");
            hid = false;
        }else{
            $('.hiden.ambi').hide("slow");
            hid = true;
        }
    });
});

$(function(){
    var hid = true;
    $('#rendimiento').click(function(){
        if (hid == true){
            $('.hiden.rend').show("slow");
            hid = false;
        }else{
            $('.hiden.rend').hide("slow");
            hid = true;
        }
    });
});