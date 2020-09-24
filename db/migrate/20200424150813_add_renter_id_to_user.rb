class AddRenterIdToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :renter_id, :integar 
  end
end
