class Deal < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	validates :title, :message, :deeplink, presence: true
	validates :picture, presence: true

	belongs_to :user

	mount_uploader :picture, PictureUploader

	has_many :comments
end
