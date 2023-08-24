import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["filter", "card", "title"];

  connect() {

  }

  filterCards(event) {
    if(this.filterTarget.value !== "") {
      const filterText = this.filterTarget.value.toLowerCase();
      let i = 0

      this.cardTargets.forEach(card => {
        this.filterTarget.textContent.toLowerCase();

        if (!this.titleTargets[i].innerText.toLowerCase().includes(filterText)) {
          card.style.display = "none"
        } else {
          card.style.display = "block"
        }
        i++
      });

    } else {
      this.cardTargets.forEach(card => {
        card.style.display = "block"
      })
    }
  }
}
