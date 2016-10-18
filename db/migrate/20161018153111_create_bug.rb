class CreateBug < ActiveRecord::Migration[5.0]
  def change
    create_table :bugs do |t|
      t.string :name, default: '', null: false
      t.text :description, default: '', null: false
      t.integer :reporter_id, null: false
      t.string :state, default: '', null: false
    end

    add_foreign_key :bugs, :users, column: :reporter_id
  end
end
