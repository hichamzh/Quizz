var timer = document.querySelector(".progress_bar");

var timer_duration = 30;

function updateTimer() {
    timer_duration--;
    var progressPercent = Math.floor((timer_duration / 30) * 100);

  console.log(progressPercent);

  timer.style.width = progressPercent + "%";

  // console.log(timer_duration);

  if (timer_duration <= 0) {
    document.querySelector(".form_qcm").submit();
    clearInterval(intervalId);
  }
}

var intervalId = setInterval(updateTimer, 1000);
