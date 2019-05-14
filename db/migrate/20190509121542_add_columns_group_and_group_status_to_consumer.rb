class AddColumnsGroupAndGroupStatusToConsumer < ActiveRecord::Migration[5.2]
  def change
    add_column :consumers, :group, :string
    add_column :consumers, :group_status, :string
  end
end
