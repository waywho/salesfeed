class Admin::RetailersController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin


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
    @retailer = Retailer.friendly.find(params[:id])
    return render_not_found if @retailer.blank?
  rescue ActiveRecord::RecordNotFound
    return render_not_found
  end

  def update
    @retailer = Retailer.friendly.find(params[:id])
    return render_not_found if @retailer.blank?
    @retailer.update_attributes(retailer_params)

    if @retailer.valid?
      redirect_to edit_retailer_path(@retailer)
    else
      return render_not_found(:unprocessable_entity)
    end
  rescue ActiveRecord::RecordNotFound
    return render_not_found
  end

  def destroy
    @retailer = Retailer.friendly.find(params[:id])

    return render_not_found if @retailer.blank?
    @retailer.destroy
    redirect_to root_path
  rescue ActiveRecord::RecordNotFound
    return render_not_found
  end

  private

  def retailer_params
    params.require(:retailer).permit(:name, :host_url, :part_url, :brief_description, :html_meta_description, 
      :description, :internal_notes, :admin_notes, :support_notes, :search_keywords, :facebook_url,
      :instagram_url, :favicon, :logo, :cover, :category_id, {category_ids: []}, :merchant_id, :strap_line, :tracking_link,
      :remote_logo_url)
  end
end
