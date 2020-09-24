class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
    	t.string :manufacturer
    	t.text :model
    	t.string :fuel
    	t.string :colour
    	t.text :engine
    	t.text :description
    	t.integer :year
        t.integer :price
        t.string :img_url




    end
  end
end
