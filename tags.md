---
layout: default
title: Tags
permalink: /tags/
---

<div class="page-header">
  <h1>🏷️ Tags</h1>
  <p>Posts organizados por tags</p>
</div>

{% assign tags = site.posts | map: 'tags' | join: ',' | split: ',' | uniq | sort %}
{% for tag in tags %}
  {% assign tag_posts = site.posts | where_exp: "post", "post.tags contains tag" %}
  <div class="tag-section" id="{{ tag | slugify }}">
    <div class="tag-section-title">
      🏷️ {{ tag }}
      <span class="count">{{ tag_posts.size }} post{% if tag_posts.size != 1 %}s{% endif %}</span>
    </div>
    <ul class="tag-posts">
      {% for post in tag_posts %}
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
