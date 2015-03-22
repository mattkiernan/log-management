class CreatePlanFeatures < ActiveRecord::Migration
  def change
    create_table :plan_features do |t|
      t.integer :plan_id
      t.integer :feature_id

      t.timestamps null: false
    end

    add_index :plan_features, :plan_id
    add_index :plan_features, :feature_id
  end
end
