class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def get_article
		@url = posting_params[:url]
		article = ArticleCrawler.new(@url)

		if Article.exists?(title: article.title)
			@article = Article.find_by_title(article.title)
		else
			@article = Article.create(title: article.title, url: @url, description: article.description, publisher: article.publisher, image_url: article.image, user: current_user)
		end

		respond_to :js
	end

	private

	def posting_params
		params.require(:posting).permit(:url)
	end
end
