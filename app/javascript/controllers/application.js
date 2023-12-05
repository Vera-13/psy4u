import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// document.addEventListener('DOMContentLoaded', function() {
//   var slider = document.getElementById('slider');
//   var sliderButton = document.querySelector('.slider');

//   slider.addEventListener('change', function() {
//     if (slider.checked) {
//       // Code to handle the slider ON state
//       console.log('Slider is ON');
//       sliderButton.style.backgroundColor = '';
//     } else {
//       // Code to handle the slider OFF state
//       console.log('Slider is OFF');
//       sliderButton.style.backgroundColor = '#118ab2';
//     }
//   });
// });


function toggleStatus() {
  var button = document.getElementById("statusButton");
  var slider = document.getElementById("slider");

  if (slider.style.left === "0%") {
    slider.style.left = "-50%";
    button.innerHTML = "Offline";
    button.style.backgroundColor = "#f44336"; // Change color to indicate offline
  } else {
    slider.style.left = "0%";
    button.innerHTML = "Online";
    button.style.backgroundColor = "#4CAF50"; // Change color to indicate online
  }
}
