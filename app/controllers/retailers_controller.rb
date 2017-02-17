class RetailersController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

	def index
		@retailers = Retailer.all
	end

	def show
		@retailer = Retailer.friendly.find_by_id(params[:id])
	end

	def new
		@retailer = Retailer.new
	end

	def create
		@retailer = Retailer.create(retailer_params)
		if @retailer.valid?
			redirect_to root_path
		else
			render :new, status: :unprocessable_entity
		end
	end

	private

	def retailer_params
		params.require(:retailer).permit(:name, :host_url, :part_url, :brief_description, :html_meta_description, 
			:description, :internal_notes, :admin_notes, :support_notes, :search_keywords, :facebook_url,
			:instagram_url, :favicon, :logo, :cover)
	end
end
