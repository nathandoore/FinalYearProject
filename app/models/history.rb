class History < ActiveRecord::Base
require 'carrierwave/orm/activerecord'
	has_many :cars
	has_many :users
end
