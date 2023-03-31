import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toast"
export default class extends Controller {
  connect() {
    var toast = new bootstrap.Toast(this.element)
    toast.show()
  }
}
