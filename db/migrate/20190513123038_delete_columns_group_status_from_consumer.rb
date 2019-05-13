class DeleteColumnsGroupStatusFromConsumer < ActiveRecord::Migration[5.2]
  def change
    remove_column :consumers, :group_status
  end
end
