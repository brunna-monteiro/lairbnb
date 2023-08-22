import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// import SearchController from "./controllers/search_controller.js"
// Stimulus.register("search", SearchController)
