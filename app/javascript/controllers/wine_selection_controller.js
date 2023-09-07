import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="wine-selection"
export default class extends Controller {
  connect() {
    console.log("On est dans wine-selection")
    console.log(this.element)
  }

  reloadPage(event) {
    var selectedElement = event.currentTarget.options[event.currentTarget.selectedIndex];
    window.location = `/caviste/offers/new?wine_id=${selectedElement.value}`
  }
}
