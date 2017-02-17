class Deal < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	validates :title, :message, :deeplink, presence: true
	validates :picture, presence: true

	belongs_to :user
	belongs_to :deal
	
	mount_uploader :picture, PictureUploader

	has_many :comments

	acts_as_xlsx


	def self.to_csv
		CSV.generate do |csv|
			csv << column_names
			all.each do |item|
				csv << item.attributes.values_at(*column_names)
			end
		end
	end

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			item = find_by_id(row["id"]) || new
			item.attributes = row.to_hash.slice(*self.column_names)
			# item.title = "#{item.advertiser} #{item.starts.strftime('%d-%m-%Y')}" if item.starts.present?
			item.save!
		end
	end

end
