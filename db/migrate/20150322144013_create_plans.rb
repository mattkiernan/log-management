class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :product_id
      t.integer :user_limit
      t.integer :retention_period

      t.timestamps null: false
    end

    add_index :plans, :product_id
  end
end
