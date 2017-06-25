require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
	describe "articles#index action" do
		it "should successfully show the page" do
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe "articles#get_article action" do
		it "should save if no matches in the record with the same title" do
			article = FactoryGirl.create(:article)
			user = FactoryGirl.create(:user)
			sign_in user

			get :get_article, article: {url: "http://www.hellofashionblog.com/2017/06/the-perfect-summer-coverup-under-50.html"}, format: :js

			article_new = Article.last
			expect(article).to respond_to(:js)
			expect(article.title).to eq("The Perfect Summer Swim Coverup Under $50")
			expect(article.user).to eq(user)
		end
	end
end
