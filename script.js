window.addEventListener("load", function () {
  var elements = document.getElementsByTagName("details");
  for (let e of elements) {
    if (window.innerWidth < 500) {
      e.open = false;
    } else {
      e.open = true;
    }
    var pElements = e.getElementsByTagName("p");
    var content = pElements.length == 1 ? pElements[0] : pElements[1];
    e.getElementsByTagName("summary")[0].setAttribute(
      "preview",
      content.innerText.split(" ").slice(0, 4).join(" ").replace("amp;", "") +
        "..."
    );
  }
});
