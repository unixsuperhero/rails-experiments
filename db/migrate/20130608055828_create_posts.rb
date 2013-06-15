class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :slug
      t.string :title
      t.text :body
      t.integer :blog_id
      t.integer :category_id
      t.boolean :published, null: false, default: false

      t.timestamps
    end
  end
end
