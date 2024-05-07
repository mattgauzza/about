---
layout: page
title: Things I've Built
---

<div class="row row-cols-1 row-cols-md-2 g-4">
  {% for post in site.posts %}
    <div class="col">
      <div class="card">
          <div class="card-body">
              <a href="/about/{{ post.url }}">
                <h5>{{ post.title }}</h5>
                <p class="card-text">
                      {{ post.excerpt }}
                </p>
              </a>
          </div>
      </div>
    </div>
  {% endfor %}
</div>
