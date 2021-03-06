// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "controllers"
import "bootstrap"
import { initStarRating } from '../plugins/init_star_rating'

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// if (document.querySelector(".review")) {
//   console.log("hi");
//   initStarRating();
// };

document.addEventListener("turbolinks:load", ()=> {
  initStarRating();

document.querySelector(".landing-btn").addEventListener("click", () => {
  const landingImage = document.querySelector(".landing-image");
  landingImage.classList.add("hide-landing");
  // setTimeout(() => {
  //   landingImage.style.zIndex = 0;
  // }, 1000)
})
});
