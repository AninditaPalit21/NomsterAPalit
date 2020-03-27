class AddUserIdToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :user, foreign_key: true
    add_column :places, :user_id, :integer
    add_index :places, :user_id
  end
end
