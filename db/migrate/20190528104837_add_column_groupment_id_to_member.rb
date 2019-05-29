class AddColumnGroupmentIdToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :groupment_id, :integer
    add_index :members, :groupment_id
  end
end
