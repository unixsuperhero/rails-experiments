class BlogController < ApplicationController

  expose(:posts) { BlogSection.new('blog/posts').files.reverse }

end
