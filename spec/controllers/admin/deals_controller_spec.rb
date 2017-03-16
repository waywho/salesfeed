require 'rails_helper'

RSpec.describe Admin::DealsController, type: :controller do
	describe "deals#update_multiple action" do
		it "shouldn't let users who didn't create the deal update it" do
			deal_list = FactoryGirl.create_list(:deal, 5, message: "Great Deal")
			user = FactoryGirl.create(:user)
			sign_in user

			new_deal_list = {}
			deal_list.each do |d|
				new_deal_list[d.id] = {}
				new_deal_list[d.id]["message"] = "Changed Deal"
			end
			patch :update_multiple, deals: new_deal_list
			expect(response).to have_http_status(:forbidden)
		end
		it "shouldn't let unauthenticated users update a deal" do
			deal_list = FactoryGirl.create_list(:deal, 5, message: "Great Deal")
			
			new_deal_list = {}
			deal_list.each do |d|
				new_deal_list[d.id] = {}
				new_deal_list[d.id]["message"] = "Changed Deal"
			end

			patch :update_multiple, deals: new_deal_list
			expect(response).to redirect_to new_user_session_path
		end
		it "should allow users to successfully update multiple deals" do
			deal_list = FactoryGirl.create_list(:deal, 5, message: "Great Deal")
			sign_in deal_list.first.user
			new_deal_list = {}
			deal_list.each do |d|
				new_deal_list[d.id] = {}
				new_deal_list[d.id]["message"] = "Changed Deal"
			end

			patch :update_multiple, deals: new_deal_list
			expect(response).to redirect_to root_path
			deal_list.each do |deal|
				deal.reload
				expect(deal.message).to eq "Changed Deal"
			end
		end
	end

	describe "deals#edit_multiple action" do
		it "shouldn't let users who didn't create the deals update them" do
			deal_list = FactoryGirl.create_list(:deal, 5)
			user = FactoryGirl.create(:user)
			sign_in user
			get :edit_multiple, deal: {deal_ids: deal_list.map(&:id)}
			expect(response).to have_http_status(:forbidden)			
		end

		it "shouldn't let unauthenticated users edit multiple deals" do
			deal_list = FactoryGirl.create_list(:deal, 5)
			get :edit_multiple, deal: {deal_ids: deal_list.map(&:id)}
			expect(response).to redirect_to new_user_session_path
		end
		it "should successfully show the multiple edit form if the deals are found" do
			deal_list = FactoryGirl.create_list(:deal, 5)
			sign_in deal_list.first.user
			get :edit_multiple, deal: {deal_ids: deal_list.map(&:id)}
			expect(response).to have_http_status(:success)
		end

		it "should return a 404 message if we cannot find any deals in the list of ids specified" do
			deal_list = FactoryGirl.create_list(:deal, 5)
			sign_in deal_list.first.user
			get :edit_multiple, deal: {deal_ids: ["GREAT", "TOUCH", "GOODTIMES", "ORWHAT", "IMBORD"]}
			expect(response).to have_http_status(:not_found)
		end
	end
	describe "deal#destroy action" do
		it "shouldn't let users who didn't create the deal destroy it" do
			deal = FactoryGirl.create(:deal)
			user = FactoryGirl.create(:user)
			sign_in user
			delete :destroy, id: deal.id
			expect(response).to have_http_status(:forbidden)			
		end
		it "shouldn't let unauthenticated users destroy a deal" do
			deal = FactoryGirl.create(:deal)
			delete :destroy, id: deal.id
			expect(response).to redirect_to new_user_session_path
		end
		it "should allow a user to destroy deals" do
			deal = FactoryGirl.create(:deal)
			sign_in deal.user
			delete :destroy, id: deal.id
			expect(response).to redirect_to root_path
			deal = Deal.find_by_id(deal.id)
			expect(deal).to eq nil
		end
		it "should return a 404 message if we cannot find a deal with the id that is specified" do
			user = FactoryGirl.create(:user)
			sign_in user
			delete :destroy, id: "SPACEDUCK"
			expect(response).to have_http_status(:not_found)
		end
	end


	describe "deal#update action" do
		it "shouldn't let users who didn't create the deal update it" do
			deal = FactoryGirl.create(:deal)
			user = FactoryGirl.create(:user)
			sign_in user
			patch :update, id: deal.id, deal: {message: "Hello"}
			expect(response).to have_http_status(:forbidden)
		end
		it "shouldn't let unauthenticated users update a deal" do
			deal = FactoryGirl.create(:deal)
			patch :update, id: deal.id, deal: { message: "Hello"}
			expect(response).to redirect_to new_user_session_path
		end
		it "should allow users to successfully update deal" do
			deal = FactoryGirl.create(:deal, message: "Initial Value")
			sign_in deal.user
			patch :update, id: deal.id, deal: {message: "Changed"}
			expect(response).to redirect_to root_path
			deal.reload
			expect(deal.message).to eq "Changed"
		end

		it "should have http 404 error if the deal cannot be found" do
			user = FactoryGirl.create(:user)
			sign_in user
			patch :update, id: "YOLOSWAG", deal: {message: "Changed"}
			expect(response).to have_http_status(:not_found)
		end

		it "should render the edit form with an http status of unprocessable_entity" do
			deal = FactoryGirl.create(:deal, message: "Initial Value")
			sign_in deal.user
			patch :update, id: deal.id, deal: {message: ''}
			expect(response).to have_http_status(:unprocessable_entity)
			deal.reload
			expect(deal.message).to eq "Initial Value"
		end
	end

	describe "deal#edit action" do
		it "shouldn't let a user who did not create the deal edit a deal" do
			deal = FactoryGirl.create(:deal)
			user = FactoryGirl.create(:user)
			sign_in user
			get :edit, id: deal.id
			expect(response).to have_http_status(:forbidden)
		end

		it "shouldn't let unauthenticated users edit a deal" do
			deal = FactoryGirl.create(:deal)
			get :edit, id: deal.id
			expect(response).to redirect_to new_user_session_path
		end

		it "should successfully show the edit form if the deal is found" do
			deal = FactoryGirl.create(:deal)
			sign_in deal.user
			get :edit, id: deal.id
			expect(response).to have_http_status(:success)
		end

		it "should return a 404 error message if the deal is not found" do
			user = FactoryGirl.create(:user)
			sign_in user
			get :edit, id: "TACOCAT"
			expect(response).to have_http_status(:not_found)
		end
	end

	describe "deal#show action" do
		it "should successfully show the page if the deal is found" do
			deal = FactoryGirl.create(:deal)
			get :show, id: deal.id
			expect(response).to have_http_status(:success)
		end
		it "should return a 404 error if the deal is not found" do
			get :show, id: "TACOCAT"
			expect(response).to have_http_status(:not_found)
		end
	end

	describe "deal#index action" do
		it "should successfully show the page" do
			get :index
			expect(response).to have_http_status(:success)
		end
		it "should successfully download the csv" do
			get :index, format: 'csv'
			expect(response).to have_http_status(:success)
		end
	end

	describe "deal#new action" do
		it "should require users to be logged in" do
			get :new
			expect(response).to redirect_to new_user_session_path
		end

		it "should successfully show new form" do
			user = FactoryGirl.create(:user)
			sign_in user

			get :new
			expect(response).to have_http_status(:success)
		end
	end

	describe "deal#create action" do
		it "should require users to be logged in" do
			post :create, deal: { title: "first test", message: "Hello!", deeplink: "https://this.is.atest.com" }
			expect(response).to redirect_to new_user_session_path
		end
		it "should successfully create new deal in the database" do
			user = FactoryGirl.create(:user)
			sign_in user
			
			post :create, deal: { title: "first test", 
				message: "Hello!", 
				picture: fixture_file_upload("/picture.jpg", 'image/png'),
				deeplink: "https://this.is.atest.com" }
			expect(response).to redirect_to root_path

			deal = Deal.last
			expect(deal.title).to eq("first test")
			expect(deal.message).to eq("Hello!")
			expect(deal.deeplink).to eq("https://this.is.atest.com")
			expect(deal.user).to eq(user)
		end
		it "should properly deal with validation errors" do
			user = FactoryGirl.create(:user)
			sign_in user
			
			deal_count = Deal.count
			post :create, deal: { title: '', message: '', deeplink: ''}
			expect(response).to have_http_status(:unprocessable_entity)
			expect(deal_count).to eq Deal.count
		end
	end
end
