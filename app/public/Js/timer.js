var timer = document.querySelector(".progress_bar");
timer.style.width = "100%";
var timer_duration = 30;

function updateTimer() {
  timer_duration--;
  var progressPercent = Math.round((timer_duration / 30) * 100);

  console.log(progressPercent);

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
    document.querySelector(".form_qcm").submit();
    clearInterval(intervalId);
  }
}
function start() {
  updateTimer();
  var intervalId = setInterval(updateTimer, 1000);
}

start();
