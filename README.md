# 我的个人博客

这是我基于Jekyll搭建的个人博客，用于记录和分享我的学习心得、技术笔记和生活感悟。

## 访问地址

博客访问地址：https://[您的GitHub用户名].github.io

## 本地开发

### 环境准备

1. 安装Ruby和RubyGems
2. 安装Jekyll和Bundler：
```
gem install jekyll bundler
```

### 本地运行

1. 克隆仓库
```
git clone https://github.com/[您的GitHub用户名]/[您的GitHub用户名].github.io.git
cd [您的GitHub用户名].github.io
```

2. 安装依赖
```
bundle install
```

3. 启动本地服务器
```
bundle exec jekyll serve
```

4. 在浏览器中访问 `http://localhost:4000`

## 写作指南

1. 在 `_posts` 目录下创建新的Markdown文件，文件名格式为 `YYYY-MM-DD-标题.md`
2. 文件开头添加Front Matter信息：
```
---
layout: post
title: "文章标题"
date: YYYY-MM-DD HH:MM:SS +0800
categories: 分类
tags: 标签1 标签2
---
```
3. 使用Markdown语法编写正文内容

## 技术栈

- Jekyll：静态网站生成器
- GitHub Pages：网站托管
- Sass：样式处理
- Markdown：内容编写

## 许可证

MIT License 