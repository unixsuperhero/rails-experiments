class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.text :html

      t.timestamps
    end
  end
end
