var timer = document.querySelector(".progress_bar");
timer.style.width = "100%"
var timer_duration = 30;

const form = document.querySelector(".form_qcm");
var donnes_form = new FormData(form)
console.log(donnes_form);

function updateTimer() {
  var progressPercent = Math.round((timer_duration / 30) * 100);
  timer_duration--;

  // console.log(progressPercent);

  timer.style.width = progressPercent + "%";
  // console.log(timer_duration);
  if (progressPercent == 50) {
    timer.style.backgroundColor = "orange";
  }
  if (progressPercent == 20) {
    timer.style.backgroundColor = "red";
  }
  if (timer_duration < 0) {
    //find du timer, on récup le form_qcm et on applique un submit
    form.submit();
    clearInterval(intervalId);
  }
  // form.addEventListener("submit", (e) => {
  //   e.preventDefault();
  //   window.location.href =
  //     "?controller=qcm&action=question_suivante&timer=" + (30 - timer_duration);
  // });
  let fethi = document.querySelector('[name=timer]').value = (30- timer_duration)
  console.log(timer_duration);
  console.log(fethi);

}
function start() {
  var intervalId = setInterval(updateTimer, 1000);
  updateTimer();
}

start();
