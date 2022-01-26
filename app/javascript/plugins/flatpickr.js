import flatpickr from "flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


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
