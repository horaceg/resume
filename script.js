window.addEventListener("load", function () {
  var elements = document.getElementsByTagName("details");
  for (let e of elements) {
    if (window.innerWidth < 500) {
      e.open = false;
    } else {
      e.open = true;
    }
    e.children[0].setAttribute(
      "preview",
      e.outerHTML
        .split("<p>")[1]
        .split(" ")
        .slice(0, 4)
        .join(" ")
        .replace("amp;", "") + "..."
    );
  }
});
