class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :image
      t.string :name
      t.string :title
      t.text :text
      t.text :short_description
      t.string :type
      t.string :slug

      t.timestamps
    end
  end
end
