class BlogController < ApplicationController

  expose(:posts) { BlogSection.new('blog/posts').files }

end
