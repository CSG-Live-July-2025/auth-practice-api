class AddUserIdToHouses < ActiveRecord::Migration[8.0]
  def change
    add_column :houses, :user_id, :integer
  end
end
