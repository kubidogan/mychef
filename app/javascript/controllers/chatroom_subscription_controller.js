import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages", "form"]

  connect() {
    console.log("connected to chat room")
    this.channel = consumer.subscriptions.create(
    { channel: "ChatroomChannel", id: this.chatroomIdValue },
    { received: data => this.#insertMessageScrollDownAndResetForm(data) }
  )
  }

  #insertMessageScrollDownAndResetForm(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    this.formTarget.reset()
  }
  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
