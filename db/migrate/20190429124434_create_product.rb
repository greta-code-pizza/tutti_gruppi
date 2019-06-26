class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :price
      t.boolean :available, :default => true
    end
  end
end
