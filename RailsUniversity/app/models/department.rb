class Department < ActiveRecord::Base
	has_many :instructors
	belongs_to :instructor #the Admin
end
