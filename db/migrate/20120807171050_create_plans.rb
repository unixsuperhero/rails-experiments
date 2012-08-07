class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :plan_type
      t.string :slug

      t.timestamps
    end
  end
end
