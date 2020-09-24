class AddRenterIdToCars < ActiveRecord::Migration[5.2]
  def change
  	add_column :cars, :renter_id, :integar 
  end
end
