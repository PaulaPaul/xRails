class Blog < ActiveRecord::Base
	validates :title, presence: true
end
