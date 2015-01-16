class Pin < ActiveRecord::Base
	belongs_to :user
	belongs_to :board

	mount_uploader :image, ImageUploader

	validates :name, :user_id, :board_id, presence: true
end
