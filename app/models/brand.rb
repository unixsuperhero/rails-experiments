class Brand < ActiveRecord::Base
  attr_accessible :name, :slug, :title, :meta_tag
end
