---
layout: default
title: Things I've Built
---

<div class="row row-cols-1 row-cols-md-3 g-4">
  {% for post in site.posts %}
    <div class="col">
      <div class="card h-100 cursor-pointer" onclick="window.location.href='/about/{{ post.url }}'">
          <div class="card-body">
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
  {% endfor %}
</div>

