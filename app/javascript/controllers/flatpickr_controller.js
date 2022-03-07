import flatpickr from "flatpickr";
import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    flatpickr(".datepicker", {
      allowInput: true,
      enableTime: true});
  }
}
