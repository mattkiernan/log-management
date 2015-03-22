class ChangeStructureType < ActiveRecord::Migration
  def up
    remove_column :cost_structures, :type, :string
    add_column :cost_structures, :billing_frequency, :string
  end

  def down
    remove_column :cost_structures, :billing_frequency, :string
    add_column :cost_structures, :type, :string
  end
end
