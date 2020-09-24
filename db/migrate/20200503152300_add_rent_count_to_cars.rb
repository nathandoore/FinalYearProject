class AddRentCountToCars < ActiveRecord::Migration[5.2]
  def change
  	add_column :cars, :rentcount, :integar
  end
end
