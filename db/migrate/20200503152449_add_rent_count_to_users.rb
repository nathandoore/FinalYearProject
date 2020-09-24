class AddRentCountToUsers < ActiveRecord::Migration[5.2]
  def change
  	  	add_column :users, :rentcount, :integar
  end
end
