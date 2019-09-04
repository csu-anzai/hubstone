import "bootstrap";

import { initAutocomplete } from '../plugins/init_autocomplete';
// Select2

import 'select2/dist/css/select2.css';


import { initSelect2 } from '../plugins/init_select2';
import { dashboardTabs } from '../components/dashboard';

initSelect2();
initAutocomplete();


// Javascript dropdown tabs for cards index
function openCity(evt, cityName) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

 //Fonction Mapbox
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initChart } from '../components/init_chart';
initMapbox();




//Scroll down arrow
$(function() {
$('section02').on('click', function(e) {
    e.preventDefault();
   $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top}, 500, 'linear');
  });
});

// full page
import fullpage from "fullpage.js";
new fullpage('#fullpage', {
    //options here
     autoScrolling: true,
     navigation: true,
     navigationTooltips: ['Home'],
     showActiveTooltip:true,
     scrollingSpeed:1000,

});

// Dashboard change tabs effect
dashboardTabs();
initChart();

