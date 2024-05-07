---
layout: page
title: Things I've Built
---

<ul class="list-group">
  {% for post in site.posts %}
    <li class="list-group-item">
      <a href="{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>