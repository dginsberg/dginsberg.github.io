---
layout: noheaderpage
permalink: /talks2/
title: talks2
description:
years: [2022, 2020]
nav: false
nav_order: 2
---
<!-- _pages/publications.md -->
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f talks -q @*[year={{y}}]* %}
{% endfor %}

</div>
