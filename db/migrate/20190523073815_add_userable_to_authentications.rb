class AddUserableToAuthentications < ActiveRecord::Migration[5.2]
  def change
    add_column :authentications, :userable_id, :integer
    add_column :authentications, :userable_type, :string
    add_index :authentications, [:userable_id, :userable_type]
  end
end
