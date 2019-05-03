class SwitchColumnWeightToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :weight_value, :integer
    add_column :products, :weight_type, :string
  end
end
