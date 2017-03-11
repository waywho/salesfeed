class CommentsController < ApplicationController
	before_action :authenticate_user!, :only => [:create]

	def create
		@deal = Deal.friendly.find(params[:deal_id])
		return render_not_found if @deal.blank?

		@deal.comments.create(comment_params.merge(user: current_user))

		redirect_to root_path

	rescue ActiveRecord::RecordNotFound
		return render_not_found
	end

	private

	def comment_params
		params.require(:comment).permit(:message)
	end
end
