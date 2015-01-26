class Course < ActiveRecord::Base
	has_many :students
	belongs_to :instructor
	belongs_to :department
end
