class Pin < ActiveRecord::Base
	belongs_to :user
	belongs_to :board
	mount_uploader :image, ImageUploader
	#the above line was enabled via the carrierwave gem, used to upload image files
end
