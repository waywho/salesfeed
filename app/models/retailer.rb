class Retailer < ActiveRecord::Base
	has_many :deals

	validates :name, presence: true
	validates :host_url, presence: true
	validates :brief_description, presence: true

	mount_uploader :favicon, PictureUploader
	mount_uploader :logo, PictureUploader
	mount_uploader :cover, PictureUploader

	extend FriendlyId
	friendly_id :title, use: :slugged
end
