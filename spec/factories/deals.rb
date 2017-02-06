FactoryGirl.define do
  factory :deal do
  	title "test"
  	message "hello"
  	deeplink "https://link.tothisfake.com"
  	association :user
  end
end
