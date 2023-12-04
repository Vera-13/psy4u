import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      enableTime:      true,
      altInput:        true,
      minDate:         "today",
      altFormat:       "F j, Y at h:i K",
      dateFormat:      "Y-m-d H:i",
      defaultHour:     9,
      defaultMinute:   0o0,
      minuteIncrement: 60,
      minTime: "09:00",
      maxTime: "20:00",
      "disable": [
        function(date) {
            // return true to disable
            return (date.getDay() === 0 || date.getDay() === 7);
        }
    ]
    });
  }
}
