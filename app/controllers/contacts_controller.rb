class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

      def create
    @contact = Contact.new(newsletter_params)
      if @contact.save
      ContactMailer.contact_confirmation(@contact).deliver
      redirect_to root_path
      flash[:notice] = 'Thank you for your message. We will contact you soon!'
    else
        flash[:notice] = "Cannot send message,check your input parameters."
        redirect_to root_path
    end 
  end
  
   private
    # Use callbacks to share common setup or constraints between actions.
  def set_contact
    @contact = Contact.find(params[:id])
    end

  
  def newsletter_params
    params.require(:contact).permit(:name, :email, :subject,:message
      )
  end
  end
  