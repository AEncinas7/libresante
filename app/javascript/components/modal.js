const initModal = () => {
  const btn = document.querySelector("#modal2");
  const closeBtn = document.querySelector("#close-btn");
  const firstModal = document.querySelector(".first_modal");

  btn.addEventListener('click', () => {
    firstModal.classList.add('hide');
  });
  
  closeBtn.addEventListener('click', () => {
    firstModal.classList.remove('hide');
  });

};

export { initModal };