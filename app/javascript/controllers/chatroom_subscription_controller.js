import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { chatroomId: Number, currentUserId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)

  }

  #insertMessageAndScrollDown(data) {
    const currentUserIsSender = this.currentUserIdValue === data.sender_id
    const messageElement = this.#buildMessageElement(currentUserIsSender, data.message)
    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }

  #buildMessageElement(currentUserIsSender, message) {
  return `
    <div class="message-row d-flex ${this.#justifyClass(currentUserIsSender)}">
      <div class="${this.#userStyleClass(currentUserIsSender)}">
        ${message}
      </div>
    </div>
  `
  }

  #justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }

  #userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }

}

document.addEventListener('DOMContentLoaded', function () {
  var submitButton = document.getElementById('submit-button');
  var inputField = document.querySelector('input[name="message[content]"]');

  inputField.addEventListener('input', function () {
    if (inputField.value.trim() === '') {
      submitButton.classList.add('empty-input');
    } else {
      submitButton.classList.remove('empty-input');
    }
  });
});
