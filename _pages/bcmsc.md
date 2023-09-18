---
layout: noheaderpage
title: The Brooklyn College Mathematical Sciences Colloquium
permalink: /bcmsc/
description: 
nav: false
nav_order: 2
horizontal: true
---
<!-- pages/bcmsc.md -->
<div class="projects">

  {%- assign sorted_seminars = site.colloquia | sort: "importance" -%}
  <!-- Generate cards for each seminar -->
  <div class="container">
    <div class="row row-cols-2">
    {%- for seminar in sorted_seminars -%}
      {% include colloquia_horizontal.html %}
    {%- endfor %}
    </div>
  </div>

 </div>
