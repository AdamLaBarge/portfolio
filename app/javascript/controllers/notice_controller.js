import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["alert", "notice"]

  connect() {
    setTimeout(() => {
      this.dismiss()
    }, 5000);
  }

  dismiss() {
    this.element.classList.add('transition-opacity', 'duration-500', 'opacity-0')
    setTimeout(() => {
      this.element.remove()
    }, 500);
  }
}
