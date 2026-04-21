function changeMood(mood) {
  // 1. Create variables to find the parts of the page to change
  const body = document.body;
  const text = document.getElementById("status");

  // We will do the changes using if-else conditions
  if (mood === "happy") {
    body.style.background = "#FFDE59"; // Yellow
    body.style.color = "black";        // Makes the text black
    text.textContent = "Keep Shining! 🌞"; // Updates text
  }else if (mood === "calm") {
    body.style.background = "#7091f5"; // Light Blue
    body.style.color = "white";        // Makes the text white
    text.textContent = "Take a Deep Breath! 🌬️"; // Updates text
  }else if (mood === "sad") {
    body.style.background = "#0e0f10"; // Sky Blue
    body.style.color = "black";        // Makes the text black
    text.textContent = "It's Okay to Feel Sad! 🌧️"; // Updates text
  }else if (mood === "angry") {
    body.style.background = "#FF6347"; // Tomato
    body.style.color = "white";        // Makes the text white
    text.textContent = "Deep breaths...let it out! 🤬"; // Updates text
  }
}