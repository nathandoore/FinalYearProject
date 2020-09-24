// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= javascript_include_tag :application
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require pickadate/picker
//= require pickadate/picker.date
//= require pickadate/picker.time
//= require bootstrap-datepicker
//= require jquery-ui/widgets/datepicker


$(function(){
   $('#product_pub_date').datepicker({dateFormat: 'dd-mm-yy', 
   altFormat: 'yy-mm-dd', altField: "#actualDate",
   changeYear: true, changeMonth: true});
 });


$(document).ready(function(){
   setTimeout(function(){
      PopUp("Hello");
   },5000); // 5000 to load it after 5 seconds from page load
});

/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}