class AddColumnGroupmentIdToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :groupment_id, :integer, default: nil
    add_index :admins, :groupment_id
  end
end
