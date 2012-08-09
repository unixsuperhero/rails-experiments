class Page < ActiveRecord::Base
  attr_accessible  :slug, :contena, :meta_tags, :title, :breadcrumb_name
end
