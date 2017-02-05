class DealsController < ApplicationController
	def index
	end

	def new
		@deal = Deal.new
	end

	def create
		@deal = Deal.create(deal_params)

		redirect_to root_path
	end

	private

	def deal_params
		params.require(:deal).permit(:title, :message, :deeplink)
	end
end
