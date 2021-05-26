// app/javascript/plugins/init_autocomplete.js
import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('wish_list_address');
  console.log(addressInput)
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };