class Board < ActiveRecord::Base
	belongs_to :user
	has_many   :pins
	validates :name, :presence => true
end
