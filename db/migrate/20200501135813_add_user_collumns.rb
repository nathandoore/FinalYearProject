class AddUserCollumns < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :firstname, :string
  	add_column :users, :lastname, :string
  	add_column :users, :dob, :date
  	add_column :users, :firstline, :string
  	add_column :users, :postcode, :string
  	add_column :users, :mobile, :integar
  	add_column :users, :terms, :string
  end
end
