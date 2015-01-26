class Instructor < ActiveRecord::Base
	has_many :courses
	belongs_to :department
end

