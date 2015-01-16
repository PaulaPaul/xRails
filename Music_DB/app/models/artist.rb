class Artist < ActiveRecord::Base
	has_many :songs
	belongs_to :genre    #belongs_to is always singular, there is also a 'belongs_to_many'
end
