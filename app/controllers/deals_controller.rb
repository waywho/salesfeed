class DealsController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy, :edit_multiple, :update_multiple]

	def index
		@deals = Deal.order(:created_at).page params[:page]
		respond_to do |format|
        	format.html
        	format.csv { send_data @deals.to_csv, filename: "deals-#{Date.today}.csv"}
        	format.xlsx
      	end
	end

	def show
		@deal = Deal.friendly.find(params[:id])
		return render_not_found if @deal.blank?
	rescue ActiveRecord::RecordNotFound
		return render_not_found
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

	def edit
		@deal = Deal.friendly.find(params[:id])
		return render_not_found if @deal.blank?
		return render_not_found(:forbidden) if @deal.user != current_user

	rescue ActiveRecord::RecordNotFound
		return render_not_found
	end

	def update
		@deal = Deal.friendly.find(params[:id])
		return render_not_found if @deal.blank?
		return render_not_found(:forbidden) if @deal.user != current_user

		@deal.update_attributes(deal_params)
		
		if @deal.valid?
			redirect_to root_path
		else
			render :edit, status: :unprocessable_entity
		end 
	rescue ActiveRecord::RecordNotFound
		return render_not_found
	end


	def destroy
		@deal = Deal.friendly.find(params[:id])
		return render_not_found if @deal.blank?
		return render_not_found(:forbidden) if @deal.user != current_user
		@deal.destroy

		redirect_to root_path

	rescue ActiveRecord::RecordNotFound
		return render_not_found
	end

	private

	def deal_params
		params.require(:deal).permit(:title, :message, :deeplink, :picture, :retailer_id, {deal_ids: []})
	end
end
