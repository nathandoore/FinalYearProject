class Car < ActiveRecord::Base
	require 'carrierwave/orm/activerecord'


	belongs_to :user, :class_name => 'User'
	belongs_to :renter, :class_name => 'User'

	has_many :reviews






	validates :user_id, presence: true
	validates :renter_id, presence: false

	validates :description, :presence => { :message => "Description: cannot be blank ..."}
		mount_uploader :img_url, ImageUploader
end