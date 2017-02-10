require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
	describe "comments#create action" do
		it "should allow user to create comment on deals" do
			deal = FactoryGirl.create(:deal)
			user = FactoryGirl.create(:user)
			sign_in user
			post :create, deal_id: deal.id, comment: { message: 'awesome deal' }
			expect(response).to redirect_to root_path
			expect(deal.comments.length).to eq 1
			expect(deal.comments.first.message).to eq "awesome deal" 			
		end

		it "should require a user to be logged in to comment on a deal" do
			deal = FactoryGirl.create(:deal)
			post :create, deal_id: deal.id, comment: { message: 'awesome deal'}
			expect(response).to redirect_to new_user_session_path

		end

		it "should return http status code of not found if the deal isn't found" do
			user = FactoryGirl.create(:user)
			sign_in user

			post :create, deal_id: 'YOLOSWAG', comment: { message: 'awesome deal'}
			expect(response).to have_http_status :not_found
		end
	end
end
