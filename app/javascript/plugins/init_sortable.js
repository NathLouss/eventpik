import Sortable from 'sortablejs';
import { csrfToken } from "@rails/ujs";

const initSortable = () => {
  const list = document.querySelector('#results');
  Sortable.create(list, {
    ghostClass: "ghost",
    animation: 150,
    onEnd: (event) => {
      const eventId = event.clone.dataset.eventId;
      alert(`${event.oldIndex} moved to ${event.newIndex}`);
    
      fetch(`/events/${eventId}`, {
        method: "PATCH",
        headers: {
          "X-CSRF-Token": csrfToken(),
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        credentials: "same-origin",
        body: JSON.stringify({ newPosition: event.newIndex, oldPosition: event.oldIndex }),
      })
      .then(response => response.json())
      .then((data) => {
        console.log(data.hits); // Look at local_names.default
      });
    }
  });
};

export { initSortable };
