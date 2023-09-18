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
{%- if site.enable_project_categories and page.display_categories %}
  <!-- Display categorized projects -->
  {%- for category in page.display_categories %}
  <h2 class="category">{{ category }}</h2>
  {%- assign categorized_seminars = site.colloquia | where: "category", category -%}
  {%- assign sorted_seminars = categorized_seminars | sort: "importance" %}
  <!-- Generate cards for each seminar -->
  {% if page.horizontal -%}
  <div class="container">
    <div class="row row-cols-1">
    {%- for seminar in sorted_seminars -%}
      {% include projects_horizontal.html %}
    {%- endfor %}
    </div>
  </div>
  {%- else -%}
  <div class="grid">
    {%- for seminar in sorted_seminars -%}
      {% include projects.html %}
    {%- endfor %}
  </div>
  {%- endif -%}
  {% endfor %}

{%- else -%}
<!-- Display seminars without categories -->
  {%- assign sorted_seminars = site.colloquia | sort: "importance" -%}
  <!-- Generate cards for each seminar -->
  {% if page.horizontal -%}
  <div class="container">
    <div class="row row-cols-2">
    {%- for seminar in sorted_seminars -%}
      {% include projects_horizontal.html %}
    {%- endfor %}
    </div>
  </div>
  {%- else -%}
  <div class="grid">
    {%- for seminar in sorted_seminars -%}
      {% include projects.html %}
    {%- endfor %}
  </div>
  {%- endif -%}
{%- endif -%}
</div>
