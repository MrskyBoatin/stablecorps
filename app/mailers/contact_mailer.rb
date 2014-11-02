class ContactMailer < ActionMailer::Base
            default from: 'info@stablecorps.com'
 
  def contact_confirmation(contact)
          @contact = contact
          @url  = 'http://email.stablecorps.com/'
          mail(to: @contact.email, subject: "Stable Corps: Thank's for Contacting Us.")
  end
end
