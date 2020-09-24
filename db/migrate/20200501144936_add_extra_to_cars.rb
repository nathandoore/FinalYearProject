class AddExtraToCars < ActiveRecord::Migration[5.2]
  def change
  	  	add_column :cars, :doors, :integar
  		add_column :cars, :transmission, :string
  		add_column :cars, :passengers, :integar
  		add_column :cars, :bootspace, :string

  end
end
