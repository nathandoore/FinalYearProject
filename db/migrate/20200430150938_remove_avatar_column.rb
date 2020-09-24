class RemoveAvatarColumn < ActiveRecord::Migration[5.2]
  def change
  	remove_column :cars, :avatar, :string
  end
end
