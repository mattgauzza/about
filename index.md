---
layout: default
title: Things I've Built
---
<div class="mb-3">
      {% include all_tags.html %}
</div>
<div class="main-timeline">
{% assign postIndex = 0 %}
  {% for post in site.posts %}
    {% assign indexRemainder = forloop.index | modulo: 2 %}
    <div class="timeline {% if indexRemainder == 0 %} right {% else %} left text-end {% endif %}">
    {% include post_card.html currentPost=post %}
    </div>
     {% assign postIndex = postIndex | plus:1 %}
  {% endfor %}
</div>

