class User < ActiveRecord::Base
require 'carrierwave/orm/activerecord'
	
	has_many :cars

	mount_uploader :img_url, ImageUploader

has_secure_password



end
