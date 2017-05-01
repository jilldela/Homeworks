class AddIndexToToysTable < ActiveRecord::Migration
  def change
    change_column :toys, :name, :string, null: false
    add_index :toys, :name, unique: true
  end
end
