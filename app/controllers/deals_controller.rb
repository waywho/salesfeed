class DealsController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]

	def index
	end

	def new
		@deal = Deal.new
	end

	def create
		@deal = current_user.deals.create(deal_params)
		if @deal.valid?
			redirect_to root_path
		else
			render :new, status: :unprocessable_entity
		end
	end

	private

	def deal_params
		params.require(:deal).permit(:title, :message, :deeplink)
	end
end
