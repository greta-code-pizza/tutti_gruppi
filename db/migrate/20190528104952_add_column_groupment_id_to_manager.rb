class AddColumnGroupmentIdToManager < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :groupment_id, :integer
    add_index :managers, :groupment_id
  end
end
