class AddColumnGroupmentIdToManager < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :groupment_id, :integer, default: nil
    add_index :managers, :groupment_id
  end
end
