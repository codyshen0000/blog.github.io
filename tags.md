---
layout: page
title: 文章标签
permalink: /tags/
---

<div class="tags-page">
  <div class="tags-list">
    {% assign sorted_tags = site.tags | sort %}
    {% for tag in sorted_tags %}
      {% capture tag_name %}{{ tag | first }}{% endcapture %}
      <a href="#{{ tag_name }}" class="tag-link">
        <span class="tag">{{ tag_name }} ({{ site.tags[tag_name].size }})</span>
      </a>
    {% endfor %}
  </div>

  <div class="tag-groups">
    {% for tag in sorted_tags %}
      {% capture tag_name %}{{ tag | first }}{% endcapture %}
      <div class="tag-group" id="{{ tag_name }}">
        <h2>{{ tag_name }}</h2>
        <ul>
          {% for post in site.tags[tag_name] %}
            <li>
              <span class="post-date">{{ post.date | date: "%Y-%m-%d" }}</span>
              <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
              {% if post.categories.size > 0 %}
                <small class="post-category">
                  分类: {{ post.categories | join: ', ' }}
                </small>
              {% endif %}
            </li>
          {% endfor %}
        </ul>
      </div>
    {% endfor %}
  </div>
</div>

<style>
  .tags-list {
    margin-bottom: 30px;
    display: flex;
    flex-wrap: wrap;
  }
  .tag-link {
    text-decoration: none;
    margin-right: 8px;
    margin-bottom: 8px;
  }
  .tag {
    display: inline-block;
    background-color: #f1f1f1;
    padding: 5px 10px;
    border-radius: 3px;
    font-size: 0.9em;
  }
  .tag-group {
    margin-bottom: 30px;
  }
  .tag-group h2 {
    padding-bottom: 5px;
    border-bottom: 1px solid #eee;
  }
  .post-date {
    color: #666;
    font-size: 0.9em;
    margin-right: 10px;
  }
  .post-category {
    margin-left: 10px;
    color: #666;
  }
</style> 