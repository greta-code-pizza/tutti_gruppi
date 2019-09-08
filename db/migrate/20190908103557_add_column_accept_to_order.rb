class AddColumnAcceptToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :accept, :boolean, default: false
  end
end
