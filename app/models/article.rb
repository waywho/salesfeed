class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :gender

  acts_as_taggable
end
