class CreateProductFeatures < ActiveRecord::Migration
  def change
    create_table :product_features do |t|
      t.integer :product_id
      t.integer :feature_id

      t.timestamps null: false
    end

    add_index :product_features, :product_id
    add_index :product_features, :feature_id
  end
end
