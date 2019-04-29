class AddConsumerIdToOrder < ActiveRecord::Migration[5.2]
  def change

    add_column :orders, :consumer_id, :integer
    add_index :orders, :consumer_id
  end
end
