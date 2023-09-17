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

<h1 class="mt-4">Talks</h1>
{% assign publications = site.colloquia | sort: "year" | reverse %}
{% for pub in publications %}
<div class="pubitem">
  <div class="pubtitle">{{ pub.title }}</div>
  <div class="pubauthors">{{ pub.authors }}</div>
  <div class="pubinfo">{{ pub.publication }}, {{ pub.year}}</div>
</div>
{% endfor %}

{% assign talks2 = site.colloquia}
{% for t in talks2 %}
    {% include projects.html %}
{% endfor %}


