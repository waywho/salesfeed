class StaticPagesController < ApplicationController

  def privacy_policy
  end

  def contact
    @message = Message.new
  end

  def messages
    @message = Message.create(message_params)
    if @message.valid?
      flash[:notice] = 'Your message has been submited'
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def sitemap
    path = Rails.root.join("public", "sitemaps", "sitemap.xml")
    if File.exists?(path)
      render xml: open(path).read
    else
      render text: "Sitemap not found.", status: :not_found
    end
  end
  
  def robots
  end


  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :message)
  end
end
