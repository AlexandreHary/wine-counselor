import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["div"]
  connect() {

    console.log("Hello World!")
  }

  disable() {
    console.log(this.divTarget)
    this.divTarget.classList.add("hide")
  }
}
