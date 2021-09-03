import swal from 'sweetalert';

const alertOnContact = (selector, options = {}, callback = () => {}) => {
  const contactButton = document.querySelector(selector);
  if (contactButton) {
    contactButton.addEventListener('click', (event) => {
      event.preventDefault();
      swal(options)
      .then(callback);
    });
  }
};

export { alertOnContact };
