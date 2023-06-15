let timer = document.querySelector(".progress_bar");
let timer_duration = 30;

const form = document.querySelector(".form_qcm");
var donnes_form = new FormData(form);
console.log(donnes_form);

function updateTimer() {
  timer_duration--;
  let progressPercent = Math.round((timer_duration / 30) * 100);

  timer.style.width = progressPercent + "%";
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
  let fethi = (document.querySelector("[name=timer]").value =
    30 - timer_duration);
  console.log(timer);
  console.log(progressPercent);
}

setInterval(updateTimer, 1000);
