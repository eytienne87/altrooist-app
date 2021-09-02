const handleClick = () => {
  window.alert('Thank you for volunteering with us! Welcome on board 🙌🏻')
};

const alertOnContact = () => {
  console.log('prout');
  const contactButton = document.getElementById("contactOrgButton");
  if (contactButton) {
    contactButton.addEventListener('click', handleClick);
  }
};

export { alertOnContact };
