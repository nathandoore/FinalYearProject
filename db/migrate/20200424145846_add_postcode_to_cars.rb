class AddPostcodeToCars < ActiveRecord::Migration[5.2]
  def change
  	add_column :cars, :postcode, :string 
  end
end
