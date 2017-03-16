class Admin::DealsController < ApplicationController


	def import
      Deal.import(params[:file])
      flash[:notice] = 'File has been imported'
      redirect_to root_path
    end
    
	def edit_multiple
     	@deals = Deal.where(id: deal_params[:deal_ids])
     	return render_not_found if @deals.blank?
     	return render_not_found(:forbidden) if @deals.first.user != current_user
	rescue ActiveRecord::RecordNotFound
		return render_not_found
	end

	def update_multiple
		@deals = Deal.update(params[:deals].keys, params[:deals].values)
		return render_not_found(:forbidden) if @deals.first.user != current_user
		
		@deals.reject! { |deal| deal.errors.empty? }
		if @deals.empty?
			redirect_to root_path
		else
			render "edit_multiple"
		end
	end
end
