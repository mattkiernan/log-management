class CreatePlanOfferings < ActiveRecord::Migration
  def change
    create_table :plan_offerings do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
