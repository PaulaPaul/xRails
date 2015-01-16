class Petclub < ActiveRecord::Base
	has_many :owners, through: :petclub_memberships
end
