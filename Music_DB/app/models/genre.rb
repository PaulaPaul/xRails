class Genre < ActiveRecord::Base
	has_many :artists  #you need to have the foreign keys in place before you do this
end
