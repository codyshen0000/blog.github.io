source "https://rubygems.org"

gem "jekyll", "~> 4.2.0"
gem "minima", "~> 2.5"

group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-paginate", "~> 1.1.0"
  gem "jekyll-paginate-v2", "~> 3.0"
  gem "jekyll-sitemap", "~> 1.4.0"
  gem "jekyll-seo-tag", "~> 2.7.1"
  gem "jekyll-gist", "~> 1.5.0"
  gem "rouge", "~> 3.26.0"  # 语法高亮
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

# 性能优化
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]
gem "webrick", "~> 1.7"
gem "faraday-retry"  # 解决Faraday重试中间件警告 