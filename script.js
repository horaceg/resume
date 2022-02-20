window.addEventListener("load", function () {
  var elements = document.getElementsByTagName("details");
  console.log(elements);
  for (let e of elements) {
    if (window.innerWidth < 500) {
      e.open = false;
    } else {
      e.open = true;
    }
    e.children[0].setAttribute(
      "preview",
      e.outerHTML.split("</summary>")[1].slice(4, 20) + "..."
    );
    console.log(e);
  }
});
