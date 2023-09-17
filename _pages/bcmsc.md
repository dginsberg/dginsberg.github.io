---
layout: noheaderpage
title: bcmsc
permalink: /bcmsc/
description: the talks
nav: false
nav_order: 2
horizontal: false
---
<h1 class="mt-4">Talks</h1>
{% assign talks = site.colloquia | sort: "year" | reverse %}
{% for talks in talks %}
<div class="pubitem">
  <div class="pubtitle">{{ talk.title }}</div>
  <div class="pubauthors">{{ talk.authors }}</div>
  <div class="pubinfo">{{ talk.publication }}, {{ talk.year}}</div>
</div>
{% endfor %}
