---
layout: page
permalink: /talks/
title: talks
description:
years: [2022, 2020]
nav: true
nav_order: 2
---
<!-- _pages/publications.md -->

Selected talks. For an up-to-date list, see my CV.

<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f talks -q @*[year={{y}}]* %}
{% endfor %}

</div>
