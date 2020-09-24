class ChangeReviews < ActiveRecord::Migration[5.2]
  def change
  	remove_column :reviews, :product_id, :integer
	add_column :reviews, :car_id, :integer
  end
end
