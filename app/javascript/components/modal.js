const initModal = () => {
  const btns = document.querySelectorAll("#modal2");
  const closeBtns = document.querySelectorAll("#close-btn");
  const firstModals = document.querySelectorAll(".first_modal");

  btns.forEach(btn => 
    btn.addEventListener('click', () => {
      // firstModal.classList.add('hide');
      firstModals.forEach(e => e.classList.add('hide'));
    })  
  );

  closeBtns.forEach(btn => 
    btn.addEventListener('click', () => {
      // firstModal.classList.remove('hide');
      firstModals.forEach(e => e.classList.remove('hide'));
    })
  )
};

export { initModal };