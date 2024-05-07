---
title: Things I've Built
---
{% for post in site.posts %}   
    <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
    <p><small><strong>{{ post.date | date: "%B %e, %Y" }}</strong> . {{ post.category }} . <a href="https://mattgauzza.github.io/about/{{ post.url }}#disqus_thread"></a></small></p>            
{% endfor %}


### A Bridge


### Modernizing Item <span class="green">Page</span>


### Sewing Bags