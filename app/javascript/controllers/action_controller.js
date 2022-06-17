import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  delete(event) {
    let confirmed = confirm("Deletar repositorio?")

    if (!confirmed) {
      event.preventDefault()
    }
  }

}