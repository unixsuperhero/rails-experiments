class OtakuStoriesController < ApplicationController
  expose(:blog) { Blog.find_by_slug('otaku-stories') }
  expose(:posts) { blog.posts.published.newest }
  expose(:post) { Post.find_by_slug(params[:slug]) }
end
