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
	describe "retailer#new" do
		it "should require users to be logged in" do
			get :new
			expect(response).to redirect_to new_user_session_path
		end
		it "should successfully show the new form" do
			user = FactoryGirl.create(:user)
			sign_in user

			get :new
			expect(response).to have_http_status(:success)
		end
	end

	describe "retailer#create" do
		it "should require users to be logged in" do
			post :create, retailer: {name: "Testing Shop", host_url: "https://www.thisis_a_test.com", 
				part_url: "thisis_a_test", brief_description: "Great styles"}
			expect(response).to redirect_to new_user_session_path
		end
		it "should successfully create a new retailer" do
			user = FactoryGirl.create(:user)
			sign_in user

			post :create, retailer: {name: "Testing Shop", host_url: "https://www.thisis_a_test.com", 
				part_url: "thisis_a_test", brief_description: "Great styles"}
			
			retailer = Retailer.last
			expect(response).to redirect_to root_path
			expect(retailer.name).to eq("Testing Shop")
			expect(retailer.host_url).to eq("https://www.thisis_a_test.com")
			expect(retailer.part_url).to eq("thisis_a_test")
			expect(retailer.brief_description).to eq("Great styles")
		end

		it "should properly deal with validation errors" do
			user = FactoryGirl.create(:user)
			sign_in user

			retailer_count = Retailer.count
			post :create, retailer: { name: '', host_url: '', brief_description: ''}
			expect(response).to have_http_status(:unprocessable_entity)
			expect(retailer_count).to eq Retailer.count
		end
	end
end
