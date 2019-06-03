class CreateGroupment < ActiveRecord::Migration[5.2]
  def change
    create_table :groupments do |t|
      t.string :name
      t.string :postal_code
    end
  end
end
