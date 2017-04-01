class Category < ActiveRecord::Base
	has_and_belongs_to_many :retailers
  has_many :subcategories
  has_and_belongs_to_many :genders

end
