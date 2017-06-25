class FeedsController < ApplicationController

	def index
		get_feed

		@feed_items = Kaminari.paginate_array(@items).page(params[:page]).per(10)
	end

	private

	def get_feed
		if @feed_items.nil?
			deals = Deal.order(created_at: :desc)
			articles = Article.order(created_at: :desc)

			@items = []
			@items += deals
			@items += articles
			@items.shuffle!
		end
	end
end
