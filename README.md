# 技术分享博客

这是一个基于Jekyll搭建的技术分享博客，用于记录和分享学习心得、技术笔记和项目经验。

## 特点

- 响应式设计，适配各种设备
- 文章分类与标签系统
- 代码高亮显示
- 个人项目展示页面
- 社交媒体集成
- SEO优化

## 访问地址

博客访问地址：https://[您的GitHub用户名].github.io

## 本地开发

### 环境准备

1. 安装Ruby和RubyGems
   ```
   # macOS (使用Homebrew)
   brew install ruby
   
   # Ubuntu/Debian
   sudo apt-get install ruby-full build-essential
   
   # Windows
   # 从 https://rubyinstaller.org/ 下载安装包
   ```

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

### 创建新文章

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

### 代码高亮

使用三个反引号和语言标识符来添加代码块：

````
```javascript
function hello() {
  console.log("Hello World!");
}
```
````

支持的语言包括：javascript, ruby, python, css, html, java等。

### 添加图片

```
![图片描述](图片URL)
```

推荐将图片放在`assets/images/`目录下，然后通过相对路径引用：

```
![图片描述](/assets/images/example.jpg)
```

## 自定义

### 修改配置

编辑 `_config.yml` 文件来更改博客标题、描述、社交媒体链接等信息。

### 主题定制

本博客基于minima主题，您可以通过修改`_sass`目录下的文件来自定义样式。

## 页面说明

- **首页**: 展示最新文章列表
- **分类页**: 按类别组织文章
- **标签页**: 按标签查看文章
- **项目页**: 展示个人项目和开源贡献
- **关于页**: 个人介绍和博客说明

## 部署到GitHub Pages

1. 创建名为 `[您的GitHub用户名].github.io` 的仓库
2. 将本地代码推送到该仓库
   ```
   git push origin main
   ```
3. GitHub将自动构建并部署您的站点

## 许可证

MIT License 