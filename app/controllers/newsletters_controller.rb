class NewslettersController < InheritedResources::Base

    def new
    @newsletter = Newsletter.new
  end


    def create
    @newsletter = Newsletter.new(newsletter_params)
      if @newsletter.save
        NewsletterMailer.newsletter_confirmation(@newsletter).deliver
      redirect_to root_path
      flash[:notice] = "Thank you for subscribing."
    else
        flash[:notice] = "Cannot add you to subscription list,check your input parameters."
        redirect_to root_path
    end 
  end
  
   private
    # Use callbacks to share common setup or constraints between actions.
  def set_newsletter
    @newsletter = Newsletter.find(params[:id])
    end

  
  def newsletter_params
    params.require(:newsletter).permit(:email
      )
  end
  end
