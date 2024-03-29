// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
// Custom
require("@nathanvda/cocoon")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { closeAlerts } from '../components/close_alerts';
import { alertOnContact } from '../components/alert_after_contact';

document.addEventListener('turbolinks:load', () => {
  closeAlerts();
  alertOnContact('#contactOrgButton', {
    text: "Thank you for volunteering with us!",
    title: "Welcome aboard 🙌🏻",
    icon: "success"
  }, () => {
    const hiddenLink = document.getElementById('hiddenLink');
    hiddenLink.click();
  });
});
