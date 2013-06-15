class Blog < ActiveRecord::Base
  attr_accessible :description, :name, :slug

  has_many :posts
end
