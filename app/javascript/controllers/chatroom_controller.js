import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chatroom"
export default class extends Controller {
  static targets = ['end', 'form']

  connect() {
    this.endTarget.scrollIntoView({behavior: "smooth", block: "end"})
  }

  submit() {
    const url = this.formTarget.action
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.element.outerHTML = data
        this.endTarget.scrollIntoView({behavior: "smooth", block: "end"})
      })
  }
}
