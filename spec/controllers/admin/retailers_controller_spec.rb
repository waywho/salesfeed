require 'rails_helper'

RSpec.describe Admin::RetailersController, type: :controller do
  describe "retailer#index" do
      it "should successfully show the page" do
        user = FactoryGirl.create(:admin)
        sign_in user
        get :index
        expect(response).to have_http_status(:success)
      end
      
      it "should successfully download csv" do
        user = FactoryGirl.create(:admin)
        sign_in user
        get :index, format: 'csv'
      expect(response).to have_http_status(:success)
    end
  end

  describe "retailer#destroy" do
    it "shouldn't let unauthenticated user destroy a retailer" do
      retailer = FactoryGirl.create(:retailer)
      delete :destroy, id: retailer.id
      expect(response).to redirect_to new_user_session_path
    end
    it "should allow the user to destroy a retailer" do
      user = FactoryGirl.create(:admin)
      retailer = FactoryGirl.create(:retailer)
      sign_in user

      delete :destroy, id: retailer.id
      expect(response).to redirect_to root_path
      retailer = Retailer.find_by_id(retailer.id)
      expect(retailer).to eq nil
    end
    it "should return a 404 message if we cannot find the retailer with the id that is specified" do
      user = FactoryGirl.create(:admin)
      sign_in user

      delete :destroy, id: "WOWZER"
      expect(response).to have_http_status(:not_found)
    end
  end

  describe "retailer#edit" do
    it "shouldn't let unauthenticated user edit the retailer" do
      retailer = FactoryGirl.create(:retailer)
      get :edit, id: retailer.id
      expect(response).to redirect_to new_user_session_path
    end
    it "should successfully show the edit form if the retailer is found" do
      user = FactoryGirl.create(:admin)
      retailer = FactoryGirl.create(:retailer)
      sign_in user

      get :edit, id: retailer.id
      expect(response).to have_http_status(:success)
    end
    it "should return a 404 message if we cannot find the retailer with the id that specified" do
      user = FactoryGirl.create(:admin)
      sign_in user

      get :edit, id: "GRWON"
      expect(response).to have_http_status(:not_found)
    end
  end

  describe "retailer#update" do
    it "shouldn't allow unauthenticatd user update the retailer" do
      retailer = FactoryGirl.create(:retailer)
      patch :update, id: retailer.id, retailer: { description: "changed"}
      expect(response).to redirect_to new_user_session_path
    end
    it "should allow user to successfully update the retailer" do
      retailer = FactoryGirl.create(:retailer)
      user = FactoryGirl.create(:admin)
      sign_in user

      patch :update, id: retailer.id, retailer: { description: "changed"}
      retailer.reload
      expect(response).to redirect_to edit_admin_retailer_path(retailer)
      expect(retailer.description).to eq "changed"
    end
    it "should return a 404 message if we cannot find the retailer with the specified id" do
      retailer = FactoryGirl.create(:retailer)
      user = FactoryGirl.create(:admin)
      sign_in user

      patch :update, id: "BRILL", retailer: { description: "changed"}
      expect(response).to have_http_status(:not_found)
    end

    it "should render the edit form with an http status of unprocessable_entity" do
      retailer = FactoryGirl.create(:retailer, brief_description: "Great styles")
      user = FactoryGirl.create(:admin)
      sign_in user

      patch :update, id: retailer.id, retailer: { brief_description: ""}
      retailer.reload
      expect(response).to have_http_status(:unprocessable_entity)
      expect(retailer.brief_description).to eq "Great styles"
    end
  end

  describe "retailer#new" do
    it "should require users to be logged in" do
      get :new
      expect(response).to redirect_to new_user_session_path
    end
    it "should successfully show the new form" do
      user = FactoryGirl.create(:admin)
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
      user = FactoryGirl.create(:admin)
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
      user = FactoryGirl.create(:admin)
      sign_in user

      retailer_count = Retailer.count
      post :create, retailer: { name: '', host_url: '', brief_description: ''}
      expect(response).to have_http_status(:unprocessable_entity)
      expect(retailer_count).to eq Retailer.count
    end
  end
end
