var timer = document.querySelector(".progress_bar");
timer.style.width = "100%";
var timer_duration = 30;

function updateTimer() {
  var progressPercent = Math.floor((timer_duration / 30) * 100);

  console.log(progressPercent);

  timer.style.width = progressPercent + "%";
  timer_duration--;
  // console.log(timer_duration);

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
