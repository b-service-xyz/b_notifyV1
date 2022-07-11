window.addEventListener("message", (event) => {
  var item = event.data;

  if (item !== undefined && item.type === "custom") {
    const content = $(
      `
      <div class="notification" style="background: var(--` + item.color + `);">
        <div class="notification-title">
          <p>` + item.title + `</p>
        </div>
        <p id="message">
        ` + item.message + `
        </p>
      </div>


      `
    )

    $("#notifications").prepend(content).fadeIn();

    setTimeout(() => {
      content.fadeOut();
    }, 5000)
  }
});
