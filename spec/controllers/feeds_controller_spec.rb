require 'rails_helper'

RSpec.describe FeedsController, type: :controller do
	describe "feeds#index action" do
		it "should successfuly show page" do
			get :index

			expect(response).to have_http_status(:success)
		end
	end 
end
