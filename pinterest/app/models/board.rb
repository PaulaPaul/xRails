class Board < ActiveRecord::Base
	belongs_to :user
	has_many :pins

	validates :name, :user_id, presence: true
end
