class Post < ActiveRecord::Base
  attr_accessible :blog_id, :body, :category_id, :slug, :title
end
