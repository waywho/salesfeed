require 'rails_helper'

RSpec.describe RetailersController, type: :controller do
	describe "retailer#index" do
		it "should successfully show the page" do
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe "retailer#create" do
		it "should successfully create a new retailer" do

		end
	end
end
