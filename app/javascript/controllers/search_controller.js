import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["query"];

  connect() {
    console.log("Hello from search controller");
  }

  submit(event) {
    event.preventDefault();
    const query = this.queryTarget.value;
    const url = this.data.get("url");

    // Redirect to the search results page with the provided query
    window.location.href = `${url}?query=${encodeURIComponent(query)}`;
  }
}
