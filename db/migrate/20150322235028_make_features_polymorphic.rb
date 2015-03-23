class MakeFeaturesPolymorphic < ActiveRecord::Migration
  def up
    add_column :features, :offering_type, :string
    add_column :features, :offering_id, :integer
    add_index :features, :offering_id
    remove_column :features, :description, :string
  end

  def down
    remove_column :features, :offering_type, :string
    remove_column :features, :offering_id, :integer
    remove_index :features, :offering_id
  end
end
