const initWishList = () => {

  const button = document.getElementById('wishlist-menu');
  const wishlist = document.getElementsByClassName('wishlist-content')[0];

  button.addEventListener('click', function onClick() {
    console.log("coucou")
    wishlist.classList.toggle('wishlist-content-open');
  }, false);
};

export { initWishList }