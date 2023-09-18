---
layout: seminarmainpage
title: The Brooklyn College Mathematical Sciences Colloquium
permalink: /bcmsc/
description: 
nav: false
nav_order: 2
horizontal: false
---
<!-- pages/bcmsc.md -->

more scratchwork:

 {%- assign sorted_talks = site.colloquia | sort: "year" -%}
 {%- for talk in sorted_talks -%}
      {%- include projects_horizontal.html -%}
 {%- endfor %}

