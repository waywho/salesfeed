class ArticlesController < ApplicationController
	before_action :authenticate_user!, only: [:get_article]

	def index
		@articles = Article.order(created_at: :desc)
	end

	def get_article
		@url = article_params[:url]
		@article = ArticleCrawler.new(@url)

		respond_to :js
	end

	def create
		if Article.exists?(title: article_params[:title])
			@article = Article.find_by_title(article_params[:title])
		else
			@article = current_user.articles.create(article_params)
		end

		redirect_to articles_path
	end

	private

	def article_params
		params.require(:article).permit(:title, :url, :description, :publisher, :image_url)
	end
end
