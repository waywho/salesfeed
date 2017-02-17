class Retailer < ActiveRecord::Base
	has_many :deals

	mount_uploader :favicon, PictureUploader
	mount_uploader :logo, PictureUploader
	mount_uploader :cover, PictureUploader
end
