
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["point"]

  connect() {
    console.log(this.pointTarget)
  }
  displayPoint() {
    this.pointTarget.classList.toggle('d-none')
  }
}
