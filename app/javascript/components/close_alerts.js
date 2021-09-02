const closeAlerts = () => {
  const buttons = document.querySelectorAll(".close");
  if (buttons) {
    setTimeout(() => {
      buttons.forEach((btn) => { btn.click() });
    }, 3000);
  }
};

export { closeAlerts };
