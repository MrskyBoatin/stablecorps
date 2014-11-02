class NewslettersController < InheritedResources::Base
    def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(params[:Newsletter])
    @newsletter.request = request
    if @newsletter.deliver
      flash.now[:notice] = 'Thank you for your message. We will Newsletter you soon!'
    else
      flash.now[:error] = 'Cannot send message,check your input parameters.'
      render :new
    end
  end
end
