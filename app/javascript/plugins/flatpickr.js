import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    allowInput: true,
    enableTime: true})
    // "#range_start", {
  // flatpickr("#range_start", {
    // altInput: true,
    // plugins: [new rangePlugin({ input: "#range_end"})]
  // });
}

export { initFlatpickr };
