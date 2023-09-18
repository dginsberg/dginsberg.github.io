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

<!-- Display projects without categories -->
  {%- assign sorted_projects = site.colloquia | sort: "year" -%}
  <!-- Generate cards for each project -->
  {% if page.horizontal -%}
  <div class="container">
    <div class="row row-cols-1">
    {%- for project in sorted_projects -%}
      {% include projects_horizontal.html %}
    {%- endfor %}
    </div>
  </div>
  {%- else -%}
  <div class="grid">
    {%- for project in sorted_projects -%}
      {% include projects.html %}
    {%- endfor %}
  </div>
  {%- endif -%}
</div>
