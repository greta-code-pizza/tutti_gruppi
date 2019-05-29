class CreateGroupment < ActiveRecord::Migration[5.2]
  def change
    create_table :groupments do |t|
      t.string :name
      t.integer :postal_code
    end
  end
end
