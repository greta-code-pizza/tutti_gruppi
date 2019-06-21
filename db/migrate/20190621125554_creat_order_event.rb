class CreatOrderEvent < ActiveRecord::Migration[5.2]
  def change
    create_table :order_events do |t|
      t.references :event, foreign_key: true
      t.references :order, foreign_key: true
    end
  end
end
