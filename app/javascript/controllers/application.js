import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

document.addEventListener('DOMContentLoaded', function() {
  var slider = document.getElementById('slider');
  var sliderButton = document.querySelector('.slider');

  slider.addEventListener('change', function() {
    if (slider.checked) {
      // Code to handle the slider ON state
      console.log('Slider is ON');
      sliderButton.style.backgroundColor = '#118ab2';
    } else {
      // Code to handle the slider OFF state
      console.log('Slider is OFF');
      sliderButton.style.backgroundColor = '#118ab2';
    }
  });
});
