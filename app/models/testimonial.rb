class Testimonial < ActiveRecord::Base
  attr_accessible  :name, :location, :image, :slug, :plan_id, :testimonial
end
