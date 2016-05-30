###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page '/this-page-has-no-layout.html', layout: false

# With alternative layout
# page '/path/to/file.html', layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy '/this-page-has-no-template.html', '/template-file.html', locals: {
#  which_fake_page: 'Rendering a fake page with a local variable' }

###
# Helpers
###

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  # blog.prefix = 'blog'
  blog.permalink = '{year}/{month}/{day}/{title}.xhtml'
  # Matcher for blog source files
  blog.sources = 'articles/{year}-{month}-{day}-{title}.xhtml'
  blog.taglink = 'tags/{tag}.xhtml'
  # blog.layout = 'layout'
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  blog.year_link = '{year}.xhtml'
  blog.month_link = '{year}/{month}.xhtml'
  blog.day_link = '{year}/{month}/{day}.xhtml'
  # blog.default_extension = '.markdown'
  blog.tag_template = 'tag.xhtml'
  blog.calendar_template = 'calendar.xhtml'
  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = 'page/{num}'
  blog.new_article_template = File.expand_path('../new_article.erb', __FILE__)
end

# Activate directory indices and remove file extensions from urls
activate :directory_indexes
set :index_file, 'index.xhtml'
set :trailing_slash, false

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Development-specific configuration
configure :development do
  #  set :https, true
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
