import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["div"]
  connect() {

    console.log("Hello World!")
  }

  disable() {
    console.log(this.divTargets)
    this.divTargets.forEach((target)=>{
      target.classList.add("hide");
    })
  }
}
