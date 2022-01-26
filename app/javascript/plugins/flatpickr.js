import flatpickr from "flatpickr"
require("flatpickr/dist/themes/dark.css");


const initFlatpickr = () => {
  const eventForm = document.getElementById('event-form-div');
  if (eventForm) {
    const events = JSON.parse(eventForm.dataset.events);
    flatpickr("#range_start", {
      mode: "range",
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      disable: events,
    })
  }
};

export { initFlatpickr };
