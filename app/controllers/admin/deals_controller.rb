class Admin::DealsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index
    @deals = Deal.all
    @messages = Message.all
    @subcategories = Subcategory.all
    respond_to do |format|
        format.html
        format.csv { send_data @deals.to_csv, filename: "deals-#{Date.today}.csv"}
        format.xlsx
    end
  end

  def subcategory_options
    categories = Gender.find(params[:gender]).categories
    @subcategories = Hash.new
    categories.each do |category|
      @subcategories["category_#{category.id}"] = { :id => category.id,  :name => category.name, :subcategories => category.subcategories }
    end

     render json: @subcategories
  end

	def import
      Deal.import(params[:file])
      flash[:notice] = 'File has been imported'
      redirect_to root_path
    end
    
	def edit_multiple
     	@deals = Deal.where(id: deal_params[:deal_ids])
     	return render_not_found if @deals.blank?
     	return render_not_found(:forbidden) if !current_user.admin?
	rescue ActiveRecord::RecordNotFound
		return render_not_found
	end

	def update_multiple
		@deals = Deal.friendly.update(params[:deals].keys, params[:deals].values)
		return render_not_found(:forbidden) if !current_user.admin?
		
		@deals.reject! { |deal| deal.errors.empty? }
		if @deals.empty?
			redirect_to root_path
		else
			render "edit_multiple"
		end
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
    return render_not_found(:forbidden) if !current_user.admin?

  rescue ActiveRecord::RecordNotFound
    return render_not_found
  end

  def update
    @deal = Deal.friendly.find(params[:id])
    return render_not_found if @deal.blank?
    return render_not_found(:forbidden) if !current_user.admin?

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
    return render_not_found(:forbidden) if !current_user.admin?
    @deal.destroy

    redirect_to root_path

  rescue ActiveRecord::RecordNotFound
    return render_not_found
  end


  private

  def deal_params
    params.require(:deal).permit(:title, :message, :deeplink, :picture, :retailer_id, {deal_ids: []}, 
      :category_id, :gender_id, :subcategory_id, :starts, :ends, :code, :terms)
  end

  
end
