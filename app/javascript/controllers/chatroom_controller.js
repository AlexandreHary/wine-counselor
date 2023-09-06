import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chatroom"
export default class extends Controller {
  static targets = ['end']

  connect() {
    this.endTarget.scrollIntoView({behavior: "smooth", block: "end"})
  }
}
