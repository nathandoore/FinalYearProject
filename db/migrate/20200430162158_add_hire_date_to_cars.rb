class AddHireDateToCars < ActiveRecord::Migration[5.2]
  def change
  	add_column :cars, :hirestart, :datetime 
  end
end
