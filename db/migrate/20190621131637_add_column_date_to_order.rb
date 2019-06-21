class AddColumnDateToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :date, :date
  end
end
