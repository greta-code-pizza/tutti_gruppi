class RenameColumnConsumerIdToAuthenticationIdForOrderTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :consumer_id, :authentication_id
  end
end
