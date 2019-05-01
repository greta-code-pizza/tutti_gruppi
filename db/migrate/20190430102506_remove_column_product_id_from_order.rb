class RemoveColumnProductIdFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :product_id
  end
end
