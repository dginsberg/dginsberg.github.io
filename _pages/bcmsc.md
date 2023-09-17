---
layout: noheaderpage
title: The Brooklyn College Mathematical Sciences Colloquium
permalink: /bcmsc/
description: 
nav: false
nav_order: 2
horizontal: true
---
<!-- pages/projects.md -->
<style>
</style>

<h1 class="mt-4">Talks</h1>
{% assign talks = site.colloquia | sort: "year" | reverse %}
{% for talk in talks %}
<div class="pubitem">
  <div class="pubtitle">{{ talk.title }}</div>
  <div class="pubauthors">{{ talk.date }}</div>
  <div class="pubinfo">{{ talk.category }}, {{ talk.year}}</div>
</div>
{% endfor %}

