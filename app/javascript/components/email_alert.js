const displayAlert = () => {
  alert('Your email has been sent! Keep an eye on your inbox, you should hear back from the organization soon!');
  removeWindowEventListener();
}

const removeWindowEventListener = () => {
  window.removeEventListener('focus', displayAlert);
};

const triggerAlert = () => {
  window.addEventListener('focus', displayAlert);
};

const handleClick = () => {
  const l = document.getElementById('emailLink');
  if (l) {
    l.addEventListener('click', triggerAlert)
  }
};

export { handleClick };
