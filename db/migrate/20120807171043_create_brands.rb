class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :slug
      t.string :title
      t.text :meta_tag

      t.timestamps
    end
  end
end
