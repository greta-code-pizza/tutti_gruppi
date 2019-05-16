class CreateWhitelists < ActiveRecord::Migration[5.2]
  def change
    create_table :whitelists do |t|
      t.string :email

      t.timestamps
    end
  end
end
