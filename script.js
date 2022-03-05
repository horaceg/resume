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
      e.children[1].innerText
        .split(" ")
        .slice(0, 4)
        .join(" ")
        .replace("amp;", "") + "..."
    );
  }
});
