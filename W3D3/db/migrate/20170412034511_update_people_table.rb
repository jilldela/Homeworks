class UpdatePeopleTable < ActiveRecord::Migration[5.0]
  def change
    change_column :people, :house_id, :integer
  end
end
