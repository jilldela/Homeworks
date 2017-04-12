class ChangePeopleTable < ActiveRecord::Migration[5.0]
  def change
    change_column_null :people, :house_id, true
  end
end
