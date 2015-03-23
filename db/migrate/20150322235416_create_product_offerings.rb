class CreateProductOfferings < ActiveRecord::Migration
  def change
    create_table :product_offerings do |t|
      t.string :product_offering

      t.timestamps null: false
    end
  end
end
