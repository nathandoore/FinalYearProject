class AddOffhireDateToCars < ActiveRecord::Migration[5.2]
  def change
  	  	add_column :cars, :hirefinish, :datetime 
  end
end
