import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["start", "end"]

  connect() {
    const dates = JSON.parse(this.element.dataset.dates)
    flatpickr(this.startTarget, {
      disable: dates,
      dateFormat: "Y-m-d",
      minDate: "today"
    })
    flatpickr(this.endTarget, {
      disable: dates,
      dateFormat: "Y-m-d",
      minDate: "today"
    })

  }
}
