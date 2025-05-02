---
layout: page
title: 个人项目
permalink: /projects/
---
<div class="projects-page">
  <p class="intro">
    这里展示了我的一些个人项目和开源贡献，记录了我在技术探索和学习过程中的实践成果。
  </p>

<div class="project-grid">
    <div class="project-card">
      <h2>技术博客平台</h2>
      <div class="project-tags">
        <span class="tag">Jekyll</span>
        <span class="tag">HTML/CSS</span>
        <span class="tag">JavaScript</span>
      </div>
      <p>基于Jekyll的个人技术博客平台，支持文章分类、标签管理、代码高亮等功能。</p>
      <div class="project-links">
        <a href="https://github.com/codyshen0000/blog" target="_blank">源码</a>
        <a href="https://codyshen0000.github.io/blog" target="_blank">演示</a>
      </div>
    </div>


</div>

<h2 class="section-title">开源贡献</h2>
  <ul class="contribution-list">
    <li>
      <a href="https://github.com/开源项目/项目名称" target="_blank">开源项目/项目名称</a> - 
      您对该项目的贡献描述
      (<a href="https://github.com/开源项目/项目名称/pull/123" target="_blank">PR #123</a>)
    </li>
    <li>
      <a href="https://github.com/另一个项目/项目名称" target="_blank">另一个项目/项目名称</a> - 
      您对该项目的贡献描述
      (<a href="https://github.com/另一个项目/项目名称/pull/456" target="_blank">PR #456</a>)
    </li>
  </ul>
</div>

<style>
  .projects-page .intro {
    font-size: 1.1em;
    margin-bottom: 2em;
  }
  
  .project-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 20px;
    margin-bottom: 2em;
  }
  
  .project-card {
    border: 1px solid #eee;
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
  }
  
  .project-card h2 {
    margin-top: 0;
    font-size: 1.5em;
  }
  
  .project-tags {
    margin-bottom: 15px;
  }
  
  .tag {
    display: inline-block;
    background-color: #f1f1f1;
    padding: 3px 8px;
    border-radius: 3px;
    font-size: 0.8em;
    margin-right: 5px;
    margin-bottom: 5px;
  }
  
  .project-links {
    margin-top: 15px;
  }
  
  .project-links a {
    display: inline-block;
    margin-right: 15px;
    text-decoration: none;
    font-weight: bold;
  }
  
  .section-title {
    margin-top: 2em;
    padding-bottom: 0.5em;
    border-bottom: 1px solid #eee;
  }
  
  .contribution-list {
    list-style-type: none;
    padding-left: 0;
  }
  
  .contribution-list li {
    margin-bottom: 10px;
    padding: 10px;
    border-radius: 5px;
    background-color: #f9f9f9;
  }
  
  @media (max-width: 768px) {
    .project-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
