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
    <div class="timeline {% if indexRemainder == 0 %} right {% else %} left {% endif %}">
    {% include post_card.html currentPost=post %}
      <div class="card h-100 cursor-pointer" 
        onclick="window.location.href='/about/{{ post.url }}'">
          <div class="card-body">
              {{ post.date | date: "%-d %B %Y"  }}
              <a href="/about/{{ post.url }}" class="text-normal">
                <h5>{{ post.title }}</h5>
              </a>
              <p class="card-text">
                    {{ post.excerpt }}
              </p>
              <span>
              {% for tag in page.tags %}
                <a href="/about/tag_index#{{ tag | slugify }}" class="badge bg-primary">
                    <span class="fas fa-tag" aria-hidden="true"></span> {{ tag }}
                </a>
              {% endfor %}
              </span>
          </div>
          <div class="card-footer p-3 d-flex justify-content-between">
            <a href="/about/{{ post.url }}" class="btn btn-link ml-auto">
            Read More <i class="fa fa-caret-right"></i>
            </a>
          </div>
      </div>
    </div>
     {% assign postIndex = postIndex | plus:1 %}
  {% endfor %}
</div>

