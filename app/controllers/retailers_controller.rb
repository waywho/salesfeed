class RetailersController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

	def index
		@retailers = Retailer.all
		respond_to do |format|
        	format.html
        	format.csv { send_data @retailers.to_csv, filename: "retailers-#{Date.today}.csv"}
        	format.xlsx
      	end
	end

	def show
		@retailer = Retailer.friendly.find_by_id(params[:id])
	end

	def new
		@retailer = Retailer.new
	end


	def import
      Retailer.import(params[:file])
      flash[:notice] = 'File has been imported'
      redirect_to retailers_path
    end


	def create
		@retailer = Retailer.create(retailer_params)
		if @retailer.valid?
			redirect_to root_path
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		@retailer = Retailer.friendly.find_by_id(params[:id])
		return render_not_found if @retailer.blank?
	end

	def update
		@retailer = Retailer.friendly.find_by_id(params[:id])
		return render_not_found if @retailer.blank?
		@retailer.update_attributes(retailer_params)

		if @retailer.valid?
			redirect_to edit_retailer_path(@retailer)
		else
			return render_not_found(:unprocessable_entity)
		end
	end

	def destroy
		@retailer = Retailer.friendly.find_by_id(params[:id])

		return render_not_found if @retailer.blank?
		@retailer.destroy
		redirect_to root_path
	end

	private

	def retailer_params
		params.require(:retailer).permit(:name, :host_url, :part_url, :brief_description, :html_meta_description, 
			:description, :internal_notes, :admin_notes, :support_notes, :search_keywords, :facebook_url,
			:instagram_url, :favicon, :logo, :cover, :category_id, {category_ids: []}, :merchant_id, :strap_line)
	end
end
