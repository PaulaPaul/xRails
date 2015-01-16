class PetclubMembership < ActiveRecord::Base
	belongs_to :petclub
 	belongs_to :owner
end
