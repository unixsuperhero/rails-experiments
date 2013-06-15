class Post < ActiveRecord::Base
  attr_accessible :blog_id, :body, :category_id, :slug, :title, :published

  belongs_to :blog
  belongs_to :category

  scope :published, where(published: true)
  scope :newest, order('created_at desc')
end
