class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, default: '', null: false
  end
end
