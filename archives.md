---
layout: page
title: 归档
permalink: /archives/
---

<div class="archives-container">
  <div class="archives-header">
    <h1 class="archives-title">博客归档</h1>
    <div class="archives-stats">
      非常好! 目前共计 {{ site.posts.size }} 篇日志。继续努力。
    </div>
  </div>

  {% assign posts_by_year = site.posts | group_by_exp:"post", "post.date | date: '%Y'" %}
  {% for year in posts_by_year %}
    <div class="year-section">
      <h2 class="year-title">{{ year.name }}</h2>
      {% assign posts_by_month = year.items | group_by_exp:"post", "post.date | date: '%m-%d'" %}
      {% for post in year.items %}
        <div class="post-item">
          <span class="post-date">{{ post.date | date: "%m-%d" }}</span>
          <a class="post-link" href="{{ post.url | relative_url }}">{{ post.title }}</a>
        </div>
      {% endfor %}
    </div>
  {% endfor %}
</div>

<style>
  .archives-container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
  }
  
  .archives-header {
    margin-bottom: 30px;
    text-align: center;
  }
  
  .archives-title {
    font-size: 2rem;
    margin-bottom: 10px;
  }
  
  .archives-stats {
    color: #666;
    font-size: 1rem;
    margin-bottom: 20px;
  }
  
  .year-section {
    margin-bottom: 40px;
  }
  
  .year-title {
    font-size: 1.5rem;
    margin-bottom: 15px;
    border-bottom: 1px solid #eee;
    padding-bottom: 5px;
  }
  
  .post-item {
    margin-bottom: 10px;
    display: flex;
    align-items: baseline;
  }
  
  .post-date {
    color: #666;
    margin-right: 15px;
    min-width: 60px;
  }
  
  .post-link {
    color: #222;
    text-decoration: none;
    transition: color 0.3s;
  }
  
  .post-link:hover {
    color: #1a73e8;
  }
</style> 