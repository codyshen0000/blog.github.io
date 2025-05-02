# 安装Ruby（如果尚未安装）
# macOS用户可能已经预装，或通过Homebrew安装
brew install ruby

# 安装Bundler
gem install bundler

# 更新本地gems
bundle update

bundle install

bundle exec jekyll serve
# 这个命令会启动一个本地服务器，您可以通过浏览器访问 http://localhost:4000 来查看您的网站。
# 如果您想实时查看更改（自动刷新），可以使用：
bundle exec jekyll serve --livereload

# 如果您想在浏览器中预览，可以打开 http://localhost:4000 来查看您的网站。

# bundle exec jekyll serve --port 4001


