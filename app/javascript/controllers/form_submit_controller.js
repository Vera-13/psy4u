import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect(){

    console.log("hhihihih")
  }
  submit() {
    console.log("clicking")
    this.element.submit();
  }

  sad() {
    console.log("hahahah")
  }
}
