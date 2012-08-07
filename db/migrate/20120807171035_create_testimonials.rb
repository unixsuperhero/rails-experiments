class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :location
      t.text :testimonial
      t.string :image
      t.string :slug
      t.integer :plan_id

      t.timestamps
    end
  end
end
