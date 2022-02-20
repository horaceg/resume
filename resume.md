---
title:  Horace Guy
keywords: [cv, resume]
lang: english
---

----

> **Data scientist**
> \
> \
> Data scientist with a computer science and applied mathematics background. Living in Paris, France.

----


## Corporate experience


2019 - now
:   <details open><summary>*Data scientist* at **Deepki** (Paris, France)</summary>

    blah blah, ah que blah blah blah

    </details>

2018
:   <details open><summary>*R&D engineer intern* at **Stratagem Technologies** (London, UK)</summary>

    ah que blah, blih, blouh bulubulu

    </details>

2017
:   <details open> <summary>*Data analyst intern* at **Amazon** (Paris, France)</summary>

    In charge of business intelligence for international (EU + Japan + Canada) Ad services leadership team:

    - Responsible for weekly business review, monitoring activity through KPIs
    - Ad-hoc analysis on performance, revenue attribution, customer retention
    - Designed a machine learning model to predict upsell opportunities in advertising campaigns
    
    <!-- Used technologies: SQL, Python, Excel -->
    </details>

2016 - 2017
:   <details open><summary>*Mathematics Teaching Assistant* at **Lycée Charlemagne**</summary>

    Conducting oral exams for MPSI students preparing the highly competitive entrance exams to the French engineering
    "Grandes Ecoles"
    
    2 hours a week.

    </details>

## Education

2015 - 2019
:   <details open><summary>*MSc Engineering* at **Ecole Centrale Paris** (now CentraleSupélec)</summary>

    Major: Applied Mathematics in Data Science

    Relevant courses includes: random modelling, convex and discrete optimization, machine learning, deep learning

    </details>

2013 - 2015
:   <details open><summary>*Higher School Preparatory Classes* at **Lycée Charlemagne**</summary>

    Two-year undergraduate intensive course in mathematics, physics, computer science. Classes: MPSI - MP*

    Ranked 201/3370 of Concours Centrale-Supélec national entrance exams.

    </details>

----

<script>
window.addEventListener("load", function() {
  var elements = document.getElementsByTagName("details");
  console.log(elements);
  for (let e of elements) {
      if (window.innerWidth < 500) {
      e.open = false;
}
else {
      e.open = true;
      }
      e.children[0].setAttribute("preview", e.outerHTML.split("</summary>")[1].slice(4, 20) + "...");
      console.log(e)
}
});
</script>
