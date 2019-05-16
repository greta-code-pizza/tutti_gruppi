class CreateTableWhitelist < ActiveRecord::Migration[5.2]
  def change
    create_table :whitelists do |t|
      t.string :email
    end
  end
end
