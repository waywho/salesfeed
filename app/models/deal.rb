class Deal < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	validates :title, :message, :deeplink, presence: true

	belongs_to :user
end
