import swal from 'sweetalert';

const alertOnContact = (selector, options = {}, callback = () => {}) => {
  const contactButton = document.querySelector(selector);
  if (contactButton) {
    contactButton.addEventListener('click', (event) => {
      event.preventDefault();
      swal(options)
      // .then(() => {
      //   const modalButton = document.querySelector('.swal-button');
      //   console.log(modalButton);
      //   modalButton.classList.add("btn");
      //   modalButton.classList.add("btn-primary");
      //   }
      // )
      .then(callback);
    });
  }
};

export { alertOnContact };
