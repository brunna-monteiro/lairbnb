import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["query"];

  connect() {
  }

  // submit(event) {
  //   event.preventDefault();
  //   const query = this.queryTarget.value;
  //   const url = this.data.get("url");

  // }
}
