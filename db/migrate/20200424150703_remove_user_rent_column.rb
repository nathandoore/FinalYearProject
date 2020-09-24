class RemoveUserRentColumn < ActiveRecord::Migration[5.2]
  def change
  	remove_column :cars, :user_id_rent
  end
end
