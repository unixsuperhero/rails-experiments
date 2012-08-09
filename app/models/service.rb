class Service < ActiveRecord::Base
  attr_accessible :image, :name, :title, :text, :short_description, :service_type, :slug
end
