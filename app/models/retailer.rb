class Retailer < ActiveRecord::Base
	has_many :deals
	has_many :categories

	validates :name, presence: true
	validates :host_url, presence: true
	validates :brief_description, presence: true

	mount_uploader :favicon, PictureUploader
	mount_uploader :logo, PictureUploader
	mount_uploader :cover, PictureUploader

	extend FriendlyId
	friendly_id :name, use: :slugged


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
			next if item.name.nil? || item.host_url.nil? || item.brief_description.nil?
			item.save!
		end
	end
end
