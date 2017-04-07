class Category < ActiveRecord::Base
	has_and_belongs_to_many :retailers
  belongs_to :gender
  belongs_to :subcategory

end
