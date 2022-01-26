import flatpickr from "flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


const initFlatpickr = () => {
  const eventForm = document.getElementById('event-form-div');
  if (eventForm) {
    console.log(eventForm);
    const events = JSON.parse(eventForm.dataset.events);
    console.log(events);

    flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end" })],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      "disable": events,
    })
  }
};

export { initFlatpickr };
