---
layout: default
title: Categorias
permalink: /categories/
---

<div class="page-header">
  <h1>📁 Categorias</h1>
  <p>Posts organizados por categoria de projeto</p>
</div>

{% assign categories = site.posts | map: 'categories' | join: ',' | split: ',' | uniq | sort %}
{% for category in categories %}
  {% assign cat_posts = site.posts | where_exp: "post", "post.categories contains category" %}
  <div class="category-section" id="{{ category | slugify }}">
    <div class="category-section-title">
      📁 {{ category }}
      <span class="count">{{ cat_posts.size }} post{% if cat_posts.size != 1 %}s{% endif %}</span>
    </div>
    <ul class="category-posts">
      {% for post in cat_posts %}
        <li>
          <a href="{{ post.url | relative_url }}">
            {{ post.title }}
            <span class="post-date-small">{{ post.date | date: "%d/%m/%Y" }}</span>
          </a>
        </li>
      {% endfor %}
    </ul>
  </div>
{% endfor %}
