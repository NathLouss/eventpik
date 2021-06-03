import Sortable from 'sortablejs';
import { csrfToken } from "@rails/ujs";

const initSortable = () => {
  const list1 = document.querySelector('#results1');
  Sortable.create(list1, {
    ghostClass: "ghost",
    animation: 150,
    onEnd: (event) => {
      const eventId = event.clone.dataset.eventId;
      console.dir(event)
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
        document.location.reload();
      });
    }
  });

  const list2 = document.querySelector('#results2');
  Sortable.create(list2, {
    ghostClass: "ghost",
    animation: 150,
    onEnd: (event) => {
      const eventId = event.clone.dataset.eventId;
     
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
        document.location.reload();
      });
    }
  });
};

export { initSortable };
