class CreateExperts < ActiveRecord::Migration
  def change
    create_table :experts do |t|
      t.string :name
      t.string :text_line_1
      t.string :text_line_2
      t.text :bio
      t.string :image
      t.string :slug

      t.timestamps
    end
  end
end
