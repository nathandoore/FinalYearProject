class AddUserToRent < ActiveRecord::Migration[5.2]
  def change
  		add_column :cars, :user_id_rent, :integar 
  end
end
