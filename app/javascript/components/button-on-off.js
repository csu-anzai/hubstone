const rond = document.querySelector('.on-off');
const button = document.querySelector('.btn-on-off');

const changeComparaison = () => {
  button.addEventListener('click', (event) => {
    rond.classList.toggle('after-click');
  });
};

export { changeComparaison }
