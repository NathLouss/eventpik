const initWishList = () => {

  const button = document.getElementById('wishlist-menu');
  const wishlist = document.getElementsByClassName('wishlist-content')[0];
  const btnClose = document.getElementById('cross-btn')

  button.addEventListener('click', function onClick() {
    wishlist.classList.toggle('wishlist-content-open');
  }, false);

  if (btnClose) {
    btnClose.addEventListener('click', () => {
      wishlist.classList.toggle('wishlist-content-open');
      
    })
  }
};

export { initWishList }