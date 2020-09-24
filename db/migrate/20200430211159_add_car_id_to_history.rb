class AddCarIdToHistory < ActiveRecord::Migration[5.2]
  def change
  	add_column :histories, :car_id, :integar 
  end
end
