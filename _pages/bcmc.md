---
layout: noheaderpagecolloq
title: The Brooklyn College Mathematics Colloquium
permalink: /bcmc/
description: 
nav: false
nav_order: 2
display_categories: [2023, 2022]
horizontal: true
---

<!-- pages/projects.md -->
<div class="projects">
{%- if site.enable_project_categories and page.display_categories %}
  <!-- Display categorized projects -->
  {%- for year in page.display_categories %}
  <h2 class="category">{{ year }}</h2>
  {%- assign categorized_projects = site.bcmc | where: "talkyear", year -%}
  {%- assign sorted_projects = categorized_projects | sort: "talkdate" %}
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
  {% endfor %}

{%- else -%}
<!-- Display projects without categories -->

  {%- assign sorted_projects = site.bcmc | sort: "talkdate" -%}
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
{%- endif -%}
</div>