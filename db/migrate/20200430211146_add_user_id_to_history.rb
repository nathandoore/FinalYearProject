class AddUserIdToHistory < ActiveRecord::Migration[5.2]
  def change
  	add_column :histories, :user_id, :integar 
  end
end
