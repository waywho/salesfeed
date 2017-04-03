class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_categories

  def render_not_found(status=:not_found)
		render text: "#{status.to_s.titleize}", status: status
	end

	def get_categories
    @genders = Gender.all
		@retailer_categories = Category.order(:id)
	end


end
