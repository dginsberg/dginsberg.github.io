---
layout: page
permalink: /talks/
title: Talks
description:
years: [2022, 2020]
nav: true
nav_order: 2
---
<!-- _pages/talks.md -->

Selected talks.
For a complete list, [see my CV](/~dg42/assets/pdf/cv.pdf).
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f talks -q @*[talkyear={{y}}]* %}
{% endfor %}

</div>
