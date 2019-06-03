class CreateGroupmentAuthentication < ActiveRecord::Migration[5.2]
  def change
    create_table :groupment_authentications do |t|
      t.integer :groupment_id
      t.integer :authentication_id

      t.index :groupment_id
      t.index :authentication_id

      t.boolean :groupment_manager, default: false
    end
  end
end
