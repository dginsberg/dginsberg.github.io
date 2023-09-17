---
layout: page
title: The Brooklyn College Mathematical Sciences Colloquium
permalink: /bcmsc/
description: 
nav: false
nav_order: 2
horizontal: false
---
<!-- pages/bcmsc.md -->

<h1 class="mt-4">Talks</h1>
{% assign talks = site.colloquia | sort: "year" | reverse %}
{% for pub in talks %}
<div class="pubitem">
  <div class="pubtitle">{{ pub.title }}</div>
  <div class="pubauthors">{{ pub.authors }}</div>
  <div class="pubinfo">{{ pub.date }}, {{ pub.year}}</div>
</div>
{% endfor %}

