// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.fittext.js
//= require jquery.dropkick
//= require custom_checkbox_and_radio
//= require custom_radio

window.addEventListener('load', function() {
    new FastClick(document.body);
}, false);

// $( document ).on(
// "click",
// "a[href]",
// function( event ){
 
// // Stop the default behavior of the browser, which
// // is to change the URL of the page.
// event.preventDefault();
 
// // Manually change the location of the page to stay in
// // "Standalone" mode and change the URL at the same time.
// location.href = $( event.target ).attr( "href" );
 
// }
// );