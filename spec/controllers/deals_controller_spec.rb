require 'rails_helper'

RSpec.describe DealsController, type: :controller do
	describe "grams#index action" do
		it "should successfully show the page" do
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe "grams#new action" do
		it "should successfully show new form" do
			get :new
			expect(response).to have_http_status(:success)
		end
	end

	describe "grams#create action" do
		it "should successfully create new deal in the database" do
			post :create, deal: {title: 'first test', message: 'Hello!', deeplink: "https://this.is.atest.com"}
			expect(response).to redirect_to root_path

			gram = Gram.last
			expect(gram.title).to eq("first test")
			expect(gram.message).to eq("Hello!")
			expect(gram.deeplink).to eq("https://this.is.atest.com")
		end
	end

end
