class AddUserIdToCars < ActiveRecord::Migration[5.2]
  def change

	add_column :cars, :user_id, :integar 



  end
end
