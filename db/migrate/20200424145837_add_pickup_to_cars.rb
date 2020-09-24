class AddPickupToCars < ActiveRecord::Migration[5.2]
  def change
  	  		add_column :cars, :pickup, :string 
  end
end
