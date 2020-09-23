const initModal = () => {
  const btns = document.querySelectorAll("#modal2");
  const firstModal = document.querySelectorAll(".first_modal");
  const fade = document.querySelector(".fade");
  
  btns.forEach(btn => {
    btn.addEventListener('click', () => {
      firstModal.forEach(e => e.classList.add('hide'));
    });
    
    fade.addEventListener('click', () => {
      firstModal.forEach(e => e.classList.remove('hide'));
    });
  });
        
  // jQuery(function () {
  //   const btns = document.querySelectorAll("#modal2");
  //   const fade = document.querySelector(".fade");
  
  //   btns.forEach(btn => {
  //     btn.click(function() {
  //       $('firstModal').forEach(e => e.modal('hide'));
  //       $('secondModal').forEach(e => e.modal('show'));
  //     });
  //     fade.click(function() {
  //       $('firstModal').forEach(e => e.modal('show'));
  //       $('secondModal').forEach(e => e.modal('hide'));
  //     });
  //   });
  // });

};

export { initModal };