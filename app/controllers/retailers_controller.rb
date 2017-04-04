class RetailersController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

	def index
		if params[:category].present?
			@retailers = Retailer.joins(:categories).where("categories.name = ?", params[:category])
			@retailer_type = params[:category]
		else
			@retailers = Retailer.all
		end
		respond_to do |format|
        	format.html
        	format.csv { send_data @retailers.to_csv, filename: "retailers-#{Date.today}.csv"}
        	format.xlsx
    end
	end

	def show
		@retailer = Retailer.friendly.find(params[:id])
		return render_not_found if @retailer.blank?
	rescue ActiveRecord::RecordNotFound
		return render_not_found
	end


	private

	def retailer_params
		params.require(:retailer).permit(:name, :host_url, :part_url, :brief_description, :html_meta_description, 
			:description, :internal_notes, :admin_notes, :support_notes, :search_keywords, :facebook_url,
			:instagram_url, :favicon, :logo, :cover, :category_id, {category_ids: []}, :merchant_id, :strap_line)
	end
end
