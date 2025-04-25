---
layout: page
title: 文章分类
permalink: /categories/
---

<div class="categories-page">
  {% for category in site.categories %}
    <div class="category-group">
      {% capture category_name %}{{ category | first }}{% endcapture %}
      <h2 id="{{ category_name }}">{{ category_name }}</h2>
      <ul>
        {% for post in site.categories[category_name] %}
          <li>
            <span class="post-date">{{ post.date | date: "%Y-%m-%d" }}</span>
            <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
            {% if post.tags.size > 0 %}
              <small class="post-tags">
                {% for tag in post.tags %}
                  <span class="tag">{{ tag }}</span>
                {% endfor %}
              </small>
            {% endif %}
          </li>
        {% endfor %}
      </ul>
    </div>
  {% endfor %}
</div>

<style>
  .categories-page .category-group {
    margin-bottom: 30px;
  }
  .categories-page h2 {
    padding-bottom: 5px;
    border-bottom: 1px solid #eee;
  }
  .post-date {
    color: #666;
    font-size: 0.9em;
    margin-right: 10px;
  }
  .post-tags {
    margin-left: 10px;
  }
  .tag {
    display: inline-block;
    background-color: #f1f1f1;
    padding: 2px 8px;
    border-radius: 3px;
    font-size: 0.8em;
    margin-right: 5px;
  }
</style> 