class CreateEvent < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :open
      t.date :close
      t.date :delivery
    end
  end
end
