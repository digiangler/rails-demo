class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 128, null: false
      t.integer :age

      t.timestamps
    end
    add_index :users, :name
  end
end
