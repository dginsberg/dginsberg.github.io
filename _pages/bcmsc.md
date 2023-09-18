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
  {%- assign sorted_seminars = site.colloquia %}
  <!-- Generate cards for each project -->
  <div class="container">
    <div class="row row-cols-1">
    {%- for seminar in sorted_seminars -%}
      {% include projects_horizontal.html %}
    {%- endfor %}
    </div>
  </div>
</div>
