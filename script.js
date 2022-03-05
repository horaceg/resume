window.addEventListener("load", function () {
  var elements = document.getElementsByTagName("details");
  for (let e of elements) {
    if (window.innerWidth < 500) {
      e.open = false;
    } else {
      e.open = true;
    }
    var pElements = e.getElementsByTagName("p");
    var ix = 0;
    while (pElements[ix].innerText.length < 5) {
      ix++;
    }
    var content = pElements[ix].innerText
      .split(" ")
      .slice(0, 4)
      .join(" ")
      .replace("amp;", "");

    e.getElementsByTagName("summary")[0].setAttribute(
      "preview",
      content + "..."
    );
  }
});
