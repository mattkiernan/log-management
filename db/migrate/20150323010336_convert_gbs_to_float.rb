class ConvertGbsToFloat < ActiveRecord::Migration
  def up
    change_column :cost_structures, :gb_per_day, :float
  end

  def down
    change_column :cost_structures, :gb_per_day, :integer
  end
end
