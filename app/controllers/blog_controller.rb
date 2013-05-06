class BlogController < ApplicationController

  expose(:posts) { Section.new('blog/posts').files }

end
