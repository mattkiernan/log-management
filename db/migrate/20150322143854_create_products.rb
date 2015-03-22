class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :business_id

      t.timestamps null: false
    end

    add_index :products, :business_id
  end
end
