class User < ActiveRecord::Base
	has_many :boards
	has_many :pins
end
