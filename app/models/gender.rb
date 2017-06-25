class Gender < ActiveRecord::Base
  has_many :categories
  has_many :subcategories, through: :categories
  has_many :deals
  has_many :articles
end
