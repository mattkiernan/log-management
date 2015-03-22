class CreateCostStructures < ActiveRecord::Migration
  def change
    create_table :cost_structures do |t|
      t.string :type
      t.integer :gb_per_day
      t.integer :monthly_cost
      t.integer :annual_cost
      t.integer :additional_annual_fee
      t.integer :perpetual_cost
      t.integer :plan_id

      t.timestamps null: false
    end
    add_index :cost_structures, :plan_id
  end
end
