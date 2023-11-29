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
      minuteIncrement: 60
    });
  }
}
