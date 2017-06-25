require 'rails_helper'

RSpec.describe RetailersController, type: :controller do
	describe "retailer#index" do
		it "should successfully show the page" do
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe "retailer#show" do
		it "should successfully show the page if the retailer is found" do
			retailer = FactoryGirl.create(:retailer)
			get :show, id: retailer.id
			expect(response).to have_http_status(:success)
		end
	end

	
end
