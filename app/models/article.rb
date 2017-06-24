class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :gender_id
end
