FactoryGirl.define do
  factory :deal do
  	title "test"
  	message "hello"
  	picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.jpg'), 'image/jpg')}
  	deeplink "https://link.tothisfake.com"
  	association :user
  end
end
