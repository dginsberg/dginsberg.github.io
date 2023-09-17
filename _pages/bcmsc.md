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
.pubitem {
  margin: 2em 0;
  line-height: 1em;
}

.pubtitle {
  margin-bottom: 0.5em;
  line-height: 1.2em;
  font-weight: bold;
}

.pubauthors,
.pubinfo {
  font-size: 75%;
  margin-bottom: 0.75em;
}</style>

<h1 class="mt-4">Talks</h1>
{% assign colloquia = site.colloquia | sort: "year" | reverse %}
{% for pub in colloquia %}
<div class="pubitem">
  <div class="pubtitle">{{ pub.title }}</div>
  <div class="pubauthors">{{ pub.authors }}</div>
  <div class="pubinfo">{{ pub.publication }}, {{ pub.year}}</div>
</div>
{% endfor %}

