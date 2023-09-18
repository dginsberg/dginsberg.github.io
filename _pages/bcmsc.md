---
layout: noheaderpage
title: The Brooklyn College Mathematical Sciences Colloquium
permalink: /bcmsc/
description: 
nav: false
nav_order: 2
horizontal: false
---
<!-- pages/bcmsc.md -->


more scratchwork:

 {%- for project in sorted_projects -%}
      {% include projects_horizontal.html %}
 {%- endfor %}



  an attempt to make rows longer?
  <div class="projects">
<!-- Display projects without categories -->
  {%- assign sorted_projects = site.colloquia | sort: "year" -%}
  <!-- Generate cards for each project -->
  <div class="container">
    <div class="row row-cols">
    {%- for project in sorted_projects -%}
      {% include projects_horizontal.html %}
    {%- endfor %}
    </div>
  </div>


more scratchwork:

 {%- for project in sorted_projects -%}
      {% include projects_horizontal.html %}
 {%- endfor %}


