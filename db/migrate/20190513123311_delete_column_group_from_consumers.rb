class DeleteColumnGroupFromConsumers < ActiveRecord::Migration[5.2]
  def change
    remove_column :consumers, :group
  end
end
