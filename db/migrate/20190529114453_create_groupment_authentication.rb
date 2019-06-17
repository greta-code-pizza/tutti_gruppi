class CreateGroupmentAuthentication < ActiveRecord::Migration[5.2]
  def change
    create_table :groupment_authentications do |t|
      t.references :groupment, foreign_key: true
      t.references :authentication, foreign_key: true
    end
  end
end
