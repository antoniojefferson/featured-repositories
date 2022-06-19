import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { proptMsg: String }

  delete(event) {
    let confirmed = confirm(this.proptMsgValue)

    if (!confirmed) {
      event.preventDefault()
    }
  }

  language(event) {
    window.location.href = `/?locale=${ event.target.checked ? 'en' : 'pt-BR' }`
  }

}