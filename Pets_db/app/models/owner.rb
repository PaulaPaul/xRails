class Owner < ActiveRecord::Base
	has_many :pets
	has_many :petclubs, through: :petclub_memberships
end
