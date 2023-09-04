import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // static targets = ["div"]
  // connect() {

  //   console.log("Hello World!")
  // }

  // disable() {
  //   console.log(this.divTargets)
  //   this.divTargets.forEach((target)=>{
  //     target.classList.add("hide");
  //   })
  // }

  static targets = ["doorLeft", "doorRight", 'div'];

  connect() {
    console.log("Hello World!");
    console.log(this.doorLeftTarget)
  }

  disable(event) {
    console.log(this.doorLeftTarget, this.doorRightTarget);
    console.log(event.currentTarget);


    this.doorLeftTarget.classList.toggle("open-left");
    this.doorRightTarget.classList.toggle("open-right");

    event.currentTarget.classList.add("hide")

    // Attends !!
    console.log("Executed now");

    const that = this;

    // 1 second delay
    setTimeout(function () {
      that.divTargets.forEach((target) => {
        target.classList.add("hide");
        console.log("Executed after 3 second");
      });

      that.element.classList.add("hide");
    }, 3000);
  }
}
