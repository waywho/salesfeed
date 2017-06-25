class Admin::PublishersController < ApplicationController
  	before_action :authenticate_admin
	
	def index
		@publishers = Publisher.all
	end

	def show
		@publisher = Publisher.find(params[:id])
	end

	def edit
		@publisher = Publisher.find(params[:id])
	end

	def new
		@publisher = Publisher.new
	end

	def create
		@publisher = Publisher.create(publisher_params)
		if @publisher.valid?
      		redirect_to admin_publishers_path
    	else
      		render :new, status: :unprocessable_entity
    	end
	end

	def update
		@publisher = Publisher.find(params[:id])

		return render_not_found if @publisher.blank?
    	return render_not_found(:forbidden) if !current_user.admin?

		@publisher.update_attributes(publisher_params)
    
	    if @publisher.valid?
	      redirect_to admin_publishers_path
	    else
	      render :edit, status: :unprocessable_entity
	    end 
	  	rescue ActiveRecord::RecordNotFound
	    return render_not_found
	end

	def destroy
		@publisher = Publisher.find(params[:id])
		return render_not_found if @deal.blank?
    	return render_not_found(:forbidden) if !current_user.admin?

		@publisher.destroy

    	redirect_to admin_publishers_path

  		rescue ActiveRecord::RecordNotFound
    	return render_not_found
	end

	private

	def publisher_params
		params.require(:publisher).permit(:name, :title_find, :description_find, :image_find, :host_url)
	end
end
