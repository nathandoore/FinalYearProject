class AddRequestsToCar < ActiveRecord::Migration[5.2]
  def change
  		 	add_column :cars, :request_id, :integar
  		 	add_column :cars, :response, :string
  end
end
