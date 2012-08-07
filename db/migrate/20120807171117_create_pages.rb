class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :slug
      t.text :content
      t.text :meta_tag
      t.string :title
      t.string :breadcrumb_name

      t.timestamps
    end
  end
end
