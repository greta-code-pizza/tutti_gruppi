class AddConsumerToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :consumer, foreign_key: true
  end
end
