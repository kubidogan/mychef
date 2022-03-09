import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"


export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages", "form"]

  connect() {
    console.log("connected to chat room")

    const userId = this.messagesTarget.dataset.id
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageScrollDownAndResetForm(data, userId) }
      )
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  #insertMessageScrollDownAndResetForm(data, userId) {
    const message = document.createElement("div")
    message.innerHTML = data
    if (message.firstChild.dataset.senderId === userId) {
      message.firstChild.classList.add('sent-message');
    } else {
      message.firstChild.classList.add('received-message');
    }
    this.messagesTarget.insertAdjacentElement("beforeend", message)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    this.formTarget.reset()
  }
  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
